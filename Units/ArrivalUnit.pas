unit ArrivalUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, ExtCtrls, DBCtrlsEh, StdCtrls,
  Mask, DBLookupEh, ComCtrls, ToolWin, DBCtrls, Gauges, DB, inifiles,
  Math, Menus, GridsEh, int_const, DBGridEhGrouping, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxDBLabel, dxSkinsdxBarPainter,
  dxBar, cxClasses, cxButtonEdit, cxCheckBox, cxImageComboBox, cxCalendar,
  dxBarExtItems, cxBarEditItem, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxDBEdit, dxLayoutControl, dxStatusBar, cxSpinEdit,
  Vcl.Samples.Spin, cxCurrencyEdit, dxSkinscxPCPainter, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TArrivalForm = class(TForm)
    TB_Arrival: TDBGridEh;
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
    popup_price: TdxBarPopupMenu;
    Panel1: TPanel;
    LayoutControlGroup_Root: TdxLayoutGroup;
    LayoutControl: TdxLayoutControl;
    SummLayoutGroup_Root: TdxLayoutGroup;
    SummLayout: TdxLayoutControl;
    LayoutControlItem1: TdxLayoutItem;
    edit_client: TcxDBImageComboBox;
    LayoutControlItem3: TdxLayoutItem;
    edit_depot: TcxDBLookupComboBox;
    LayoutControlItem5: TdxLayoutItem;
    edit_comments: TcxDBTextEdit;
    label_sum: TcxDBLabel;
    l_sum: TdxLayoutItem;
    SummLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    SummLayoutItem1: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    SummLayoutItem2: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    SummLayoutItem3: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    SummLayoutItem4: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    SummLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    edit_percent: TcxBarEditItem;
    SummLayoutGroup1: TdxLayoutGroup;
    cxDBLabel6: TcxDBLabel;
    SummLayoutItem5: TdxLayoutItem;
    dxBarButton1: TdxBarButton;
    btn_special1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    check_Colours: TdxBarButton;
    procedure TB_ArrivalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_ArrivalColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure TB_ArrivalDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure combo_ArrivalCombosCloseUp(Sender: TObject; Accept: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ArrivalEditExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_priceClick(Sender: TObject);
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_supplierPropertiesCloseUp(Sender: TObject);
    procedure edit_percentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_ArrivalGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure check_ColoursClick(Sender: TObject);
  private
    procedure SetRecord;
  public
    { Public declarations }
  end;

var
  ArrivalForm: TArrivalForm;

implementation

uses DataConteiner, SelectGood, MainUnit, SystemContainerUnit,
  QueryDataContainer, ItemEditor, HistoryUnit, ExternapPriceImportUnit,
  ProgressUnit;

{$R *.dfm}

procedure TArrivalForm.SetRecord;
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
    With Data.DS_Arrival do
    begin
      Edit;
      FieldValues['GOOD_ID'] := SelectGoodForm.SelectedID;
      Refresh;
    end;
end;

procedure TArrivalForm.TB_ArrivalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
  if (TB_Arrival.SelectedIndex = 0) and (Key = VK_RETURN) and
    (LayoutControl.Enabled) then
    SetRecord;
end;

procedure TArrivalForm.TB_ArrivalColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if LayoutControl.Enabled then
    SetRecord;
end;

procedure TArrivalForm.TB_ArrivalDblClick(Sender: TObject);
begin
  if (LayoutControl.Enabled) and (TB_Arrival.SelectedField.FieldName = 'NAME')
  then
    SetRecord;
end;

procedure TArrivalForm.TB_ArrivalGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  low = 0.1;
  mid = 2;
  max = 10;
var
  prc: double;
begin
  if (check_Colours.Down = false) or
      VarIsNull(Data.DS_Arrival['CNT']) or
      VarIsNull(Data.DS_Arrival['PRICE'])
    then exit;

  prc := Data.DS_Arrival.FBN('PRC').AsFloat;

  if prc > max then
    AFont.Color := clBlue
  else if (prc >= low) and (prc <= mid) then
    AFont.Color := clOlive
  else if prc < low then
    AFont.Color := clRed;
end;


procedure TArrivalForm.FormShow(Sender: TObject);
begin
  MainForm.event_locked := true;
  TB_Arrival.SetFocus;
  Screen.Cursor := crAppStart;
  Query.DS_Select.ReopenLocate('ID');
  Data.SetUserActivity(AR);
  Screen.Cursor := crDefault;
  MainForm.SetArrivalTittle;
end;

procedure TArrivalForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('ArrivalForm', 'Top', 0);
  Left := I.ReadInteger('ArrivalForm', 'Left', 0);
  Width := I.ReadInteger('ArrivalForm', 'Width', 640);
  Height := I.ReadInteger('ArrivalForm', 'Height', 480);
  I.Free;
end;

procedure TArrivalForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Visible and MainForm.ProgStarted then
  begin
    Data.DS_Arrival_N.Refresh;
    TB_Arrival.SetFocus;
  end;
end;

procedure TArrivalForm.combo_ArrivalCombosCloseUp(Sender: TObject;
  Accept: Boolean);
begin
  if (Data.DS_Arrival_N.State = dsEdit) and MainForm.ProgStarted then
  begin
    Data.DS_Arrival_N.Refresh;
    TB_Arrival.SetFocus;
  end;
end;

procedure TArrivalForm.check_ColoursClick(Sender: TObject);
begin
  TB_Arrival.Invalidate;
  TB_Arrival.SetFocus;
end;

procedure TArrivalForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    TB_Arrival.SetFocus;
end;

procedure TArrivalForm.edit_percentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    MainForm.act_arr_recalcprices.Execute;
end;

procedure TArrivalForm.edit_supplierPropertiesCloseUp(Sender: TObject);
begin
  TB_Arrival.SetFocus;
end;

procedure TArrivalForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  case Msg.CharCode of
    VK_F1:
      MainForm.act_arr_itemcard.Execute;
    VK_F4:
      MainForm.act_arr_history.Execute;
    VK_F5, VK_ESCAPE:
      Close;
  end;
end;

procedure TArrivalForm.ArrivalEditExit(Sender: TObject);
begin
  if Data.DS_Arrival_N.State = dsEdit then
    Data.DS_Arrival_N.Post;
  Data.DS_Arrival_N.ReopenLocate('id');
  TB_Arrival.SetFocus;
end;

procedure TArrivalForm.btn_priceClick(Sender: TObject);
begin
  btn_price.DropDown;
end;

procedure TArrivalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.ClearUserActivity;
  MainForm.event_locked := false;
end;

end.
