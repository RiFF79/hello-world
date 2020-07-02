unit DeptReasonSelectUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxButtons, cxTextEdit,
  dxSkinsCore, dxSkinDarkSide, dxSkinDevExpressStyle, dxSkinSilver;

type
  TDebtReasonSelectForm = class(TForm)
    Label1: TLabel;
    CommentsEdit: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DebtReasonSelectForm: TDebtReasonSelectForm;

implementation

{$R *.dfm}

procedure TDebtReasonSelectForm.FormShow(Sender: TObject);
begin
  Caption := Application.Title;
  CommentsEdit.SelectAll;
end;

end.
