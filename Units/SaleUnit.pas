unit SaleUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Gauges, ExtCtrls, DBGridEh,
  DBCtrlsEh, StdCtrls, Mask, ComCtrls, ToolWin, DB, inifiles, Math,
  FIBDatabase, Buttons, GridsEh, int_const, Menus,
  dxSkinsdxBarPainter, dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxStyles, cxEdit, cxDBLookupComboBox, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  dxLayoutControl, cxDBEdit, cxCurrencyEdit, cxSpinEdit, dxLayoutLookAndFeels,
  cxLabel, cxDBLabel, dxLayoutControlAdapters, cxButtons, dxStatusBar,
  cxImageComboBox, cxSplitter, cxButtonEdit, cxImage, DBGridEhGrouping,
  cxDropDownEdit, cxCheckBox, cxCalendar, cxBarEditItem, dxSkinsCore,
  dxSkinDarkSide, dxSkinscxPCPainter, dxBarExtItems, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, dxSkinDevExpressStyle,
  dxSkinSilver;

type
  TSaleForm = class(TForm)
    DepotPanel: TPanel;
    TB_Depots: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    panel_Layouts: TPanel;
    FilterLayoutGroup_Root: TdxLayoutGroup;
    FilterLayout: TdxLayoutControl;
    FilterLayoutItem1: TdxLayoutItem;
    edit_client: TcxDBImageComboBox;
    FilterLayoutItem2: TdxLayoutItem;
    combo_price: TcxDBImageComboBox;
    FilterLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    FilterLayoutItem6: TdxLayoutItem;
    edit_comments: TcxDBTextEdit;
    SummLayoutGroup_Root: TdxLayoutGroup;
    SummLayout: TdxLayoutControl;
    label_Summ: TcxDBLabel;
    l_sum: TdxLayoutItem;
    FilterLayoutGroup2: TdxLayoutGroup;
    edit_procent: TcxDBSpinEdit;
    FilterLayoutItem7: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    SummLayoutItem2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    SummLayoutItem3: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    SummLayoutItem4: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    SummLayoutItem5: TdxLayoutItem;
    SummLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    SummLayoutGroup1: TdxLayoutGroup;
    SummLayoutGroup2: TdxLayoutGroup;
    panel_Tables: TPanel;
    dxBarManager1Bar2: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    panel_Requirements: TPanel;
    TB_Requirements: TDBGridEh;
    TB_Sale: TDBGridEh;
    Splitter: TcxSplitter;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton22: TdxBarButton;
    TB_ReqList: TDBGridEh;
    dxBarStatic1: TdxBarStatic;
    cxBarEditItem1: TcxBarEditItem;
    Label1: TLabel;
    NoReqLabel: TdxBarControlContainerItem;
    Label2: TLabel;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    cxButton2: TcxButton;
    FilterLayoutItem3: TdxLayoutItem;
    dxBarButton28: TdxBarButton;
    check_checkprices: TdxBarButton;
    dxBarButton1: TdxBarButton;
    procedure TB_SaleDblClick(Sender: TObject);
    procedure TB_SaleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure TB_DepotsCellClick(Column: TColumnEh);
    procedure TB_DepotsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_DepotsExit(Sender: TObject);
    procedure panel_MenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TB_SaleCellClick(Column: TColumnEh);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editcontrol_Exit(Sender: TObject);
    procedure TB_ReqListGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cxButton2Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure check_checkpricesClick(Sender: TObject);
    procedure TB_SaleColumns2GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure combo_pricePropertiesCloseUp(Sender: TObject);
    procedure edit_procentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_clientKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_commentsExit(Sender: TObject);
    procedure TB_RequirementsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_ReqListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_SaleColExit(Sender: TObject);
    procedure edit_clientPropertiesCloseUp(Sender: TObject);
    procedure edit_clientPropertiesEditValueChanged(Sender: TObject);
    procedure edit_procentExit(Sender: TObject);
    procedure TB_SaleColumns6GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
  private
    procedure SetRecord;
    procedure ApplyDepot;
    procedure ShowDepotsPanel;
  public
    procedure RecalculateSale(ForceDiscount: boolean);
    procedure RecalculateSaleOnSuppl;
    procedure RecalculateCurrentSaleOnSuppl;
    procedure UpdateSaleFromRequirements;
    procedure UpdateRequirementsFilter;
    procedure UpdateReqList;
    procedure SetCurrentRequirements;
    procedure AddToRequirements(good_id: Integer; cnt: real);
    procedure UpdateReqButtons;
  end;

