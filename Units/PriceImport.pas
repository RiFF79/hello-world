unit PriceImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, GridsEh, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TPriceImportForm = class(TForm)
    Label1: TLabel;
    TB_ImportPrices: TDBGridEh;
    btn_Cancel: TButton;
    btn_OK: TButton;
    check_ClearData: TCheckBox;
    procedure TB_ImportPricesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PriceImportForm: TPriceImportForm;

implementation

{$R *.dfm}

procedure TPriceImportForm.TB_ImportPricesDblClick(Sender: TObject);
begin
  btn_OK.Click;
end;

end.
