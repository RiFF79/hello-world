unit UnsortedItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, StrUtils, inifiles;

type
  THackGrid = class(TStringGrid);

  TUnsortedItemsForm = class(TForm)
    TB_Unsorted: TStringGrid;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn_Ignore: TButton;
    Button2: TButton;
    btn_del_art: TButton;
    Button1: TButton;
    Button3: TButton;
    ReplaceDialog: TReplaceDialog;
    procedure FormCreate(Sender: TObject);
    procedure TB_UnsortedDblClick(Sender: TObject);
    procedure TB_UnsortedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn2Click(Sender: TObject);
    procedure TB_UnsortedDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn1Click(Sender: TObject);
    procedure btn_IgnoreClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_del_artClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function ParseTypeID(str: string): Integer;
    function ParseFirmID(str: string): Integer;
    function ParseGender(str: string): string;
    function ParseVolume(str: string): string;
  public

  end;

var
  UnsortedItemsForm: TUnsortedItemsForm;

implementation

uses SelectGood, DataConteiner, QueryDataContainer, ProgressUnit,
  SystemContainerUnit, BannedItemsUnit, int_const;

{$R *.dfm}

procedure TUnsortedItemsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Data.Database.Execute('EXECUTE PROCEDURE UPDATE_PRICES_FROM_SUPPLIERS');
  Data.DS_Goods.ReopenLocate('ID');
end;

procedure TUnsortedItemsForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
  WS: String;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('UnsortedItemsForm', 'Top', 0);
  Left := I.ReadInteger('UnsortedItemsForm', 'Left', 0);
  Width := I.ReadInteger('UnsortedItemsForm', 'Width', 800);
  Height := I.ReadInteger('UnsortedItemsForm', 'Height', 600);
  WS := I.ReadString('UnsortedItemsForm', 'WindowState', 'Maximized');
  if WS = 'Maximized' then
    WindowState := wsMaximized
  else if WS = 'Minimized' then
    Application.Minimize
  else WindowState := wsNormal;

  TB_Unsorted.ColCount := 6;
  TB_Unsorted.RowCount := 1;
  TB_Unsorted.Cells[0, 0] := 'Артикул внешний';
  TB_Unsorted.Cells[1, 0] := 'Артикул внутренний';
  TB_Unsorted.Cells[2, 0] := 'Наименование внешнее';
  TB_Unsorted.Cells[3, 0] := 'Наименование внутреннее';
  TB_Unsorted.Cells[4, 0] := 'Цена';
  TB_Unsorted.Cells[5, 0] := '#';
end;

procedure TUnsortedItemsForm.TB_UnsortedDblClick(Sender: TObject);
var
  grid_selection: TGridRect;
  capt: string;
begin
  with SelectGoodForm do
  begin
    capt := Caption;
    Caption := 'Выбор товара [' + TB_Unsorted.Cells
      [2, TB_Unsorted.Selection.Top] + ']';
    ShowModal;
    Caption := capt;
    if SelectedID <> -1 then
    begin
      TB_Unsorted.Cells[1, TB_Unsorted.Selection.Top] := inttostr(SelectedID);
      TB_Unsorted.Cells[3, TB_Unsorted.Selection.Top] :=
        Query.DS_Select.FieldValues['FULLNAME'];
      grid_selection.Left := TB_Unsorted.Selection.Left;
      grid_selection.Right := TB_Unsorted.Selection.Right;
      grid_selection.Top := TB_Unsorted.Selection.Top + 1;
      grid_selection.Bottom := TB_Unsorted.Selection.Bottom + 1;
      TB_Unsorted.Selection := grid_selection;
    end;
  end;
end;

procedure TUnsortedItemsForm.TB_UnsortedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      TB_UnsortedDblClick(Self);
    VK_DELETE:
      btn_del_artClick(Self);
    VK_F5:
      btn_IgnoreClick(Self);
    VK_F12:
      ShowMessage(TB_Unsorted.Cells[2, TB_Unsorted.Selection.Top] + #13 +
        Data.Database.QueryValue('SELECT NAME FROM FIRMS WHERE ID=' +
        inttostr(ParseFirmID(TB_Unsorted.Cells[2,
        TB_Unsorted.Selection.Top])), 0));
  end;