var
  SaleForm: TSaleForm;

type
  THackDBGrid = class(TDBGridEh);

implementation

uses MainUnit, SelectGood, DataConteiner, ItemEditor, QueryDataContainer,
  SystemContainerUnit, ImportExcelSale, HistoryUnit, CursEditUnit,
  CustomHistoryUnit;

{$R *.dfm}

procedure TSaleForm.TB_SaleDblClick(Sender: TObject);
begin
  if (FilterLayout.Enabled) and (TB_Sale.SelectedField.FieldName = 'NAME') then
    SetRecord;
end;

procedure TSaleForm.AddToRequirements(good_id: Integer; cnt: real);
begin
  with Data do
  begin
    if DS_Requirements.Locate('GOOD_ID;ORIGINAL_PRICE',
      VarArrayOf([good_id, DS_Sale.fbn('PRICE').AsFloat]), []) then
    begin
      DS_Requirements.Edit;
      DS_Requirements.fbn('CNT').AsFloat := DS_Requirements.fbn('CNT')
        .AsFloat + cnt;
      DS_Requirements.Post;
      DS_Requirements.ReopenLocate('ID');
    end
    else
    begin
      DS_Requirements.Insert;
      DS_Requirements.fbn('GOOD_ID').AsInteger := good_id;
      DS_Requirements.fbn('ORIGINAL_PRICE').AsFloat :=
        DS_Sale.fbn('PRICE').AsFloat;
      DS_Requirements.fbn('ORIGINAL_NAKL_ID').AsInteger := DS_Sale_N.fbn('ID')
        .AsInteger;
      DS_Requirements.fbn('CLIENT_ID').AsInteger := DS_Sale_N.fbn('CUST_ID')
        .AsInteger;
      DS_Requirements.fbn('CNT').AsFloat := cnt;
      DS_Requirements.Post;
      DS_Requirements.ReopenLocate('ID');
    end;
  end;
end;

procedure TSaleForm.UpdateReqButtons;
var
  SaleIsNotEmpty: Boolean;
  ReqIsNotEmpty: Boolean;
  ReqListIsNotEmpty: Boolean;
  canEdit: Boolean;
begin
  canEdit := (Data.DS_Sale_N.FBN('ENTERED').AsInteger = 0) and FilterLayout.enabled;
  SaleIsNotEmpty := (Data.DS_Sale.VisibleRecordCount > 0);
  ReqIsNotEmpty := Data.DS_Requirements.VisibleRecordCount > 0;
  ReqListIsNotEmpty := Data.DS_ReqList.VisibleRecordCount > 0;
  MainForm.act_sale_req_print.Enabled := ReqIsNotEmpty;
  MainForm.act_sale_req_add.Enabled := SaleIsNotEmpty and canEdit;
  MainForm.act_sale_req_clear.Enabled := ReqListIsNotEmpty and canEdit;
  MainForm.act_sale_req_delete.Enabled := ReqIsNotEmpty and canEdit;
  MainForm.act_sale_check.Enabled := SaleIsNotEmpty and canEdit;
  MainForm.act_sale_req_tosale.Enabled := ReqIsNotEmpty and canEdit;
end;

procedure TSaleForm.SetRecord;
begin
  with SelectGoodForm do
  begin
    ShowModal;
    if SelectedID <> -1 then
    begin
      TB_Sale.Columns[2].ReadOnly := false;
      TB_Sale.Columns[3].ReadOnly := false;
      TB_Sale.Columns[4].ReadOnly := false;
      Data.DS_Sale.Edit;
      Data.DS_Sale.fbn('GOOD_ID').AsInteger := SelectedID;
      Data.DS_Sale.Post;
    end;
  end;
end;

procedure TSaleForm.TB_SaleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  null_id: Boolean;
begin
  null_id := Data.DS_Sale.fbn('GOOD_ID').IsNull;
  TB_Sale.Columns[2].ReadOnly := null_id;
  TB_Sale.Columns[3].ReadOnly := null_id;
  TB_Sale.Columns[4].ReadOnly := null_id;

  if (Key = VK_ESCAPE) and not(Data.DS_Sale_N.State in [dsEdit, dsInsert]) then
    Close;
  if (TB_Sale.SelectedIndex = 0) and (Key = VK_RETURN) and (FilterLayout.Enabled)
    then SetRecord;

  if (Key = VK_SPACE) and (TB_Sale.SelectedIndex = 4) and
    FilterLayout.Enabled and not null_id then
    ShowDepotsPanel;
