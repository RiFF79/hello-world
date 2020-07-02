unit CustomHistoryUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinDarkSide,
  dxSkinsdxBarPainter, cxDropDownEdit, cxCalendar, dxBar, cxBarEditItem,
  cxClasses, DBGridEhGrouping, GridsEh, DBGridEh, DateUtils, StrUtils,
  cxImageComboBox, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxSplitter, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxPC, inifiles, cxDBLookupComboBox, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  dxSkinDevExpressStyle, dxSkinSilver, dxBarBuiltInMenu, EhLibVCL,
  DBAxisGridsEh;

type
  TCustomerHistoryForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    edit_date_from: TcxBarEditItem;
    edit_date_to: TcxBarEditItem;
    edit_reset_all: TdxBarButton;
    edit_time_period: TdxBarButton;
    pm_DateRangeHistory: TdxBarPopupMenu;
    TodayBtn: TdxBarButton;
    WeekBtn: TdxBarButton;
    MonthBtn: TdxBarButton;
    YearBtn: TdxBarButton;
    AllPeriodBtn: TdxBarButton;
    TB_CustomerHistory: TDBGridEh;
    edit_client: TcxBarEditItem;
    Splitter: TcxSplitter;
    PageControl: TcxPageControl;
    tab_sale: TcxTabSheet;
    tab_arrival: TcxTabSheet;
    tab_kassa: TcxTabSheet;
    tab_ret_cust: TcxTabSheet;
    TB_SaleDetails: TDBGridEh;
    tab_ret_suppl: TcxTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    tab_dolg: TcxTabSheet;
    procedure TodayBtnClick(Sender: TObject);
    procedure WeekBtnClick(Sender: TObject);
    procedure MonthBtnClick(Sender: TObject);
    procedure YearBtnClick(Sender: TObject);
    procedure AllPeriodBtnClick(Sender: TObject);
    procedure edit_clientPropertiesCloseUp(Sender: TObject);
    procedure edit_date_fromPropertiesCloseUp(Sender: TObject);
    procedure edit_date_toPropertiesCloseUp(Sender: TObject);
    procedure edit_reset_allClick(Sender: TObject);
    procedure TB_CustomerHistoryGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure TB_CustomerHistoryColumns3GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure edit_time_periodClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TB_SaleDetailsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    customer_id: integer;
  public
    { Public declarations }
    procedure ShowEx(cust_id: integer);
    procedure SetCustomerHistoryFilter;
    procedure SetDetailsFilter;
  end;

var
  CustomerHistoryForm: TCustomerHistoryForm;

implementation

{$R *.dfm}

uses SystemContainerUnit, DataConteiner, QueryDataContainer, MainUnit,
  OptionsUnit, int_const, HistoryUnit;

procedure TCustomerHistoryForm.AllPeriodBtnClick(Sender: TObject);
begin
  edit_date_from.EditValue := Null;
  edit_date_to.EditValue := Null;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  HistoryForm.ShowEx(Query.DS_ArrivalDetails.FBN('GOOD_ID').AsInteger, all);
end;

procedure TCustomerHistoryForm.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  HistoryForm.ShowEx(Query.DS_RetCustDetails.FBN('GOOD_ID').AsInteger, all);
end;

procedure TCustomerHistoryForm.DBGridEh3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  HistoryForm.ShowEx(Query.DS_RetSupplDetails.FBN('GOOD_ID').AsInteger, all);
end;

procedure TCustomerHistoryForm.edit_clientPropertiesCloseUp(Sender: TObject);
begin
  TB_CustomerHistory.SetFocus;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.edit_date_fromPropertiesCloseUp(Sender: TObject);
begin
  TB_CustomerHistory.SetFocus;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.edit_date_toPropertiesCloseUp(Sender: TObject);
begin
  TB_CustomerHistory.SetFocus;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.edit_reset_allClick(Sender: TObject);
