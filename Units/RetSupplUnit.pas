unit RetSupplUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Gauges, ExtCtrls, DBGridEh,
  DBCtrlsEh, StdCtrls, Mask, DBLookupEh, ComCtrls, ToolWin, DB, inifiles,
  GridsEh, int_const, DBGridEhGrouping, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel,
  cxDBLabel, dxLayoutControl, cxDBEdit, cxImageComboBox, cxCurrencyEdit,
  dxSkinsCore, dxSkinDarkSide, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinDevExpressStyle,
  dxSkinSilver, EhLibVCL, DBAxisGridsEh;

type
  TRetSupplForm = class(TForm)
    TB_RetSuppl: TDBGridEh;
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
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton1: TdxBarButton;
    Panel2: TPanel;
    control_layoutGroup_Root: TdxLayoutGroup;
    control_layout: TdxLayoutControl;
    summ_layoutGroup_Root: TdxLayoutGroup;
    summ_layout: TdxLayoutControl;
    cxDBLabel1: TcxDBLabel;
    summ_layoutItem1: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    summ_layoutItem2: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    summ_layoutItem3: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    summ_layoutItem4: TdxLayoutItem;
    cxDBLabel5: TcxDBLabel;
    l_sum: TdxLayoutItem;
    summ_layoutSeparatorItem1: TdxLayoutSeparatorItem;
    summ_layoutGroup1: TdxLayoutGroup;
    summ_layoutGroup2: TdxLayoutGroup;
    summ_layoutSeparatorItem2: TdxLayoutSeparatorItem;
    l_client: TdxLayoutItem;
    edit_client: TcxDBImageComboBox;
    l_comments: TdxLayoutItem;
    edit_comments: TcxDBTextEdit;
    summ_layoutGroup3: TdxLayoutGroup;
    procedure TB_RetSupplDblClick(Sender: TObject);
    procedure TB_RetSupplKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure combo_RetSupplDepotChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_RetSupplColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure panel_MenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TB_DepotsExit(Sender: TObject);
    procedure TB_DepotsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_DepotsCellClick(Column: TColumnEh);
    procedure RetSupplEditExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_RetSupplCellClick(Column: TColumnEh);
    procedure edit_clientPropertiesCloseUp(Sender: TObject);
    procedure TB_RetSupplColumns6GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
  private
    curs_accept: Boolean;
    procedure SetRecord;
    procedure ApplyDepot;
    procedure ShowDepotsPanel;
  public
    { Public declarations }
  end;

var
  RetSupplForm: TRetSupplForm;

type
  THackDBGrid = class(TDBGridEh);

implementation

uses DataConteiner, SelectGood, MainUnit, QueryDataContainer, HistoryUnit,
  ItemEditor, SystemContainerUnit;

{$R *.dfm}

procedure TRetSupplForm.SetRecord;
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
    With Data.DS_Return_Suppl do
    begin
      Edit;
      fbn('GOOD_ID').AsInteger := SelectGoodForm.SelectedID;
      fbn('PRICE').AsFloat := Data.GetLastArrivalPrice(fbn('GOOD_ID').AsInteger,
        Data.DS_Return_Suppl_N.fbn('CUST_ID').AsInteger, false, false);
      Refresh;
    end;
end;

procedure TRetSupplForm.TB_RetSupplDblClick(Sender: TObject);
begin
  if (control_layout.Enabled) and (TB_RetSuppl.SelectedField.FieldName = 'NAME')
  then
    SetRecord;
end;

procedure TRetSupplForm.TB_RetSupplKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
    Close;
  if Key = VK_ESCAPE then
    Close;
  if (TB_RetSuppl.SelectedIndex = 0) and (Key = VK_RETURN) and
    (control_layout.Enabled) then
    SetRecord;
  if (Key = VK_SPACE) and (TB_RetSuppl.SelectedIndex = 4) and control_layout.Enabled
  then
    ShowDepotsPanel;

end;

procedure TRetSupplForm.combo_RetSupplDepotChange(Sender: TObject);
begin
  if Data.DS_Return_Suppl_N.State = dsEdit then
    Data.DS_Return_Suppl_N.Refresh;
  if RetSupplForm.Visible then
    TB_RetSuppl.SetFocus;
end;

