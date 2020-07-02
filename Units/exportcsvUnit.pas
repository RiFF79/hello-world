unit exportcsvUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinDarkSide,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxSpinEdit,
  dxSkinDevExpressStyle, dxSkinSilver;

type
  TExportToInternetForm = class(TForm)
    Label1: TLabel;
    edit_prc: TcxSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportToInternetForm: TExportToInternetForm;

implementation

{$R *.dfm}

end.