end;

procedure TUnsortedItemsForm.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TUnsortedItemsForm.TB_UnsortedDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (ARow <> 0) and (TB_Unsorted.Cells[1, ARow] <> '') and
    (TB_Unsorted.Selection.Top <> ARow) then
    if (ARow <> 0) and (TB_Unsorted.Cells[1, ARow] <> '') and
      (TB_Unsorted.Selection.Top <> ARow) then
    begin
      TB_Unsorted.Canvas.Brush.Color := clInfoBk;
      TB_Unsorted.Canvas.Font.Style := [fsBold];
      TB_Unsorted.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
        TB_Unsorted.Cells[ACol, ARow]);
    end;
  if (TB_Unsorted.Cells[1, ARow] <> '') and (TB_Unsorted.Selection.Top = ARow)
  then
  begin
    TB_Unsorted.Canvas.Font.Style := [fsBold];
    TB_Unsorted.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
      TB_Unsorted.Cells[ACol, ARow]);
  end;
  if (ACol = 5) and (ARow <> 0) and (TB_Unsorted.Cells[5, ARow] <> '') then
  begin
    if AnsiStartsStr('DELETED_', TB_Unsorted.Cells[5, ARow]) then
    begin
      TB_Unsorted.Canvas.Brush.Color := clRed;
      TB_Unsorted.Canvas.FillRect(Rect);
    end
    else
    begin
      TB_Unsorted.Canvas.Brush.Color := clGradientActiveCaption;
      TB_Unsorted.Canvas.FillRect(Rect);
    end;
  end;
  if (ACol <> 5) and (ARow <> 0) and
    (AnsiStartsStr('DELETED_', TB_Unsorted.Cells[5, ARow])) and
    (TB_Unsorted.Selection.Top <> ARow) then
  begin
    TB_Unsorted.Canvas.Brush.Color := clRed;
    TB_Unsorted.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
      TB_Unsorted.Cells[ACol, ARow]);
  end;
end;

procedure TUnsortedItemsForm.btn1Click(Sender: TObject);
var
  i: Integer;
  rec_cnt: Integer;
  s: string;
begin
  rec_cnt := 0;
  for i := 1 to TB_Unsorted.RowCount do
  begin
    if TB_Unsorted.Cells[1, i] <> '' then
      Inc(rec_cnt);
  end;
  ProgressForm.ProgressBar.Min := 0;
  ProgressForm.ProgressBar.Max := rec_cnt;
  ProgressForm.lbl1.Caption := 'Позиция 0 из ' + inttostr(rec_cnt);
  ProgressForm.ProgressBar.Position := 0;
  ProgressForm.ProgressBar.Step := 1;
  ProgressForm.Show;
  TB_Unsorted.Visible := false;
  for i := 1 to TB_Unsorted.RowCount do
  begin
    if TB_Unsorted.Cells[1, i] <> '' then
    begin
      s := TB_Unsorted.Cells[0, i];
      if Data.DS_Goods.Locate('ID', TB_Unsorted.Cells[1, i], []) then
      begin
        Data.DS_Goods.Edit;
        Data.DS_Goods.FieldValues['ART_' + inttostr(SysContainer.art_field)] :=
          TB_Unsorted.Cells[0, i];
        Data.DS_Goods.FieldValues['BARCODE'] := SysContainer.NormalizeBarCode
          (TB_Unsorted.Cells[6, i]);
        Data.DS_Goods.FieldValues
          ['SUPL_PRICE_' + inttostr(SysContainer.art_field)] :=
          TB_Unsorted.Cells[4, i];
        Data.DS_Goods.FieldValues
          ['SUPPL_DATE_' + inttostr(SysContainer.art_field)] := now;
        if TB_Unsorted.Cells[5, i] <> '' then
          Data.DS_Goods.FieldValues
            ['AVAILABLE_' + inttostr(SysContainer.art_field)] := 1;
        Data.DS_Goods.Post;
      end;
      ProgressForm.ProgressBar.StepIt;
      ProgressForm.lbl1.Caption := 'Позиция ' +
        inttostr(ProgressForm.ProgressBar.Position) + ' из ' +
        inttostr(rec_cnt);
      Application.ProcessMessages;
    end;
  end;
  ProgressForm.close;
  i := 1;
  while i < TB_Unsorted.RowCount do
  begin
    if (TB_Unsorted.Cells[1, i] <> '') or
      (AnsiStartsStr('DELETED_', TB_Unsorted.Cells[5, i])) then
      THackGrid(TB_Unsorted).DeleteRow(i)
    else
      Inc(i);
  end;
  TB_Unsorted.Visible := true;
  ShowMessage('Загрузка цен успешно завершена');
  close;