end;

procedure TSaleForm.FormShow(Sender: TObject);
begin
  MainForm.event_locked := true;
  TB_Sale.SetFocus;
  Screen.Cursor := crAppStart;
  Query.DS_Select.ReopenLocate('ID');
  Data.SetUserActivity(SL);
  Screen.Cursor := crDefault;
  UpdateReqList;
  UpdateRequirementsFilter;
  SetCurrentRequirements;
  UpdateReqButtons;
  MainForm.SetSaleTittle;
end;

procedure TSaleForm.SetCurrentRequirements;
begin
  if Data.DS_ReqList.Locate('ORIGINAL_NAKL_ID', Data.DS_Sale_N.fbn('ID')
    .AsInteger, []) then
    NoReqLabel.Visible := ivNever
  else
    NoReqLabel.Visible := ivAlways;
end;

procedure TSaleForm.UpdateRequirementsFilter;
var
  cust_id: string;
begin
  cust_id := inttostr(Data.DS_Sale_N.fbn('CUST_ID').AsInteger);
  Data.DS_Requirements.Close;
  Data.DS_Requirements.SQLs.SelectSQL[12] := '(CLIENT_ID = ' + cust_id +
    ') and (ORIGINAL_NAKL_ID=' +
    inttostr(Data.DS_ReqList.fbn('ORIGINAL_NAKL_ID').AsInteger) + ')';
  Data.DS_Requirements.Open;
end;

procedure TSaleForm.UpdateReqList;
begin
  Data.DS_ReqList.Close;
  Data.DS_ReqList.SQLs.SelectSQL[5] := 'CLIENT_ID = ' +
    inttostr(Data.DS_Sale_N.fbn('CUST_ID').AsInteger);
  Data.DS_ReqList.Open;
end;

procedure TSaleForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('SaleForm', 'Top', 0);
  Left := I.ReadInteger('SaleForm', 'Left', 0);
  Width := I.ReadInteger('SaleForm', 'Width', 640);
  Height := I.ReadInteger('SaleForm', 'Height', 480);
  I.Free;
  Splitter.CloseSplitter;
end;

procedure TSaleForm.RecalculateCurrentSaleOnSuppl;
var
  pr: real;
begin
  with Data.DS_Sale do
  begin
    Data.DS_Goods.Locate('ID', fbn('GOOD_ID').AsInteger, []);
    pr := Data.UseMinSupplPrice;
    case Data.DS_Sale_N.fbn('PRICE_TYPE').AsInteger of
      1:
        pr := Data.GetGeneralPriceByType(pr, Data.DS_Goods.fbn('TYPE_ID')
          .AsInteger);
      2:
        pr := Data.GetSpecPriceByType(pr, Data.DS_Goods.fbn('TYPE_ID')
          .AsInteger);
      // 3: SaleKeyField:='PRICE_SHOP';
      // 4: SaleKeyField:='PRICE_SHOP2';
    end;
    pr := RoundTo(pr + pr * edit_procent.Value / 100, -2);
    Edit;
    fbn('PRICE').AsFloat := pr;
    Post;
  end;

end;

procedure TSaleForm.RecalculateSaleOnSuppl;
begin
  with Data.DS_Sale do
  begin
    try
      Data.DS_Sale_N.DisableControls;
      Data.DS_Sale.DisableControls;
      First;
      MainForm.progressbar.Max := RecordCountFromSrv;
      MainForm.progressbar.Position := 0;
      while not(EOF) do
      begin
        RecalculateCurrentSaleOnSuppl;
        Next;
        MainForm.progressbar.StepIt;
        Application.ProcessMessages;
      end;
    finally
      First;
      MainForm.progressbar.Position := 0;
      Data.DS_Sale_N.EnableControls;
      Data.DS_Sale.EnableControls;
    end;
  end;
end;

procedure TSaleForm.RecalculateSale(ForceDiscount: boolean);
var
  force_discount: String;
begin
  if ForceDiscount
    then force_discount := '1'
    else force_discount := '0';

  Data.DS_Sale.Close;
  Data.Database.Execute('execute procedure UPDATE_ALL_PRICES_IN_SALE_BILL(' +
                         inttostr(Data.DS_Sale_N.FBN('ID').AsInteger) +',' +
                         force_discount + ')');
  Data.DS_Sale.Open;
  Data.DS_Sale_N.ReopenLocate('ID');
