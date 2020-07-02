unit CursEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, cxDBEdit, cxLabel, dxSkinsCore, dxSkinDarkSide,
  dxSkinDevExpressStyle, dxSkinSilver, Vcl.StdCtrls, Vcl.Menus, cxButtons,
  cxDBLabel, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TCursForm = class(TForm)
    edit_curs: TcxDBCurrencyEdit;
    Label1: TLabel;
    okBtn: TcxButton;
    cancelBtn: TcxButton;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CursForm: TCursForm;

implementation

{$R *.dfm}

uses DataConteiner;

end.