begin
  CustomerHistoryForm.edit_date_from.EditValue := Null;
  CustomerHistoryForm.edit_date_to.EditValue := Null;
  CustomerHistoryForm.edit_client.EditValue := Null;
  CustomerHistoryForm.SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.edit_time_periodClick(Sender: TObject);
begin
  MonthBtnClick(Self);
end;

procedure TCustomerHistoryForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
  WS: string;
begin
  customer_id := -1;
  edit_date_from.EditValue := IncMonth(Now, -1);
  edit_date_to.EditValue := Now;
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('CustomerHistoryForm', 'Top', 0);
  Left := I.ReadInteger('CustomerHistoryForm', 'Left', 0);
  Width := I.ReadInteger('CustomerHistoryForm', 'Width', 640);
  Height := I.ReadInteger('CustomerHistoryForm', 'Height', 480);
  PageControl.Height := I.ReadInteger('CustomHistoryForm', 'Splitter', 400);
  WS := I.ReadString('CustomerHistoryForm', 'WindowState', 'Maximized');
  if WS = 'Maximized' then
    WindowState := wsMaximized;
  if WS = 'Minimized' then
    Application.Minimize;
  if WS = 'Normal' then
    WindowState := wsNormal;
  I.Free;
end;

procedure TCustomerHistoryForm.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if Msg.CharCode = VK_ESCAPE then
    Close;
end;

procedure TCustomerHistoryForm.FormShow(Sender: TObject);
begin
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.MonthBtnClick(Sender: TObject);
begin
  edit_date_from.EditValue := IncMonth(Now, -1);
  edit_date_to.EditValue := Now;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.SetCustomerHistoryFilter;
var
  cs: Variant;
  date_filter: string;
  date_filter2: string;
  date_filter3: string;
  min_date: Variant;
  range_summ: Variant;
  vr: Variant;
  cust_id: integer;
  cust_flt: string;
begin
  if not MainForm.ProgStarted then
    exit;

  customer_id := edit_client.EditValue;
  cust_flt := 'CUST_ID = ' + inttostr(customer_id);
  Query.DS_QueryDolgi.Close;
  date_filter2 := '';
  date_filter3 := '';
  if not VarIsNull(edit_date_from.EditValue) then
  begin
    date_filter := ' and (A_DATE >= ''' + DateToStr(edit_date_from.EditValue) +
      ' 00:00:00'')';
    date_filter2 := ' and A_DATE <= ''' +
      DateToStr(IncDay(edit_date_from.EditValue, -1)) + ' 23:59:59''';
    date_filter3 := ' AND A_DATE >=''' + DateToStr(edit_date_from.EditValue) +
      ' 00:00:00''';
  end;

  if not VarIsNull(edit_date_to.EditValue) then
    date_filter := date_filter + 'and (A_DATE <= ''' +
      DateToStr(edit_date_to.EditValue) + ' 23:59:59'')';

  min_date := Data.Database.QueryValue
    ('SELECT MIN(A_DATE) FROM CLIENT_ACC WHERE ' + cust_flt + date_filter3, 0);

  if VarIsNull(min_date) then
    min_date := Now;

  Query.DS_QueryDolgi.SQLs.SelectSQL[10] := cust_flt + date_filter;
  Query.DS_QueryDolgi.SQLs.SelectSQL[14] := 'CAST(''' +
    DateToStr(IncDay(min_date, -1)) + ' 23:59:59'' AS TIMESTAMP),';
  Query.DS_QueryDolgi.SQLs.SelectSQL[16] :=
    ReplaceStr(FloatToStrF(range_summ, ffFixed, 20, 2), ',', '.') + ',';
  Query.DS_QueryDolgi.SQLs.SelectSQL[18] := inttostr(cust_id) + ',';

  Query.DS_QueryDolgi.Open;
  Query.DS_QueryDolgi.Last;
end;

procedure TCustomerHistoryForm.ShowEx(cust_id: integer);
begin
  edit_client.EditValue := cust_id;
  SetCustomerHistoryFilter;
  ShowModal;
