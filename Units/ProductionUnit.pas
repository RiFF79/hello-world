unit ProductionUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle, dxSkinSilver,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxSpinEdit, cxImageComboBox,
  cxCalendar, cxCheckBox, dxBar, cxBarEditItem, cxClasses, dxLayoutContainer,
  cxLabel, cxDBLabel, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControl,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DB, cxSplitter;

type
  TProductionForm = class(TForm)
    TB_Production: TDBGridEh;
    panel_info: TPanel;
    LayoutControl: TdxLayoutControl;
    edit_depot: TcxDBLookupComboBox;
    edit_comments: TcxDBTextEdit;
    LayoutControlGroup_Root: TdxLayoutGroup;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlItem5: TdxLayoutItem;
    SummLayout: TdxLayoutControl;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    SummLayoutGroup_Root: TdxLayoutGroup;
    SummLayoutItem1: TdxLayoutItem;
    SummLayoutItem2: TdxLayoutItem;
    SummLayoutItem3: TdxLayoutItem;
    SummLayoutItem4: TdxLayoutItem;
    SummLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    SummLayoutGroup1: TdxLayoutGroup;
    SummLayoutItem5: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    rib_bar_arrival: TdxBar;
    btn_colprint: TdxBarButton;
    btn_print: TdxBarButton;
    btn_preview: TdxBarButton;
    btn_itemcard: TdxBarButton;
    btn_history: TdxBarButton;
    btn_return: TdxBarButton;
    btn_execute: TdxBarButton;
    btn_exportexcel: TdxBarButton;
    btn_importexcel: TdxBarButton;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    N4: TdxBarButton;
    btn_price: TdxBarButton;
    edit_percent: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    btn_special1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    check_Colours: TdxBarButton;
    panel_tables: TPanel;
    TB_Specification: TDBGridEh;
    ProductionBar: TdxBar;
    SpecificationBar: TdxBar;
    bar_specification_control: TdxBarDockControl;
    bar_production_control: TdxBarDockControl;
    btn_prod_history: TdxBarButton;
    btn_prod_sp_execute: TdxBarButton;
    btn_prod_sp_return: TdxBarButton;
    btn_spec_clear: TdxBarButton;
    btn_spec_load_defaults: TdxBarButton;
    btn_spec_set_defaults: TdxBarButton;
    DepotPanel: TPanel;
    TB_Depots: TDBGridEh;
    btn_spec_item_card: TdxBarButton;
    btn_spec_history: TdxBarButton;
    panel_production: TPanel;
    panel_specification: TPanel;
    cxSplitter1: TcxSplitter;
    procedure edit_depotExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure TB_ProductionDblClick(Sender: TObject);
    procedure TB_ProductionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_SpecificationDblClick(Sender: TObject);
    procedure TB_SpecificationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_SpecificationCellClick(Column: TColumnEh);
    procedure TB_SpecificationColExit(Sender: TObject);
    procedure TB_DepotsCellClick(Column: TColumnEh);
    procedure TB_DepotsExit(Sender: TObject);
    procedure TB_DepotsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_commentsExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    depot_col: Integer;
    procedure SetProductionRecord;
    procedure SetSpecificationRecord;
    procedure ShowDepotsPanel;
    procedure ApplyDepot;
  public
    procedure UpdateSpecificationFilter;
  end;

var
  ProductionForm: TProductionForm;

type
  THackDBGrid = class(TDBGridEh);  
  
implementation

{$R *.dfm}

uses MainUnit, DataConteiner, QueryDataContainer, int_const, SelectGood,
  SystemContainerUnit;


procedure TProductionForm.UpdateSpecificationFilter;
var
  prod_enabled: boolean;
  spec_enabled: boolean;
  entered: boolean;
begin
  prod_enabled := Data.DS_Production.VisibleRecordCount > 0;
  spec_enabled := Data.DS_Production_SP.VisibleRecordCount > 0;
  entered := Data.DS_Production_N.FBN('ENTERED').AsInteger = 1;
  TB_Specification.Enabled := prod_enabled and not entered;
  MainForm.act_prod_spec_clear_nakl.enabled := prod_enabled and not entered;
  MainForm.act_prod_spec_load_defaults.enabled := prod_enabled and not entered;
  MainForm.act_prod_spec_save_defaults.enabled := prod_enabled and not entered;
  MainForm.act_prod_spec_item_history.enabled := spec_enabled and not entered;
  MainForm.act_prod_spec_item_card.enabled := spec_enabled and not entered;
end;

procedure TProductionForm.SetProductionRecord;
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
    With Data.DS_Production do
    begin
      Edit;
      FieldValues['GOOD_ID'] := SelectGoodForm.SelectedID;
      Post;
    end;
    Data.DS_Production_SP.CloseOpen(true);
    UpdateSpecificationFilter;
end;

procedure TProductionForm.SetSpecificationRecord;
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
    With Data.DS_Production_SP do
    begin
      Edit;
      FieldValues['GOOD_ID'] := SelectGoodForm.SelectedID;
      Post;
    end;