end;

procedure TUnsortedItemsForm.btn_IgnoreClick(Sender: TObject);
begin
  with Data.DS_Banned do
  begin
    if Data.DS_Banned.Locate('ART', TB_Unsorted.Cells[0,
      TB_Unsorted.Selection.Top], []) then
    begin
      TB_Unsorted.Cells[5, TB_Unsorted.Selection.Top] :=
        AnsiReplaceStr(TB_Unsorted.Cells[5, TB_Unsorted.Selection.Top],
        'DELETED_', '');
      Delete;
    end
    else
    begin
      Append;
      FieldValues['ART'] := TB_Unsorted.Cells[0, TB_Unsorted.Selection.Top];
      FieldValues['FULLNAME'] := TB_Unsorted.Cells
        [2, TB_Unsorted.Selection.Top];
      FieldValues['SUPPL_ID'] := SysContainer.art_field;
      FieldValues['KIND'] := 1;
      Post;
      TB_Unsorted.Cells[5, TB_Unsorted.Selection.Top] := 'DELETED_' +
        TB_Unsorted.Cells[5, TB_Unsorted.Selection.Top];
    end;
  end;
  if not TB_Unsorted.Focused then
    TB_Unsorted.SetFocus;
end;

function TUnsortedItemsForm.ParseTypeID(str: string): Integer;
begin
  str := ansilowercase(str);
  result := -1;
  if Pos('parf', str) + Pos('духи', str) + Pos('perf', str) > 0 then
    result := 0; // Духи
  if Pos('deo', str) + Pos('део', str) > 0 then
    result := 1; // Део
  if Pos('edp', str) > 0 then
    result := 11; // EDP
  if Pos('edt', str) + Pos('pdt', str) > 0 then
    result := 6; // EDT
  if Pos('edc', str) + Pos('cologn', str) > 0 then
    result := 12; // EDС
  if Pos('тест', str) + Pos('test', str) > 0 then
    result := 7; // Тестер
  if Pos('mini', str) + Pos('мини', str) > 0 then
    result := 4; // Миниатюра
  if Pos('vial', str) + Pos('виал', str) > 0 then
    result := 5; // Виалка
  if Pos('set', str) + Pos('набор', str) > 0 then
    result := 8; // Набор
end;

function TUnsortedItemsForm.ParseFirmID(str: string): Integer;
var
  firm_name: string;
  Position: Integer;
begin
  str := ansilowercase(str);
  with Data.DS_Firms do
  begin
    filtered := false;
    first;
    repeat
      firm_name := ansilowercase(FBN('NAME').AsString);
      Position := Pos(firm_name, str);
      result := FBN('ID').AsInteger;
      next;
    until eof or (Position > 0);
    if Position = 0 then
      result := 102 // Другие
  end;
end;

function TUnsortedItemsForm.ParseGender(str: string): string;
begin
  str := ansilowercase(str);
  result := 'L';
  if Pos(' l ', str) + Pos('(l)', str) + Pos('lady', str) + Pos('woman', str) +
    Pos('women', str) + Pos('femme', str) + Pos('belle', str) > 0 then
    result := 'L';
  if Pos(' m ', str) + Pos('(m)', str) + Pos('men', str) + Pos('man', str) +
    Pos('homme', str) > 0 then
    result := 'M';
  if Pos('unisex', str) + Pos('(u)', str) + Pos(' u ', str) > 0 then
    result := 'U';