end;

procedure TSaleForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Visible and MainForm.ProgStarted then
    TB_Sale.SetFocus;
end;

procedure TSaleForm.check_checkpricesClick(Sender: TObject);
begin
  TB_Sale.Invalidate;
  TB_Sale.SetFocus;
end;

procedure TSaleForm.combo_pricePropertiesCloseUp(Sender: TObject);
var
  k: Integer;
begin
  if (not MainForm.ProgStarted) or (not Visible) then
    exit;
  editcontrol_Exit(Self);
end;

procedure TSaleForm.cxButton2Click(Sender: TObject);
begin
  if not SaleForm.Visible or (Data.DS_Sale.VisibleRecordCount = 0) then exit;
  if Data.DS_Sale_N.State = dsEdit then Data.DS_Sale_N.Post;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  if MessageBox(Application.Handle,
    'Обновить цены в накладной без учета типа товара?',
    PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) = IDOK
  then SaleForm.RecalculateSale(true);
  SaleForm.TB_Sale.SetFocus;
end;

procedure TSaleForm.TB_ReqListGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if Data.DS_ReqList.fbn('ORIGINAL_NAKL_ID').AsInteger = Data.DS_Sale_N.fbn
    ('ID').AsInteger then
  begin
    Background := clInactiveCaption;
    AFont.Style := [fsBold];
  end
  else
  begin
    Background := clWindow;
    AFont.Style := [];
  end;
end;

procedure TSaleForm.TB_ReqListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
end;

procedure TSaleForm.TB_RequirementsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
  if (Key = VK_DELETE) and (ssCtrl in Shift) then
    MainForm.act_sale_req_delete.Execute;
end;

procedure TSaleForm.dxBarButton28Click(Sender: TObject);
begin
  CustomerHistoryForm.ShowEx(Data.DS_Sale_N.fbn('cust_id').AsInteger);
end;

procedure TSaleForm.editcontrol_Exit(Sender: TObject);
begin
  if Data.DS_Sale_N.State = dsEdit then
    Data.DS_Sale_N.Post;
  Data.DS_Sale_N.ReopenLocate('id');
  TB_Sale.SetFocus;
end;

procedure TSaleForm.edit_clientKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    TB_Sale.SetFocus;
end;

procedure TSaleForm.edit_clientPropertiesCloseUp(Sender: TObject);
begin
  TB_Sale.SetFocus;
end;

procedure TSaleForm.edit_clientPropertiesEditValueChanged(Sender: TObject);
begin
  if not Visible then exit;
  editcontrol_Exit(Self);
  UpdateReqList;
  UpdateRequirementsFilter;
  UpdateReqButtons;
  Data.DeleteFromRequirements(Data.DS_Sale_N.fbn('ID').AsInteger);
  MainForm.act_sale_update_prices.Execute;
end;

procedure TSaleForm.edit_commentsExit(Sender: TObject);
begin
  if Data.DS_Sale_N.State = dsEdit then
    Data.DS_Sale_N.Post;
  Data.DS_ReqList.ReopenLocate('ORIGINAL_NAKL_ID');
end;

procedure TSaleForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then TB_Sale.SetFocus;
  if Key = VK_ESCAPE then
  begin
    if Data.DS_Sale_N.State = dsEdit then
      Data.DS_Sale_N.Cancel;
    TB_Sale.SetFocus;
  end;

end;

procedure TSaleForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  case Msg.CharCode of
    // VK_ESCAPE: if (not DepotPanel.Visible) and (not edit_curs.Visible) then Close;
    VK_F1:
      MainForm.act_sale_item_card.Execute;
    VK_F4:
      MainForm.act_sale_item_history.Execute;
    VK_F5:
      Close;
    VK_F6:
      MainForm.act_sale_shop_card.Execute;
    VK_F9:
      MainForm.act_sale_pay.Execute;
  end;

end;

procedure TSaleForm.TB_DepotsCellClick(Column: TColumnEh);
begin
  ApplyDepot;
end;

procedure TSaleForm.ApplyDepot;
var
  id: Integer;