procedure TRetSupplForm.FormShow(Sender: TObject);
begin
  MainForm.event_locked := true;
  Screen.Cursor := crAppStart;
  TB_RetSuppl.SetFocus;
  Query.DS_Select.ReopenLocate('ID');
  Data.SetUserActivity(RS);
  Screen.Cursor := crDefault;
end;

procedure TRetSupplForm.TB_RetSupplCellClick(Column: TColumnEh);
begin
  if (Column.Index = 4) and control_layout.Enabled then
    ShowDepotsPanel;
end;

procedure TRetSupplForm.TB_RetSupplColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if control_layout.Enabled then
    SetRecord;
end;

procedure TRetSupplForm.TB_RetSupplColumns6GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if (Data.DS_Return_Suppl.FBN('UNIT_ID').AsInteger = 1) OR (Data.DS_Return_Suppl.FBN('TOTAL_WEIGHT').AsFloat = 0)
    then Params.Text := ''
    else Params.Text := Params.Text + ' êã';
end;

procedure TRetSupplForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('RetSupplForm', 'Top', 0);
  Left := I.ReadInteger('RetSupplForm', 'Left', 0);
  Width := I.ReadInteger('RetSupplForm', 'Width', 640);
  Height := I.ReadInteger('RetSupplForm', 'Height', 480);
  I.Free;
end;

procedure TRetSupplForm.edit_clientPropertiesCloseUp(Sender: TObject);
begin
  if not MainForm.ProgStarted then
    exit;
  RetSupplEditExit(Self);
end;

procedure TRetSupplForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and MainForm.ProgStarted then
    RetSupplEditExit(Self);
end;

procedure TRetSupplForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Visible and MainForm.ProgStarted then
  begin
    Data.DS_Return_Suppl_N.Refresh;
    TB_RetSuppl.SetFocus;
  end;
end;

procedure TRetSupplForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  case Msg.CharCode of
    VK_F1:
      MainForm.act_rs_itemcard.Execute;
    VK_F4:
      MainForm.act_rs_history.Execute;
    VK_F5:
      Close;
    VK_F6:
      MainForm.act_rs_shopcard.Execute;
    VK_ESCAPE:
      if (not DepotPanel.Visible) then
        Close;
  end;

end;

procedure TRetSupplForm.ShowDepotsPanel;
var
  p_top, p_left: Integer;
begin
  p_top := TB_RetSuppl.Top + (TB_RetSuppl)
    .CellRect(4, THackDBGrid(TB_RetSuppl).Row).Top;
  p_left := TB_RetSuppl.Left + (TB_RetSuppl)
    .CellRect(4, THackDBGrid(TB_RetSuppl).Row).Left;
  if (p_top + DepotPanel.Height) > (RetSupplForm.Height - 20) then
    p_top := p_top - DepotPanel.Height;
  DepotPanel.Left := p_left;
  DepotPanel.Top := p_top;
  DepotPanel.Show;
  TB_Depots.SetFocus;
end;

procedure TRetSupplForm.panel_MenuMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DepotPanel.Visible then
    DepotPanel.Hide;
end;

procedure TRetSupplForm.TB_DepotsExit(Sender: TObject);
begin
  DepotPanel.Hide;
end;

procedure TRetSupplForm.TB_DepotsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_SPACE) then
  begin
    ApplyDepot;
  end;
  if Key = VK_ESCAPE then
  begin
    DepotPanel.Hide;
    TB_RetSuppl.SetFocus;
  end;
end;

procedure TRetSupplForm.ApplyDepot;
begin
  Data.DS_Return_Suppl.Edit;
  Data.DS_Return_Suppl.fbn('DEPOT_ID').AsInteger := Query.DS_Depots.fbn('ID')
    .AsInteger;
  Data.DS_Return_Suppl.Refresh;
  DepotPanel.Hide;
  TB_RetSuppl.SetFocus;
end;

procedure TRetSupplForm.TB_DepotsCellClick(Column: TColumnEh);
begin
  ApplyDepot;
end;

procedure TRetSupplForm.RetSupplEditExit(Sender: TObject);
begin
  if Data.DS_Return_Suppl_N.State = dsEdit then
    Data.DS_Return_Suppl_N.Post;
  Data.DS_Return_Suppl_N.ReopenLocate('id');
  TB_RetSuppl.SetFocus;
end;

procedure TRetSupplForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.ClearUserActivity;
  MainForm.event_locked := false;
end;

end.