end;

function TUnsortedItemsForm.ParseVolume(str: string): string;
var
  n: Integer;
  s: char;
  stop: boolean;
  comacount: Integer;
begin
  result := '';
  str := ansilowercase(AnsiReplaceStr(str, ' ', ''));
  n := Pos('ml', str);
  if n = 0 then
    exit;
  repeat
    s := str[n - 1];
    if not(s in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
    begin
      str := copy(str, n + 2, length(str) - n - 1);
      n := Pos('ml', str);
    end;
  until (n = 0) or (s in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']);

  stop := false;
  comacount := 0;
  while (n > 1) and (stop = false) do
  begin
    dec(n);
    s := str[n];
    if s in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ',', '.'] then
    begin
      if s in [',', '.'] then
        Inc(comacount);
      if comacount < 2 then
        result := s + result
      else
        stop := true;
    end
    else
      stop := true;
  end;

end;

procedure TUnsortedItemsForm.ReplaceDialogReplace(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to TB_Unsorted.RowCount - 1 do
    TB_Unsorted.Cells[2, i] := AnsiReplaceStr(TB_Unsorted.Cells[2, i],
      ReplaceDialog.FindText, ReplaceDialog.ReplaceText);
end;

procedure TUnsortedItemsForm.Button1Click(Sender: TObject);
const
  sup_id = 9;
var
  i: Integer;
  arr_price: real;
  fullname: string;
  type_id: Integer;
begin
  with Data.DS_Goods do
  begin
    DisableControls;
    filtered := false;
    for i := 1 to TB_Unsorted.RowCount - 1 do
    begin
      Append;
      fullname := TB_Unsorted.Cells[2, i];
      FBN('FULLNAME').AsString := fullname;
      FBN('ART_' + inttostr(SysContainer.art_field)).AsString :=
        TB_Unsorted.Cells[0, i];
      FBN('FIRM_ID').AsInteger := ParseFirmID(fullname);
      FBN('STATE').AsString := ParseGender(fullname);
      arr_price := StrToFloat(TB_Unsorted.Cells[4, i]);
      FBN('SUPL_PRICE_' + inttostr(SysContainer.art_field)).AsFloat :=
        arr_price;
      FBN('SUPPL_DATE_' + inttostr(SysContainer.art_field)).AsDateTime := now;
      FBN('AVAILABLE_' + inttostr(SysContainer.art_field)).AsInteger := 1;
      FBN('DATE_ADDED').AsDateTime := now;
      FBN('DATE_CHANGED').AsDateTime := now;
      type_id := ParseTypeID(fullname);
      FBN('TYPE_ID').AsInteger := type_id;
      // Если не набор, то определяем объем
      if type_id <> 8 then
        FBN('ML').AsString := ParseVolume(fullname);
      FBN('PRICE1').AsFloat := Data.GetGeneralPriceByType(arr_price, type_id);
      FBN('PRICE2').AsFloat := Data.GetSpecPriceByType(arr_price, type_id);
      FBN('PRICE_SHOP').AsFloat := Data.GetShopPrice;
      FBN('PRICE_SHOP2').AsFloat := Data.GetNVPrice;
      FBN('SELECTED').AsInteger := 1;
      FBN('PRICE_CATEGORY_ID').AsInteger := 1;
      Post;
      Application.ProcessMessages;
    end;
    EnableControls;
  end;
  close;
end;

procedure TUnsortedItemsForm.Button2Click(Sender: TObject);
begin
  BannedItemsForm.ShowModal;
end;

procedure TUnsortedItemsForm.Button3Click(Sender: TObject);
begin
  ReplaceDialog.Execute;
end;

procedure TUnsortedItemsForm.btn_del_artClick(Sender: TObject);
begin
  TB_Unsorted.Cells[1, TB_Unsorted.Selection.Top] := '';
  TB_Unsorted.Cells[3, TB_Unsorted.Selection.Top] := '';
  TB_Unsorted.Repaint;
  if not TB_Unsorted.Focused then
    TB_Unsorted.SetFocus;
end;

end.