end;

procedure TProductionForm.edit_depotExit(Sender: TObject);
begin
  if Data.DS_Production_N.State = dsEdit then
    Data.DS_Production_N.Post;
  Data.DS_Production_N.ReopenLocate('id');
  TB_Production.SetFocus;
end;

procedure TProductionForm.edit_commentsExit(Sender: TObject);
begin
  if Data.DS_Production_N.State = dsEdit then
    Data.DS_Production_N.Post;
  Data.DS_Production_N.ReopenLocate('id');
  TB_Production.SetFocus;
end;

procedure TProductionForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    TB_Production.SetFocus;
end;

procedure TProductionForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.ClearUserActivity;
  MainForm.event_locked := false;
end;

procedure TProductionForm.FormCreate(Sender: TObject);
begin
  depot_col := SysContainer.findDepotColId(TB_Specification);
end;

procedure TProductionForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if (Msg.CharCode = VK_F5) or (Msg.CharCode = VK_ESCAPE) then Close;
end;

procedure TProductionForm.FormShow(Sender: TObject);
begin
  MainForm.event_locked := true;
  TB_Production.SetFocus;
  Screen.Cursor := crAppStart;
  Query.DS_Select.ReopenLocate('ID');
  Data.SetUserActivity(PR);
  Screen.Cursor := crDefault;
  MainForm.SetProductionTittle;
  UpdateSpecificationFilter;
end;

procedure TProductionForm.TB_DepotsCellClick(Column: TColumnEh);
begin
  ApplyDepot;
end;

procedure TProductionForm.TB_DepotsExit(Sender: TObject);
begin
  DepotPanel.Hide;
end;

procedure TProductionForm.TB_DepotsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_SPACE) or (Key = VK_ESCAPE) then
    ApplyDepot;
end;

procedure TProductionForm.TB_ProductionDblClick(Sender: TObject);
begin
  if (LayoutControl.Enabled) and (TB_Production.SelectedField.FieldName = 'NAME')
  then
    SetProductionRecord;
end;

procedure TProductionForm.TB_ProductionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
  if (TB_Production.SelectedIndex = 0) and (Key = VK_RETURN) and
    (LayoutControl.Enabled) then SetProductionRecord;
    if Key = VK_F1 then MainForm.act_prod_item_card.Execute;
    if Key = VK_F4 then MainForm.act_prod_item_history.Execute;
end;

procedure TProductionForm.TB_SpecificationCellClick(Column: TColumnEh);
begin
  if (Column.Index = depot_col) and LayoutControl.Enabled and
    not Data.DS_Production_SP.fbn('GOOD_ID').IsNull then
    ShowDepotsPanel;
end;

procedure TProductionForm.TB_SpecificationColExit(Sender: TObject);
begin
  if Data.DS_Production_SP.State = dsEdit
    then Data.DS_Production_SP.Post;
end;

procedure TProductionForm.ShowDepotsPanel;
var
  p_top, p_left: Integer;
begin
  DepotPanel.Height := Query.DS_Depots.VisibleRecordCount * 20;
  DepotPanel.Width := TB_Specification.Columns[depot_col].Width + 2;
  p_top := TB_Specification.Top + (TB_Specification).CellRect(depot_col, THackDBGrid(TB_Specification).Row).Top;
  p_left := TB_Specification.Left + (TB_Specification).CellRect(depot_col, THackDBGrid(TB_Specification).Row).Left;
  if (p_top + DepotPanel.Height) > (ProductionForm.Height - 20) then
    p_top := p_top - DepotPanel.Height;
  DepotPanel.Left := p_left;
  DepotPanel.Top := p_top;
  DepotPanel.Show;
  TB_Depots.SetFocus;
end;

procedure TProductionForm.ApplyDepot;
var
  id: Integer;
begin
  id := Query.DS_Depots.fbn('ID').AsInteger;
  if id <> Data.DS_Production_SP.fbn('DEPOT_ID').AsInteger then
  begin
    Data.DS_Production_SP.Edit;
    Data.DS_Production_SP.fbn('DEPOT_ID').AsInteger := id;
    Data.DS_Production_SP.Refresh;
  end;
  DepotPanel.Hide;
  TB_Specification.SetFocus;
end;

procedure TProductionForm.TB_SpecificationDblClick(Sender: TObject);
begin
  if (LayoutControl.Enabled) and (TB_Specification.SelectedField.FieldName = 'NAME')
  then
    SetSpecificationRecord;
end;

procedure TProductionForm.TB_SpecificationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_ESCAPE then Close;
  if (TB_Specification.SelectedIndex = 0) and (Key = VK_RETURN) and
    (LayoutControl.Enabled) then SetSpecificationRecord;
  if (Key = VK_SPACE) and (TB_Specification.SelectedIndex = depot_col) and
    LayoutControl.Enabled then
    ShowDepotsPanel;
  if Key = VK_F1 then MainForm.act_prod_spec_item_card.Execute;
  if Key = VK_F4 then MainForm.act_prod_spec_item_history.Execute;
end;

end.
