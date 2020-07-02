unit HistoryUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Menus, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
  GridsEh, FIBDataSet, Mask, DBCtrlsEh, DateUtils,
  DBLookupEh, inifiles, int_const, DBGridEhGrouping, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxButtons, dxBar, cxClasses, cxCalendar, cxImageComboBox, cxDBLookupComboBox,
  cxBarEditItem, cxCheckBox, dxSkinsdxBarPainter, cxLabel, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  THistoryForm = class(TForm)
    TB_History: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    btn_All: TdxBarButton;
    btn_RetSuppl: TdxBarButton;
    btn_RetCust: TdxBarButton;
    btn_arrival: TdxBarButton;
    btn_moves: TdxBarButton;
    btn_sales: TdxBarButton;
    dxBarButton7: TdxBarButton;
    edit_datefrom: TcxBarEditItem;
    btn_reset_datefrom: TdxBarButton;
    edit_dateto: TcxBarEditItem;
    btn_reset_dateto: TdxBarButton;
    edit_client: TcxBarEditItem;
    edit_depot: TcxBarEditItem;
    btn_reset_client: TdxBarButton;
    btn_reset_depot: TdxBarButton;
    pm_DateRangeHistory: TdxBarPopupMenu;
    m_Today: TdxBarButton;
    m_Week: TdxBarButton;
    m_Month: TdxBarButton;
    m_Year: TdxBarButton;
    m_All: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarManager1Bar3: TdxBar;
    edit_item: TdxBarButton;
    btn_production: TdxBarButton;
    btn_specification: TdxBarButton;
    procedure TB_HistoryGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure TB_HistoryTitleClick(Column: TColumnEh);
    procedure btn_BillGroupClick(Sender: TObject);
    procedure m_TodayClick(Sender: TObject);
    procedure m_WeekClick(Sender: TObject);
    procedure m_MonthClick(Sender: TObject);
    procedure m_YearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure combo_CustomerHisFilterCloseUp(Sender: TObject; Accept: Boolean);
    procedure combo_CustomerHisFilterChange(Sender: TObject);
    procedure TB_HistoryDblClick(Sender: TObject);
    procedure combo_DepotHisFilterChange(Sender: TObject);
    procedure combo_DepotHisFilterCloseUp(Sender: TObject; Accept: Boolean);
    procedure cxBarEditItem1PropertiesCloseUp(Sender: TObject);
    procedure edit_itemClick(Sender: TObject);
  private
    { Private declarations }
    current_good_id: integer;

    procedure SetColumns(BillType: integer);
    procedure ShowSaleBill;
    procedure ShowArrivalBill;
    procedure ShowMovesBill;
    procedure ReturnSupplBill;
    procedure ReturnCustBill;

  public
    { Public declarations }
    procedure ShowEx(good_id: integer; deftab: integer);
    procedure SetHistoryFilter;
  end;

var
  HistoryForm: THistoryForm;

implementation

uses
  QueryDataContainer, MainUnit, SystemContainerUnit, SelectGood, DataConteiner,
  ItemEditor, SaleUnit, OptionsUnit, ShopProduct;

{$R *.dfm}

procedure THistoryForm.TB_HistoryGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query.DS_HISTORY.FieldByName('ENTERED').AsInteger = 0 then
  begin
    AFont.Style := [fsItalic];
    exit;
  end;

  if btn_All.Down then
    case Query.DS_HISTORY.FieldByName('BILL_TYPE').AsInteger of
      SL:
        Background := OptionsForm.ec_sale.Brush.Color;
      AR:
        Background := OptionsForm.ec_arrival.Brush.Color;
      MV:
        Background := OptionsForm.ec_move.Brush.Color;
      RC:
        Background := OptionsForm.ec_return_cust.Brush.Color;
      RS:
        Background := OptionsForm.ec_return_suppl.Brush.Color;
      PR:
        Background := OptionsForm.ec_production.Brush.Color;
      SP:
        Background := OptionsForm.ec_specification.Brush.Color;
    end;
end;

procedure THistoryForm.ShowEx(good_id: integer; deftab: integer);
begin
  if good_id = -1 then
    edit_item.Caption :=
      '                                                ... Выберите товар ...                                                ';
  current_good_id := good_id;
  Data.DS_Goods.Locate('ID', good_id, []);
  SetHistoryFilter;
  ShowModal;
end;

procedure THistoryForm.SetHistoryFilter;
var
  BillType: integer;
  flt: string;
  depot: string;
