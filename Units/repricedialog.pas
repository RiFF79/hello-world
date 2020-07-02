unit repricedialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinDarkSide,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxSpinEdit, dxSkinDevExpressStyle, dxSkinSilver;

type
  TRepriceForm = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    GroupBox1: TGroupBox;
    perc_mini_general_edit: TcxSpinEdit;
    perc_mini_special_edit: TcxSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    GrBox2: TGroupBox;
    perc_other_general_edit: TcxSpinEdit;
    perc_other_special_edit: TcxSpinEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    GroupBox2: TGroupBox;
    perc_vial_general_edit: TcxSpinEdit;
    perc_vial_special_edit: TcxSpinEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepriceForm: TRepriceForm;

implementation

{$R *.dfm}

end.