begin
  id := Query.DS_Depots.fbn('ID').AsInteger;
  if id <> Data.DS_Sale.fbn('DEPOT_ID').AsInteger then
  begin
    Data.DS_Sale.Edit;
    Data.DS_Sale.fbn('DEPOT_ID').AsInteger := id;
    Data.DS_Sale.Refresh;
  end;
  DepotPanel.Hide;
  TB_Sale.SetFocus;
end;

procedure TSaleForm.TB_DepotsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_SPACE) or (Key = VK_ESCAPE) then
    ApplyDepot;
  // if Key = VK_ESCAPE then
  // begin
  // DepotPanel.Hide;
  // TB_Sale.SetFocus;
  // end;
end;

procedure TSaleForm.TB_DepotsExit(Sender: TObject);
begin
  DepotPanel.Hide;
end;

procedure TSaleForm.panel_MenuMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if DepotPanel.Visible then
    DepotPanel.Hide;
end;

procedure TSaleForm.TB_SaleCellClick(Column: TColumnEh);
begin
  if (Column.Index = 4) and FilterLayout.Enabled and
    not Data.DS_Sale.fbn('GOOD_ID').IsNull then
    ShowDepotsPanel;
end;

procedure TSaleForm.TB_SaleColExit(Sender: TObject);
begin
  if Data.DS_Sale.State = dsEdit
    then Data.DS_Sale.Post;
end;

procedure TSaleForm.TB_SaleColumns2GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
var
  price, arr_price: double;
begin
  if check_checkprices.Down = false then exit;
  price := Data.DS_Sale.FBN('PRICE').AsFloat;
  arr_price := Data.DS_Sale.FBN('LAST_AR_PRICE').AsFloat;
 if price <= arr_price then
  begin
    Params.Font.Color := clRed;
    Params.Font.Style := [fsBold];
  end
  else if arr_price <> 0 then
    if price / arr_price <= 1.03 then
    begin
      Params.Font.Color := clOlive;
      Params.Font.Style := [fsBold];
    end;
end;

procedure TSaleForm.TB_SaleColumns6GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if (Data.DS_Sale.FBN('UNIT_ID').AsInteger = 1) OR (Data.DS_Sale.FBN('TOTAL_WEIGHT').AsFloat = 0)
    then Params.Text := ''
    else Params.Text := Params.Text + ' кг';
end;

procedure TSaleForm.ShowDepotsPanel;
var
  p_top, p_left: Integer;
begin
  DepotPanel.Height := Query.DS_Depots.VisibleRecordCount * 20;
  DepotPanel.Width := TB_Sale.Columns[4].Width + 2;
  p_top := TB_Sale.Top + (TB_Sale).CellRect(4, THackDBGrid(TB_Sale).Row).Top;
  p_left := TB_Sale.Left + (TB_Sale).CellRect(4, THackDBGrid(TB_Sale).Row).Left;
  if (p_top + DepotPanel.Height) > (SaleForm.Height - 20) then
    p_top := p_top - DepotPanel.Height;
  DepotPanel.Left := p_left;
  DepotPanel.Top := p_top;
  DepotPanel.Show;
  TB_Depots.SetFocus;
end;

procedure TSaleForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.ClearUserActivity;
  MainForm.event_locked := false;
end;

procedure TSaleForm.edit_procentExit(Sender: TObject);
begin
  edit_procent.PostEditValue;
  if Data.DS_Sale_N.State = dsEdit then
    Data.DS_Sale_N.Post;
  Data.DS_Sale_N.ReopenLocate('ID');
end;

procedure TSaleForm.edit_procentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then TB_Sale.SetFocus;
  if Key = VK_ESCAPE then
  begin
    if Data.DS_Sale_N.State = dsEdit then
      Data.DS_Sale_N.Cancel;
    TB_Sale.SetFocus;
  end;
end;

procedure TSaleForm.UpdateSaleFromRequirements;
begin
  if ImportExcelSaleForm.ShowModal <> mrOK then exit;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  
  Data.Database.Execute('execute procedure UPDATE_FROM_REQUIREMENTS(' +
    inttostr(Data.DS_Sale_N.FBN('ID').AsInteger) + ',' +
    inttostr(Data.DS_ReqList.FBN('ORIGINAL_NAKL_ID').AsInteger) + ',' +
    inttostr(ImportExcelSaleForm.price_selector.ItemIndex)+')');
  Data.DS_Sale.ReopenLocate('ID');
  Data.DS_Sale_N.ReopenLocate('ID');
  Data.DS_Requirements.ReopenLocate('ID');
  UpdateReqButtons;
end;


end.
