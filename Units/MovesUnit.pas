unit MovesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Gauges, ExtCtrls, DBGridEh,
  DBCtrlsEh, StdCtrls, Mask, DBLookupEh, ComCtrls, ToolWin, DB, inifiles,
  GridsEh, int_const, DBGridEhGrouping, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControl, cxLabel, cxDBLabel, cxDBEdit, dxSkinscxPCPainter,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TMovesForm = class(TForm)
    TB_Moves: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    Panel1: TPanel;
    SummLayoutGroup_Root: TdxLayoutGroup;
    SummLayout: TdxLayoutControl;
    FilterLayoutGroup_Root: TdxLayoutGroup;
    FilterLayout: TdxLayoutControl;
    edit_depot_from: TcxDBLookupComboBox;
    FilterLayoutItem1: TdxLayoutItem;
    edit_depot_to: TcxDBLookupComboBox;
    FilterLayoutItem2: TdxLayoutItem;
    SummLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    edit_comments: TcxDBTextEdit;
    FilterLayoutItem3: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    SummLayoutItem1: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    SummLayoutItem2: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    SummLayoutItem3: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    SummLayoutItem4: TdxLayoutItem;
    dxBarButton3: TdxBarButton;
    procedure TB_MovesDblClick(Sender: TObject);
    procedure TB_MovesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit1Exit(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure edit_depotPropertiesCloseUp(Sender: TObject);
    procedure edit_commentsExit(Sender: TObject);
    procedure TB_MovesColumns2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
  private
    procedure SetRecord;
  public
    { Public declarations }
  end;

var
  MovesForm: TMovesForm;

implementation

uses DataConteiner, SelectGood, MainUnit, SystemContainerUnit,
  QueryDataContainer, HistoryUnit, ItemEditor, LimitDateUnit, ProgressUnit;

{$R *.dfm}

procedure TMovesForm.SetRecord;
begin
  SelectGoodForm.ShowModal;
  if SelectGoodForm.SelectedID <> -1 then
    With Data.DS_Moves do
    begin
      Edit;
      FieldValues['GOOD_ID'] := SelectGoodForm.SelectedID;
      if (Data.GetItemUnits(SelectGoodForm.SelectedID) = 0) and
          not VarIsNull(FieldValues['CNT']) then
        FieldValues['CNT'] := SysContainer.StandartIntRound(FieldValues['CNT']);
      Refresh;
    end;
end;

procedure TMovesForm.TB_MovesColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if VarIsNull(Value) or (Value='') then exit;
  UseText := false;
  if Data.DS_Moves.FBN('UNIT_ID').AsInteger = 0
    then Value := SysContainer.StandartIntRound(Value)
    else Value := SysContainer.StandartRound(Value);
end;

procedure TMovesForm.TB_MovesDblClick(Sender: TObject);
begin
  if (FilterLayout.Enabled) and (TB_Moves.SelectedField.FieldName = 'NAME') then
    SetRecord;
end;

procedure TMovesForm.TB_MovesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (TB_Moves.SelectedIndex = 0) and (Key = VK_RETURN) and
    (FilterLayout.Enabled) then
    SetRecord;
end;

procedure TMovesForm.FormShow(Sender: TObject);
begin
  MainForm.event_locked := true;
  TB_Moves.SetFocus;
  Screen.Cursor := crAppStart;
  Query.DS_Select.ReopenLocate('ID');
  Data.SetUserActivity(MV);
  Screen.Cursor := crDefault;
end;

procedure TMovesForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
begin
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('MovesForm', 'Top', 0);
  Left := I.ReadInteger('MovesForm', 'Left', 0);
  Width := I.ReadInteger('MovesForm', 'Width', 640);
  Height := I.ReadInteger('MovesForm', 'Height', 480);
  I.Free;
end;

procedure TMovesForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Visible and MainForm.ProgStarted then
    TB_Moves.SetFocus;
end;

procedure TMovesForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  case Msg.CharCode of
    VK_F1:
      MainForm.act_moves_itemcard.Execute;
    VK_F4:
      MainForm.act_moves_history.Execute;
    VK_F5, VK_ESCAPE:
      Close;
    VK_F6:
      MainForm.act_moves_shopcard.Execute;
  end;
end;

procedure TMovesForm.cxDBTextEdit1Exit(Sender: TObject);
begin
  if (Data.DS_Moves_N.State = dsEdit) and MainForm.ProgStarted then
    Data.DS_Moves_N.Refresh;
end;

procedure TMovesForm.dxBarButton3Click(Sender: TObject);
var
  depot_id: integer;
  good_id: integer;
  good_count: integer;
  l_date: TDate;
  r_date: integer;
  gd: string;
  v: variant;
begin
  if LimitDateForm.ShowModal <> mrOK then
    exit;

  l_date := LimitDateForm.LimitDate.Date;
  with Data.DS_Goods do
  begin
    DisableControls;
    Data.DS_Moves.DisableControls;
    Data.DS_Moves_N.DisableControls;
    depot_id := Data.DS_Moves_N.FBN('DEPOT_FROM_ID').AsInteger;
    Filter := '(C' + inttostr(depot_id) + ' <> 0)';
    if not LimitDateForm.check_cosm.Checked then
      Filter := Filter + ' AND (TYPE_ID <> 15)';
    Filtered := true;
    Last;
    First;
    ProgressForm.Caption := 'Создание переходной накладной';
    ProgressForm.ProgressBar.Max := VisibleRecordCount;
    ProgressForm.ProgressBar.Position := 0;
    ProgressForm.Show;
    while not eof do
    begin
      good_id := FBN('ID').AsInteger;
      gd := inttostr(good_id);
      v := Database.QueryValue
        ('SELECT MAX(M_DATE) FROM DEPOT_MOVES_N, DEPOT_MOVES WHERE (DEPOT_MOVES.GOOD_ID='
        + gd + ') AND (DEPOT_MOVES.NAKL_ID = DEPOT_MOVES_N.ID) AND (DEPOT_MOVES_N.DEPOT_TO_ID = '
        + inttostr(depot_id) + ')', 0);
      if not VarIsNull(v) then
      begin
        r_date := v;
        if r_date <= l_date then
        begin
          Data.DS_Moves.Append;
          Data.DS_Moves.FBN('GOOD_ID').AsInteger := good_id;
          Data.DS_Moves.FBN('CNT').AsFloat := FBN('C' + inttostr(depot_id))
            .AsFloat;
          Data.DS_Moves.Post;
        end;
      end;
      Next;
      ProgressForm.ProgressBar.StepIt;
      ProgressForm.lbl1.Caption := 'Позиция ' +
        inttostr(ProgressForm.ProgressBar.Position) + ' из ' +
        inttostr(ProgressForm.ProgressBar.Max);
      Application.ProcessMessages;
    end;
    ProgressForm.Close;
    Data.DS_Moves_N.EnableControls;
    Data.DS_Moves.EnableControls;
    EnableControls;
  end;
end;

procedure TMovesForm.edit_commentsExit(Sender: TObject);
begin
  if Data.DS_Moves_N.State = dsEdit then
    Data.DS_Moves_N.Post;
  Data.DS_Moves_N.ReopenLocate('id');
  TB_Moves.SetFocus;
end;

procedure TMovesForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    TB_Moves.SetFocus;
end;

procedure TMovesForm.edit_depotPropertiesCloseUp(Sender: TObject);
begin
  if Data.DS_Moves_N.State = dsEdit then
    Data.DS_Moves_N.Post;
  Data.DS_Moves_N.ReopenLocate('id');
  TB_Moves.SetFocus;
end;

procedure TMovesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.ClearUserActivity;
  MainForm.event_locked := false;
end;

end.