begin
  Screen.Cursor := crHourGlass;
  if current_good_id <> -1 then
    edit_item.Caption := '                                                ' +
      Data.DS_Goods.fbn('FULLNAME').AsString +
      '                                                ';
  Query.DS_HISTORY.Close;

  flt := '(GOOD_ID =' + IntToStr(current_good_id) + ')';

  BillType := ALL;
  if btn_sales.Down then
    BillType := SL
  else if btn_arrival.Down then
    BillType := AR
  else if btn_moves.Down then
    BillType := MV
  else if btn_RetCust.Down then
    BillType := RC
  else if btn_RetSuppl.Down then
    BillType := RS
  else if btn_production.Down then
    BillType := PR
  else if btn_specification.Down then
    BillType := SP;

  if BillType <> ALL then
    flt := flt + ' AND (BILL_TYPE = ' + IntToStr(BillType) + ')';

  SetColumns(BillType);

  if not VarIsNull(edit_datefrom.EditValue) then
    flt := flt + 'AND (H_DATE >=''' + datetostr(edit_datefrom.EditValue) +
      ' 00:00:00'') ';
  if not VarIsNull(edit_dateto.EditValue) then
    flt := flt + 'AND (H_DATE <=''' + datetostr(edit_dateto.EditValue) +
      ' 23:59:59'')';

  if not VarIsNull(edit_client.EditValue) then
    flt := flt + ' AND (CUST_ID = ' + IntToStr(edit_client.EditValue) + ')';

  if not VarIsNull(edit_depot.EditValue) then
  begin
    depot := IntToStr(edit_depot.EditValue);
    flt := flt + ' AND ((DEPOT_TO_ID = ' + depot + ') OR (DEPOT_FROM_ID = ' +
      depot + '))';
  end;
  Query.DS_HISTORY.SQLs.SelectSQL[5] := flt;
  Query.DS_HISTORY.Open;
  Screen.Cursor := crDefault;
end;

procedure THistoryForm.SetColumns(BillType: integer);
var
  i: integer;
begin
  with TB_History do
  begin
    for i := 0 to Columns.Count - 1 do
      Columns[i].Visible := true;
    case BillType of
      MV:
        begin
          Columns[1].Visible := false;
          Columns[4].Visible := false;
          Columns[7].Visible := false;
          Columns[8].Visible := false;
          Columns[10].Visible := false;
        end;
      AR, RC:
        begin
          Columns[1].Visible := false;
          Columns[5].Visible := false;
          Columns[10].Visible := false;
        end;
      SL, RS:
        begin
          Columns[1].Visible := false;
          Columns[6].Visible := false;
        end;
    end;
  end;
end;

procedure THistoryForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = VK_ESCAPE then
    Close;
  if (Msg.CharCode = VK_F1) and (ItemEditorForm.Visible = false) then
    MainForm.act_price_edit.execute;
end;

procedure THistoryForm.TB_HistoryTitleClick(Column: TColumnEh);
var
  sr: TSortFieldInfo;
begin
  Query.DS_HISTORY.IsSortedField(Column.Field, sr);
  if sr.asc then
    Query.DS_HISTORY.DoSort([Column.FieldName, 'H_DATE'], [false, true])
  else
    Query.DS_HISTORY.DoSort([Column.FieldName, 'H_DATE'], [true, true]);
end;

procedure THistoryForm.btn_BillGroupClick(Sender: TObject);
begin
  SetHistoryFilter;
end;

procedure THistoryForm.m_TodayClick(Sender: TObject);
begin
  edit_datefrom.EditValue := Now;
  edit_dateto.EditValue := Now;
  SetHistoryFilter;
end;

procedure THistoryForm.m_WeekClick(Sender: TObject);
begin
  edit_datefrom.EditValue := IncWeek(Now, -1);
  edit_dateto.EditValue := Now;
  SetHistoryFilter;
end;

procedure THistoryForm.m_MonthClick(Sender: TObject);
begin
  edit_datefrom.EditValue := IncMonth(Now, -1);
  edit_dateto.EditValue := Now;
  SetHistoryFilter;
end;

procedure THistoryForm.m_YearClick(Sender: TObject);
begin
  edit_datefrom.EditValue := IncYear(Now, -1);
  edit_dateto.EditValue := Now;
  SetHistoryFilter;
end;

procedure THistoryForm.FormCreate(Sender: TObject);
var
  i: TIniFile;
  WS: string;