end;

procedure TCustomerHistoryForm.TB_CustomerHistoryColumns3GetCellParams
  (Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  Params.Text := MainForm.GetDocDescription(strtoint(Params.Text));
end;

procedure TCustomerHistoryForm.TB_CustomerHistoryGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  A_TYPE: integer;
  ENTERED: integer;
begin
  A_TYPE := (Sender as TDBGridEh).DataSource.DataSet.FieldByName('A_TYPE')
    .AsInteger;
  ENTERED := (Sender as TDBGridEh).DataSource.DataSet.FieldByName('ENTERED')
    .AsInteger;
  if ENTERED = 1 then
  begin
    if A_TYPE = SL then
      Background := OptionsForm.ec_sale.Brush.Color
    else if (A_TYPE = RC) or (A_TYPE = RS) then
      Background := OptionsForm.ec_return_cust.Brush.Color
    else if A_TYPE = KS then
      Background := OptionsForm.ec_kassa.Brush.Color
    else if A_TYPE = DL then
      Background := OptionsForm.ec_dolg.Brush.Color;
  end
  else
  begin
    AFont.Color := clGray;
    AFont.Style := [fsItalic];
  end;
end;

procedure TCustomerHistoryForm.TB_SaleDetailsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  HistoryForm.ShowEx(Query.DS_SaleDetails.FBN('GOOD_ID').AsInteger, all);
end;

procedure TCustomerHistoryForm.TodayBtnClick(Sender: TObject);
begin
  edit_date_from.EditValue := Now;
  edit_date_to.EditValue := Now;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.WeekBtnClick(Sender: TObject);
begin
  edit_date_from.EditValue := IncWeek(Now, -1);
  edit_date_to.EditValue := Now;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.YearBtnClick(Sender: TObject);
begin
  edit_date_from.EditValue := IncYear(Now, -1);
  edit_date_to.EditValue := Now;
  SetCustomerHistoryFilter;
end;

procedure TCustomerHistoryForm.SetDetailsFilter;
var
  A_TYPE: integer;
begin

  A_TYPE := Query.DS_QueryDolgi.FBN('A_TYPE').AsInteger;

  if A_TYPE = SL then
  begin
    PageControl.ActivePage := tab_sale;
    Query.DS_SaleDetails.Close;
    Query.DS_SaleDetails.SelectSQL[6] := '"NAKL_ID" = ' +
      inttostr(Query.DS_QueryDolgi.FBN('NAKL_ID').AsInteger);
    Query.DS_SaleDetails.Open;
  end
  else if A_TYPE = RC then
  begin
    PageControl.ActivePage := tab_ret_cust;
    Query.DS_RetCustDetails.Close;
    Query.DS_RetCustDetails.SelectSQL[6] := '"NAKL_ID" = ' +
      inttostr(Query.DS_QueryDolgi.FBN('NAKL_ID').AsInteger);
    Query.DS_RetCustDetails.Open;
  end
  else if A_TYPE = RS then
  begin
    PageControl.ActivePage := tab_ret_suppl;
    Query.DS_RetSupplDetails.Close;
    Query.DS_RetSupplDetails.SelectSQL[6] := '"NAKL_ID" = ' +
      inttostr(Query.DS_QueryDolgi.FBN('NAKL_ID').AsInteger);
    Query.DS_RetSupplDetails.Open;
  end
  else if A_TYPE = KS then
  begin
    PageControl.ActivePage := tab_kassa;
  end
  else if A_TYPE = DL then
  begin
    PageControl.ActivePage := tab_dolg;
  end
  else if A_TYPE = AR then
  begin
    PageControl.ActivePage := tab_arrival;
    Query.DS_ArrivalDetails.Close;
    Query.DS_ArrivalDetails.SelectSQL[6] := '"NAKL_ID" = ' +
      inttostr(Query.DS_QueryDolgi.FBN('NAKL_ID').AsInteger);
    Query.DS_ArrivalDetails.Open;
  end;
end;

end.
