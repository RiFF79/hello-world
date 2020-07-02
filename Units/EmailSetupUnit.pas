unit EmailSetupUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDarkSide, dxSkinsdxNavBarPainter,
  dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar, cxStyles, cxEdit,
  cxInplaceContainer, cxVGrid, cxContainer, dxSkinSilver, cxTextEdit,
  cxGroupBox,
  dxLayoutcxEditAdapters, cxLabel, dxLayoutContainer, cxMaskEdit, cxSpinEdit,
  dxLayoutControl, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox, EXLReport,
  cxCheckGroup, dxLayoutLookAndFeels, dxSkinDevExpressStyle, cxImage,
  SMTPSend, MIMEPart, MIMEMess, ssl_openssl, dxGDIPlusClasses;

type
  TEmailSetupForm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edit_parf: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edit_parf6: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edit_parf9: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edit_parf13: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    disc_parf6: TcxSpinEdit;
    dxLayoutItem5: TdxLayoutItem;
    disc_parf: TcxSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    disc_parf9: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    disc_parf13: TcxSpinEdit;
    dxLayoutItem8: TdxLayoutItem;
    email_parf6: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    email_parf: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    email_parf9: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    email_parf13: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    okButton: TcxButton;
    cancelBtn: TcxButton;
    edit_nisha: TcxTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    group_files: TdxLayoutGroup;
    group_discount: TdxLayoutGroup;
    group_emails: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    disc_nisha: TcxSpinEdit;
    use_parf_selective: TcxCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    use_parf13_selective: TcxCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    use_parf9_selective: TcxCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    use_parf6_selective: TcxCheckBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    use_parf13_kosm: TcxCheckBox;
    dxLayoutItem18: TdxLayoutItem;
    use_parf_nisha: TcxCheckBox;
    dxLayoutItem19: TdxLayoutItem;
    use_parf9_nisha: TcxCheckBox;
    dxLayoutItem20: TdxLayoutItem;
    use_parf9_kosm: TcxCheckBox;
    dxLayoutItem21: TdxLayoutItem;
    use_parf6_nisha: TcxCheckBox;
    dxLayoutItem22: TdxLayoutItem;
    use_parf13_nisha: TcxCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    use_parf6_kosm: TcxCheckBox;
    dxLayoutItem25: TdxLayoutItem;
    use_parf_kosm: TcxCheckBox;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    gmail_logo: TcxImage;
    dxLayoutItem31: TdxLayoutItem;
    edit_kosm: TcxTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    disc_kosm: TcxSpinEdit;
    dxLayoutItem33: TdxLayoutItem;
    ExcelBtn: TcxButton;
    use_file_parf: TcxCheckBox;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    use_file_parf6: TcxCheckBox;
    dxLayoutItem28: TdxLayoutItem;
    use_file_parf13: TcxCheckBox;
    dxLayoutItem29: TdxLayoutItem;
    use_file_parf9: TcxCheckBox;
    dxLayoutItem30: TdxLayoutItem;
    use_file_kosm: TcxCheckBox;
    dxLayoutItem34: TdxLayoutItem;
    use_file_nisha: TcxCheckBox;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure checksPropertiesChange(Sender: TObject);
    procedure use_file_PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function nisha_used: boolean;
    function kosm_used: boolean;
    function parf_used: boolean;
    function parf6_used: boolean;
    function parf9_used: boolean;
    function parf13_used: boolean;
  end;

var
  EmailSetupForm: TEmailSetupForm;

implementation

{$R *.dfm}

uses SystemContainerUnit, MainUnit, DataConteiner, Settings, mailingunit;

function TEmailSetupForm.parf_used: boolean;
begin
  Result := use_parf_selective.checked or use_parf_nisha.checked or
    use_parf_kosm.checked;
end;

procedure TEmailSetupForm.use_file_PropertiesChange(Sender: TObject);
begin
  ExcelBtn.Enabled := use_file_parf.checked or use_file_parf6.checked or
    use_file_parf9.checked or use_file_parf13.checked or
    use_file_nisha.checked or use_file_kosm.checked;
end;

function TEmailSetupForm.parf6_used: boolean;
begin
  Result := use_parf6_selective.checked or use_parf6_nisha.checked or
    use_parf6_kosm.checked;
end;

function TEmailSetupForm.parf9_used: boolean;
begin
  Result := use_parf9_selective.checked or use_parf9_nisha.checked or
    use_parf9_kosm.checked;
end;

function TEmailSetupForm.parf13_used: boolean;
begin
  Result := use_parf13_selective.checked or use_parf13_nisha.checked or
    use_parf13_kosm.checked;
end;

function TEmailSetupForm.nisha_used: boolean;
begin
  with EmailSetupForm do
    if use_parf_nisha.checked or use_parf6_nisha.checked or
      use_parf9_nisha.checked or use_parf13_nisha.checked then
      Result := true
    else
      Result := false;
end;

function TEmailSetupForm.kosm_used: boolean;
begin
  with EmailSetupForm do
    if use_parf_kosm.checked or use_parf6_kosm.checked or
      use_parf9_kosm.checked or use_parf13_kosm.checked then
      Result := true
    else
      Result := false;
end;

procedure TEmailSetupForm.checksPropertiesChange(Sender: TObject);
begin
  okButton.Enabled := use_parf_selective.checked or
    use_parf6_selective.checked or use_parf9_selective.checked or
    use_parf13_selective.checked or use_parf_nisha.checked or
    use_parf6_nisha.checked or use_parf9_nisha.checked or
    use_parf13_nisha.checked or use_parf_kosm.checked or
    use_parf6_kosm.checked or use_parf9_kosm.checked or use_parf13_kosm.checked;
end;

procedure TEmailSetupForm.FormShow(Sender: TObject);
begin
  TdxSmartImage(gmail_logo.Picture.Graphic).ActiveFrame := 10;
  TdxSmartImage(gmail_logo.Picture.Graphic).StartAnimation;
  if okButton.Enabled then
    ActiveControl := okButton;
end;

end.
