unit SelectGood;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, ExtCtrls, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, inifiles, Buttons, DBCtrls, DB,
  GridsEh, StrUtils, int_const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TSelectGoodForm = class(TForm)
    panel_Space: TPanel;
    TB_GoodsSelect: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    SelectFilter: TDBLookupComboboxEh;
    GoodsEdit: TDBEditEh;
    check_firstletters: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GoodsEditChange(Sender: TObject);
    procedure TB_GoodsSelectDblClick(Sender: TObject);
    procedure GoodsEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_GoodsSelectCellClick(Column: TColumnEh);
    procedure TB_GoodsSelectKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_GoodsSelectColumnsGetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure FormCreate(Sender: TObject);
    procedure SelectFilterEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure SelectFilterChange(Sender: TObject);
    procedure SelectFilterCloseUp(Sender: TObject; Accept: Boolean);
    procedure check_firstlettersClick(Sender: TObject);
    procedure SelectFilterDropDownBoxGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure TB_GoodsSelectColumns22GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
  private
    { Private declarations }
    firstrun: Boolean;
    SPlace: TBookmark;
  public
    SelectedID: integer;
    PRICE1, PRICE2, PRICE_SHOP, PRICE_SHOP2: real;
  end;

var
  SelectGoodForm: TSelectGoodForm;

implementation

uses DataConteiner, MainUnit, QueryDataContainer, FilterUnit,
  SystemContainerUnit;

{$R *.dfm}

procedure TSelectGoodForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TB_GoodsSelect.SetFocus; { а это чтобы не было противного звука при закрытии }
  SPlace := Query.DS_Select.GetBookmark;
end;

procedure TSelectGoodForm.FormShow(Sender: TObject);
begin
  MainForm.SetDepotNames;
  GoodsEditChange(Self);
  Query.DS_Select.RefreshFilters;
  GoodsEdit.SetFocus;
  GoodsEdit.SelectAll;
  SelectedID := -1;
  if firstrun then
  begin
    SelectFilter.Text := '[ВСЕ]';
    firstrun := false
  end
  else
    Query.DS_Select.GotoBookmark(SPlace);
end;

procedure TSelectGoodForm.GoodsEditChange(Sender: TObject);
var
  sf: string;
