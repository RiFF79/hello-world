unit ContractorsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, cxDBEdit, cxLabel;

type
  TCursForm = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    edit_curs: TcxDBCurrencyEdit;
    procedure FormDeactivate(Sender: TObject);
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

procedure TCursForm.FormDeactivate(Sender: TObject);
begin
  Close;
end;

end.
