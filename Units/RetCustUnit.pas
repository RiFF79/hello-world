unit RetCustUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Menus, DBCtrls, Gauges, ExtCtrls,
  DBCtrlsEh, DBLookupEh, StdCtrls, Mask, ComCtrls, ToolWin, DB, inifiles, Math,
  GridsEh, int_const, DBGridEhGrouping, dxBar, cxClasses, dxBarExtItems,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxLabel, cxDBLabel, dxLayoutContainer,
  cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl, cxCurrencyEdit,
  dxSkinsCore, dxSkinDarkSide, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinDevExpressStyle,
  dxSkinSilver, EhLibVCL, DBAxisGridsEh;

type
  TRetCustForm = class(TForm)
    TB_RetCust: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_colprint: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    btn_itemcard: TdxBarButton;
    btn_history: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btn_exportexcel: TdxBarButton;
    btn_importexcel: TdxBarButton;
    dxBarSpinEdit1: TdxBarSpinEdit;
    btn_recalc: TdxBarButton;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    N4: TdxBarButton;
    btn_price: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    edit_percent: TdxBarSpinEdit;
    pm_RetCust_NewPrice: TdxBarPopupMenu;
    m_specprice: TdxBarButton;
    m_genprice: TdxBarButton;
    m_shop: TdxBarButton;
    m_shop2: TdxBarButton;
    m_LastPrices: TdxBarButton;
    Panel2: TPanel;
    SummLayoutGroup_Root: TdxLayoutGroup;
    SummLayout: TdxLayoutControl;
    FilterLayoutGroup_Root: TdxLayoutGroup;
    FilterLayout: TdxLayoutControl;
    edit_client: TcxDBImageComboBox;
    FilterLayoutItem1: TdxLayoutItem;
    edit_depot: TcxDBLookupComboBox;
    FilterLayoutItem2: TdxLayoutItem;
    edit_comments: TcxDBTextEdit;
    FilterLayoutItem4: TdxLayoutItem;
    SummLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxDBLabel1: TcxDBLabel;
    l_sum: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    SummLayoutItem3: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    SummLayoutItem4: TdxLayoutItem;
    cxDBLabel5: TcxDBLabel;
    SummLayoutItem5: TdxLayoutItem;
    cxDBLabel6: TcxDBLabel;
    SummLayoutItem6: TdxLayoutItem;
    SummLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    SummLayoutGroup1: TdxLayoutGroup;
    procedure TB_RetCustDblClick(Sender: TObject);
    procedure TB_RetCustKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_RetCustColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure controlExit(Sender: TObject);
    procedure clientCloseUp(Sender: TObject);
    procedure TB_RetCustColumns2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure TB_RetCustColumns3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
    curs_accept: Boolean;
    procedure SetRecord;
  public
    { Public declarations }
  end;

var
  RetCustForm: TRetCustForm;

implementation

uses
  DataConteiner, SelectGood, ItemEditor, QueryDataContainer, MainUnit,
  HistoryUnit, SystemContainerUnit;

{$R *.dfm}

procedure TRetCustForm.SetRecord;
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
    With Data.DS_Return_Cust do
    begin
      Edit;
      fbn('GOOD_ID').AsInteger := SelectGoodForm.SelectedID;
      if (Data.GetItemUnits(SelectGoodForm.SelectedID) = 0) and
          not VarIsNull(FieldValues['CNT']) then
        FieldValues['CNT'] := SysContainer.StandartIntRound(FieldValues['CNT']);
      FieldValues['PRICE'] := Data.GetLastSalePrice(fbn('GOOD_ID').AsInteger,
        Data.DS_Return_Cust_N.fbn('CUST_ID').AsInteger);
      Refresh;
    end;
end;

procedure TRetCustForm.TB_RetCustDblClick(Sender: TObject);
begin
  if (FilterLayout.Enabled) and (TB_RetCust.SelectedField.FieldName = 'NAME')
  then
    SetRecord;
end;

procedure TRetCustForm.TB_RetCustKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
    Close;
  if Key = VK_ESCAPE then
    Close;
  if (TB_RetCust.SelectedIndex = 0) and (Key = VK_RETURN) and
    (FilterLayout.Enabled) then
    SetRecord;
  if Key = VK_F1 then
  begin
    ItemEditorForm.isFromArrival := True;
    MainForm.act_rc_itemcard.Execute;
    ItemEditorForm.isFromArrival := False;
  end;
  if Key = VK_F6 then
    MainForm.act_rc_shopcard.Execute;

end;

procedure TRetCustForm.TB_RetCustColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if FilterLayout.Enabled then
    SetRecord;
end;

procedure TRetCustForm.TB_RetCustColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if VarIsNull(Value) or (Value='') then exit;
  UseText := false;
  if Data.DS_Return_Cust.FBN('UNIT_ID').AsInteger = 0
    then Value := SysContainer.StandartIntRound(Value)
    else Value := SysContainer.StandartRound(Value);
end;

procedure TRetCustForm.TB_RetCustColumns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if VarIsNull(Value) or (Value='') then exit;
  UseText := false;
  Value := SysContainer.StandartRound(Value);
end;

procedure TRetCustForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('RetCustForm', 'Top', 0);
  Left := I.ReadInteger('RetCustForm', 'Left', 0);
  Width := I.ReadInteger('RetCustForm', 'Width', 640);
  Height := I.ReadInteger('RetCustForm', 'Height', 480);
  I.Free;
end;

procedure TRetCustForm.FormShow(Sender: TObject);
begin
  MainForm.event_locked := true;
  TB_RetCust.SetFocus;
  Screen.Cursor := crAppStart;
  Query.DS_Select.ReopenLocate('ID');
  Data.SetUserActivity(RC);
  Screen.Cursor := crDefault;
end;

procedure TRetCustForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Visible and MainForm.ProgStarted then
  begin
    Data.DS_Return_Cust_N.Refresh;
    TB_RetCust.SetFocus;
  end;
end;

procedure TRetCustForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = VK_F4 then
    HistoryForm.ShowEx(Data.DS_Return_Cust.FieldByName('GOOD_ID')
      .AsInteger, all);
end;

procedure TRetCustForm.controlExit(Sender: TObject);
begin
  if Data.DS_Return_Cust_N.State = dsEdit then
    Data.DS_Return_Cust_N.Post;
  Data.DS_Return_Cust_N.ReopenLocate('id');
  TB_RetCust.SetFocus;
end;

procedure TRetCustForm.clientCloseUp(Sender: TObject);
begin
  if not MainForm.ProgStarted then
    exit;
  controlExit(Self);
  if Data.DS_Return_Cust.RecordCount = 0 then
    exit;
  if MessageBox(Application.Handle, 'Пересчитать цены по этому клиенту?',
    PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then
    exit;
  m_LastPrices.Click;
end;

procedure TRetCustForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and MainForm.ProgStarted then
    controlExit(Self);
end;

procedure TRetCustForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.ClearUserActivity;
  MainForm.event_locked := false;
end;

end.