begin
  current_good_id := -1;
  edit_datefrom.EditValue := null;
  edit_dateto.EditValue := null;
  i := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := i.ReadInteger('HistoryForm', 'Top', 0);
  Left := i.ReadInteger('HistoryForm', 'Left', 0);
  Width := i.ReadInteger('HistoryForm', 'Width', 640);
  Height := i.ReadInteger('HistoryForm', 'Height', 480);
  WS := i.ReadString('HistoryForm', 'WindowState', 'Maximized');
  if WS = 'Maximized' then
    WindowState := wsMaximized;
  if WS = 'Minimized' then
    Application.Minimize;
  if WS = 'Normal' then
    WindowState := wsNormal;
  i.Free;

end;

procedure THistoryForm.combo_CustomerHisFilterCloseUp(Sender: TObject;
  Accept: Boolean);
begin
  TB_History.SetFocus;
end;

procedure THistoryForm.combo_CustomerHisFilterChange(Sender: TObject);
begin
  if MainForm.ProgStarted then
    SetHistoryFilter;
end;

procedure THistoryForm.TB_HistoryDblClick(Sender: TObject);
begin
  if Query.DS_HISTORY.RecordCountFromSrv > 0 then
    case Query.DS_HISTORY['BILL_TYPE'] of
      SL:
        ShowSaleBill;
      AR:
        ShowArrivalBill;
      MV:
        ShowMovesBill;
      RS:
        ReturnSupplBill;
      RC:
        ReturnCustBill;
    end;
end;

procedure THistoryForm.ShowSaleBill;
begin
  Screen.Cursor := crHourGlass;
  Data.DS_Sale.Close;
  Data.DS_Sale_N.Close;
  Data.DS_Sale_N.SQLs.SelectSQL[14] := '(ID = ' +
    IntToStr(Query.DS_HISTORY.FieldByName('NAKL_ID').AsInteger) + ')';
  Data.DS_Sale_N.Open;
  Data.DS_Sale.Open;
  Data.DS_Sale.Locate('GOOD_ID', current_good_id, []);
  Screen.Cursor := crDefault;
  SaleForm.Caption := 'Расходная накладная № ' +
    IntToStr(Query.DS_HISTORY.FieldByName('NAKL_ID').AsInteger);
  MainForm.act_sale_return.Enabled := false;
  MainForm.act_sale_execute.Enabled := false;
  MainForm.act_sale_excelexport.Enabled := false;
  SaleForm.FilterLayout.Enabled := false;
//  SaleForm.l_changecaption.Visible := false;
  SaleForm.TB_Sale.Options := [dgTitles, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgRowSelect];
  SaleForm.TB_Sale.AllowedOperations := SaleForm.TB_Sale.AllowedOperations -
    [alopDeleteEh];
  SaleForm.ShowModal;
end;

procedure THistoryForm.ShowArrivalBill;
begin
  MessageBox(Application.Handle, 'Просмотр приходных накладных в разработке',
    PChar(MainForm.Caption), MB_OK + MB_ICONINFORMATION);
end;

procedure THistoryForm.ShowMovesBill;
begin
  MessageBox(Application.Handle, 'Просмотр переходных накладных в разработке',
    PChar(MainForm.Caption), MB_OK + MB_ICONINFORMATION);
end;

procedure THistoryForm.ReturnSupplBill;
begin
  MessageBox(Application.Handle, 'Просмотр возвратов поставщику в разработке',
    PChar(MainForm.Caption), MB_OK + MB_ICONINFORMATION);
end;

procedure THistoryForm.ReturnCustBill;
begin
  MessageBox(Application.Handle, 'Просмотр возвратов от клиента разработке',
    PChar(MainForm.Caption), MB_OK + MB_ICONINFORMATION);
end;

procedure THistoryForm.combo_DepotHisFilterChange(Sender: TObject);
begin
  if MainForm.ProgStarted then
    SetHistoryFilter;
end;

procedure THistoryForm.combo_DepotHisFilterCloseUp(Sender: TObject;
  Accept: Boolean);
begin
  TB_History.SetFocus;
end;

procedure THistoryForm.cxBarEditItem1PropertiesCloseUp(Sender: TObject);
begin
  TB_History.SetFocus;
  SetHistoryFilter;
end;

procedure THistoryForm.edit_itemClick(Sender: TObject);
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
  begin
    current_good_id := SelectGoodForm.SelectedID;
    Data.DS_Goods.Locate('ID', current_good_id, []);
    SetHistoryFilter;
  end;
end;

end.
