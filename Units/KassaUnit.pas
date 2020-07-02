unit KassaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DBCtrlsEh, StdCtrls, Mask, DBLookupEh, DB, DBCtrls,
  ExtCtrls, Math, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit,
  cxDBLabel, cxLabel, cxCheckBox, cxDBEdit, cxButtons, cxTextEdit,
  cxCurrencyEdit, dxBevel, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxImageComboBox;

type
  TKassaForm = class(TForm)
    btn_MakeChanges: TcxButton;
    btn_OK: TcxButton;
    btn_Cancel: TcxButton;
    check_in_use: TcxDBCheckBox;
    label_Dolg: TcxLabel;
    check_cashout: TcxDBCheckBox;
    edit_SUMM_USD: TcxDBCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    dxBevel1: TdxBevel;
    dxBevel2: TdxBevel;
    edit_date: TcxDBDateEdit;
    edit_NAKL_SUMM: TcxDBCurrencyEdit;
    edit_comments: TcxDBComboBox;
    edit_client: TcxDBImageComboBox;
    cxLabel10: TcxLabel;
    edit_paid: TcxCurrencyEdit;
    label_olddolg: TcxLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure edit_commentsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_SUMM_USDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edit_SUMM_USDChange(Sender: TObject);
    procedure btn_MakeChangesClick(Sender: TObject);
    procedure edit_clientCloseUp(Sender: TObject; Accept: Boolean);
    procedure edit_clientChange(Sender: TObject);
    procedure cxDBDateEdit1PropertiesCloseUp(Sender: TObject);
    procedure edit_clientPropertiesCloseUp(Sender: TObject);
    procedure edit_clientPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    client_dolg: real;
    client_id: variant;
    paid_this_bill: real;
    procedure UpdateDolg;
  public
    { Public declarations }
    active_control: set of (summ, client);
    econtrol: Boolean;
    canchange: Boolean;
    new_paid: boolean;
  end;

var
  KassaForm: TKassaForm;

implementation

uses
  DataConteiner, MainUnit, QueryDataContainer, SystemContainerUnit;

{$R *.dfm}

procedure TKassaForm.edit_commentsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edit_SUMM_USD.SetFocus;
end;

procedure TKassaForm.edit_SUMM_USDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_OK.Click;
end;

procedure TKassaForm.FormShow(Sender: TObject);
begin
  if econtrol then
  begin
    btn_MakeChangesClick(Self);
    if active_control = [summ] then
    begin
      edit_SUMM_USD.SetFocus;
      edit_SUMM_USD.SelectAll;
    end
    else
    begin
      Data.DS_KASSA.FieldByName('CLIENT_ID').AsInteger :=
        Data.DS_Defaults.FieldByName('CUSTOMER').AsInteger;
      edit_client.SetFocus;
    end;
  edit_SUMM_USDChange(Self);
  end
  else
  begin
    check_in_use.Enabled := False;
    check_cashout.Enabled := False;
    edit_client.Enabled := False;
    edit_date.Enabled := False;
    edit_NAKL_SUMM.Enabled := False;
    edit_comments.Enabled := False;
    edit_SUMM_USD.Enabled := False;
    edit_paid.Enabled := False;
    btn_MakeChanges.Enabled := canchange;
  end;

  if new_paid
    then paid_this_bill := 0
    else paid_this_bill := edit_SUMM_USD.Value;
  client_id := Data.DS_KASSA['CLIENT_ID'];
  client_dolg := MainForm.GetDolg(client_id, Now);
  label_olddolg.Caption := floattostrF(client_dolg, ffFixed, 20, 2);
  UpdateDolg;
  edit_SUMM_USDChange(Self);
end;

procedure TKassaForm.UpdateDolg;

begin
  if VarIsNull(client_id) then
    label_Dolg.Caption := ''
  else
    label_Dolg.Caption := floattostrF(client_dolg + paid_this_bill,
      ffFixed, 20, 2);
end;

procedure TKassaForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  sp: TBookmark;
begin
  if btn_MakeChanges.Enabled then
    Exit;
  if ModalResult = mrOK then
    if (Data.DS_KASSA['CURS'] <> null) and (Data.DS_KASSA['CURS'] <> 0) then
    begin
      Data.DS_KASSA.Post;
      sp := Data.DS_KASSA.GetBookmark;
      MainForm.SetKassaFilter;
      {
        try
        Data.DS_KASSA.GotoBookmark(sp);
        finally
        Data.DS_KASSA.FreeBookmark(sp);
        end;
      }
    end
    else
    begin
      CanClose := False;
      edit_SUMM_USDChange(Self);
      MessageBox(Application.Handle, 'Не заполнены обязательные поля!',
        PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
      if Data.DS_KASSA['CLIENT_ID'] = null then
        edit_client.SetFocus
      else
        edit_SUMM_USD.SetFocus;
    end
  else
    Data.DS_KASSA.Cancel;
end;

procedure TKassaForm.edit_SUMM_USDChange(Sender: TObject);
var
  s_usd: variant;
  s_dolg: variant;
begin
  if not KassaForm.Visible then
    Exit;
  if ((Data.DS_KASSA.State = dsEdit) or (Data.DS_KASSA.State = dsInsert)) and
    (Visible = true) then
  begin
    s_usd := edit_SUMM_USD.Value;
    if VarIsNull(s_usd) then s_usd := 0;
    label_Dolg.Caption := floatToStrF(client_dolg + paid_this_bill - s_usd, ffFixed, 20, 2);
    Data.DS_KASSA.FBN('SUMM').AsFloat := -1 * s_usd;
  end;
end;

procedure TKassaForm.btn_MakeChangesClick(Sender: TObject);
begin
  check_in_use.Enabled := true;
  check_cashout.Enabled := true;
  edit_client.Enabled := true;
  edit_date.Enabled := true;
  edit_NAKL_SUMM.Enabled := true;
  edit_paid.Enabled := true;
  edit_comments.Enabled := true;
  edit_SUMM_USD.Enabled := true;
  btn_MakeChanges.Enabled := False;
end;

procedure TKassaForm.edit_clientCloseUp(Sender: TObject; Accept: Boolean);
begin
  edit_SUMM_USD.SetFocus;
end;

procedure TKassaForm.edit_clientPropertiesChange(Sender: TObject);
begin
  if not KassaForm.Visible then
    Exit;
  if MainForm.ProgStarted then
    UpdateDolg;
end;

procedure TKassaForm.edit_clientPropertiesCloseUp(Sender: TObject);
begin
  edit_SUMM_USD.SetFocus;
end;


procedure TKassaForm.cxDBDateEdit1PropertiesCloseUp(Sender: TObject);
begin
  edit_SUMM_USD.SetFocus;
end;

procedure TKassaForm.edit_clientChange(Sender: TObject);
begin
  if not KassaForm.Visible then
    Exit;
  if MainForm.ProgStarted then
    UpdateDolg;
end;

end.