begin
  if not MainForm.ProgStarted then
    exit;
  sf := GoodsEdit.Text;
  if AnsiContainsText(sf, #10) then
  begin
    sf := AnsiReplaceText(sf, #10, '');
    sf := AnsiReplaceText(sf, #13, '');
    GoodsEdit.Text := sf;
  end;
  if GoodsEdit.Text <> '' then
  begin
    Query.DS_Select.Filtered := false;
    if check_firstletters.Checked then
      Query.DS_Select.Filter := '(FULLNAME=''' +
        SysContainer.strok(GoodsEdit.Text) + '*'')'
    else
      Query.DS_Select.Filter := '(FULLNAME LIKE ''%' +
        SysContainer.strok(GoodsEdit.Text) + '%'')';
    Query.DS_Select.Filtered := true;
  end
  else
    Query.DS_Select.Filter := '';
  if SelectGoodForm.Visible then
    GoodsEdit.SetFocus;
end;

procedure TSelectGoodForm.TB_GoodsSelectDblClick(Sender: TObject);
begin
  if Query.DS_Select.FieldValues['ID'] <> Null then
  begin
    SelectedID := Query.DS_Select.FieldValues['ID'];
    PRICE1 := Data.Database.QueryValue('SELECT PRICE1 FROM GOODS WHERE ID = ' +
      inttostr(SelectedID), 0);
    PRICE2 := Data.Database.QueryValue('SELECT PRICE2 FROM GOODS WHERE ID = ' +
      inttostr(SelectedID), 0);
    PRICE_SHOP := Data.Database.QueryValue
      ('SELECT PRICE_SHOP FROM GOODS WHERE ID = ' + inttostr(SelectedID), 0);
    PRICE_SHOP2 := Data.Database.QueryValue
      ('SELECT PRICE_SHOP2 FROM GOODS WHERE ID = ' + inttostr(SelectedID), 0);
    Close;
  end;
end;

procedure TSelectGoodForm.GoodsEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_NEXT:
      begin
        TB_GoodsSelect.Perform(WM_KEYDOWN, VK_NEXT, 0);
        TB_GoodsSelect.Perform(WM_KEYUP, VK_NEXT, 0);
      end;
    VK_PRIOR:
      begin
        TB_GoodsSelect.Perform(WM_KEYDOWN, VK_PRIOR, 0);
        TB_GoodsSelect.Perform(WM_KEYUP, VK_PRIOR, 0);
      end;
    VK_UP:
      Query.DS_Select.Prior;
    VK_DOWN:
      Query.DS_Select.Next;
    VK_END:
      Query.DS_Select.Last;
    VK_HOME:
      Query.DS_Select.First;
    VK_RETURN:
      TB_GoodsSelectDblClick(Self);
    VK_ESCAPE:
      Close;
    VK_F12:
      GoodsEdit.SelectAll;
  end;
end;

procedure TSelectGoodForm.TB_GoodsSelectCellClick(Column: TColumnEh);
begin
  if Visible then
    GoodsEdit.SetFocus;
end;

procedure TSelectGoodForm.TB_GoodsSelectKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectGoodForm.TB_GoodsSelectDblClick(Self);
  if Key = VK_ESCAPE then
    Close;

end;

procedure TSelectGoodForm.TB_GoodsSelectColumns22GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Params.Text <> '0' then
    Params.Text := '√'
  else
    Params.Text := '';
end;

procedure TSelectGoodForm.TB_GoodsSelectColumnsGetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
var
  cDepot: string;
  cbDepot: string;
begin
  if Params.Text <> '' then
  begin
    cDepot := (Sender as TDBGridColumnEh).FieldName;
    cbDepot := 'CB' + copy(cDepot, 2, length(cDepot) - 1);
    Params.Text := inttostr(Query.DS_Select[cDepot]);
    if Query.DS_Select[cDepot] < Query.DS_Select[cbDepot] then
    begin
      Params.Font.Color := clBlue;
      Params.Font.Style := [fsBold];
      Params.Background := clSilver;
    end;
    if Query.DS_Select[cbDepot] < 0 then
    begin
      Params.Font.Color := clPurple;
      Params.Font.Style := [fsBold];
      Params.Background := clSilver;
      Params.Text := '---   ' + Params.Text;
    end;
    if Query.DS_Select[cDepot] < 0 then
    begin
      Params.Font.Style := [fsBold];
      Params.Font.Color := color_Minus;
    end;
  end;
end;

procedure TSelectGoodForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  with SelectGoodForm do
  begin
    Top := I.ReadInteger('SelectForm', 'Top', 0);
    Left := I.ReadInteger('SelectForm', 'Left', 0);
    Width := I.ReadInteger('SelectForm', 'Width', 640);
    Height := I.ReadInteger('SelectForm', 'Height', 480);
    check_firstletters.Checked := I.ReadBool('SelectForm',
      'SearchByFirstLetters', false);
  end;
  I.Free;
  Data.DS_Filters.First;
  firstrun := true;
end;

procedure TSelectGoodForm.SelectFilterEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FilterEditForm.SetFilter(0);
  FilterEditForm.ShowModal;
  SelectFilterChange(Self);
  GoodsEdit.SetFocus;
end;

procedure TSelectGoodForm.SelectFilterChange(Sender: TObject);
var
  flt: string;
begin
  if not MainForm.ProgStarted then
    exit;
  Query.DS_Select.Close;
  if Data.DS_Filters.FieldByName('FILTER').AsString <> Null then
  begin
    flt := '(' + Data.DS_Filters.FieldByName('FILTER').AsString + ')';
    if Data.DS_Filters.FieldByName('FILTER').AsString = '' then
      Query.DS_Select.SQLs.SelectSQL[7] := '(DELETED = 0)'
    else
      Query.DS_Select.SQLs.SelectSQL[7] := '(DELETED = 0) AND ' + flt;
  end;
  Query.DS_Select.Open;
end;

procedure TSelectGoodForm.SelectFilterCloseUp(Sender: TObject; Accept: Boolean);
begin
  if not MainForm.ProgStarted then
    exit;
  GoodsEdit.SetFocus;
end;

procedure TSelectGoodForm.check_firstlettersClick(Sender: TObject);
begin
  if not MainForm.ProgStarted then
    exit;
  GoodsEditChange(Self);
  GoodsEdit.SetFocus;
end;

procedure TSelectGoodForm.SelectFilterDropDownBoxGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  case Data.DS_Filters.FieldByName('OGROUP').AsInteger of
    - 1:
      begin
        AFont.Color := clBlue;
        Column.Font.Style := [fsBold];
      end;
    0:
      begin
        AFont.Color := clBlack;
        Column.Font.Style := [fsBold];
      end;
    1:
      begin
        AFont.Color := clBlack;
        Column.Font.Style := [];
      end;
    2:
      begin
        AFont.Color := clGray;
        Column.Font.Style := [];
      end;
  end;
end;

end.
