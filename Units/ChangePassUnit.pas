unit ChangePassUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
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
  Menus, cxCheckBox, StdCtrls, cxButtons, cxLabel, cxTextEdit,
  dxGDIPlusClasses, cxImage, cxDBLabel;

type
  TChangePassForm = class(TForm)
    edit_oldpass: TcxTextEdit;
    edit_newpass: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edit_newpass2: TcxTextEdit;
    cxLabel3: TcxLabel;
    btn_cancel: TcxButton;
    btn_ok: TcxButton;
    check_showpass: TcxCheckBox;
    img_logo: TcxImage;
    lbl_wrongoldpass: TcxLabel;
    lbl_wrongnewpass: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    procedure edit_oldpassPropertiesChange(Sender: TObject);
    procedure edit_newpassPropertiesChange(Sender: TObject);
    procedure check_showpassPropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePassForm: TChangePassForm;

implementation

uses
  MainUnit, DataConteiner;

{$R *.dfm}

procedure TChangePassForm.edit_oldpassPropertiesChange(Sender: TObject);
begin
  lbl_wrongoldpass.Visible := false;
end;

procedure TChangePassForm.edit_newpassPropertiesChange(Sender: TObject);
begin
  lbl_wrongnewpass.Visible := false;
end;

procedure TChangePassForm.check_showpassPropertiesChange(Sender: TObject);
begin
  if check_showpass.Checked then
  begin
    edit_oldpass.Properties.EchoMode := eemNormal;
    edit_newpass.Properties.EchoMode := eemNormal;
    edit_newpass2.Properties.EchoMode := eemNormal;
  end
  else
  begin
    edit_oldpass.Properties.EchoMode := eemPassword;
    edit_newpass.Properties.EchoMode := eemPassword;
    edit_newpass2.Properties.EchoMode := eemPassword;
  end;
  edit_oldpass.SetFocus;
end;

procedure TChangePassForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult <> mrOK then
    exit;
  if edit_oldpass.Text <> Data.DS_Users.FBN('USERPASSWORD').AsString then
  begin
    lbl_wrongoldpass.Visible := true;
    CanClose := false;
    edit_oldpass.SetFocus;
    exit;
  end;

  if (edit_newpass.Text = '') or (edit_newpass2.Text = '') or
    (edit_newpass.Text <> edit_newpass2.Text) then
  begin
    lbl_wrongnewpass.Visible := true;
    CanClose := false;
    edit_newpass.SetFocus;
    exit;
  end;

  if MessageBox(Application.Handle, 'Сохранить новый пароль?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    Data.DS_Users.Edit;
    Data.DS_Users.FBN('USERPASSWORD').AsString := edit_newpass.Text;
    Data.DS_Users.Post;
  end
  else
    CanClose := false;
end;

procedure TChangePassForm.FormShow(Sender: TObject);
begin
  check_showpass.Checked := false;
  edit_oldpass.SetFocus;
end;

end.
