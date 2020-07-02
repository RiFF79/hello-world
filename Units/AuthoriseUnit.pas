unit AuthoriseUnit;

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
  cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, StdCtrls, cxButtons,
  dxGDIPlusClasses, cxImage, cxCheckBox, DBGridEhGrouping, GridsEh,
  DBGridEh;

type
  TAuthoriseForm = class(TForm)
    lbl_user: TcxLabel;
    lbl_pass: TcxLabel;
    edit_pass: TcxTextEdit;
    img_logo: TcxImage;
    btn_Enter: TcxButton;
    check_pass: TcxCheckBox;
    btn_Cancel: TcxButton;
    edit_user: TcxLookupComboBox;
    lbl_wrongpass: TcxLabel;
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edit_passPropertiesChange(Sender: TObject);
    procedure edit_userPropertiesCloseUp(Sender: TObject);
    procedure edit_userPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuthoriseForm: TAuthoriseForm;

implementation

uses
  DataConteiner, MainUnit, Settings;

{$R *.dfm}

procedure TAuthoriseForm.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  if check_pass.Checked then
    edit_pass.Properties.EchoMode := eemNormal
  else
    edit_pass.Properties.EchoMode := eemPassword;
  edit_pass.SetFocus;
end;

procedure TAuthoriseForm.FormShow(Sender: TObject);
begin
  Data.DS_Users.Locate('ID', MainForm.user_id, []);
  edit_user.Text := Data.DS_Users.fbn('USERNAME').AsString;
  edit_pass.SetFocus;
end;

procedure TAuthoriseForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult <> mrOK then
    exit;

  Data.DS_Users.Locate('USERNAME', edit_user.Text, []);
  if Data.DS_Users.fbn('USERPASSWORD').AsString = edit_pass.Text then
    MainForm.user_id := Data.DS_Users.fbn('ID').AsInteger
  else
  begin
    PlayBeep(mtError);
    lbl_wrongpass.Visible := true;
    edit_pass.SetFocus;
    edit_pass.SelectAll;
    CanClose := false;
  end;
end;

procedure TAuthoriseForm.edit_passPropertiesChange(Sender: TObject);
begin
  lbl_wrongpass.Visible := false;
end;

procedure TAuthoriseForm.edit_userPropertiesChange(Sender: TObject);
begin
  edit_pass.Clear;
end;

procedure TAuthoriseForm.edit_userPropertiesCloseUp(Sender: TObject);
begin
  edit_pass.SetFocus;
end;

end.
