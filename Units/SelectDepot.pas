unit SelectDepot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DBGridEh, DBCtrlsEh,
  GridsEh, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TMoneyInDepotsForm = class(TForm)
    TB_Depots: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    label_spec: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    label_general: TLabel;
    label_shop1: TLabel;
    label_shop2: TLabel;
    procedure TB_DepotsColumnsGetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    prices: array [1 .. 4, 0 .. 20] of real;
  end;

var
  MoneyInDepotsForm: TMoneyInDepotsForm;

implementation

uses QueryDataContainer;

{$R *.dfm}

procedure TMoneyInDepotsForm.TB_DepotsColumnsGetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if (Params.Col > 0) and (Params.Col < 5) then
    Params.Text := floattostrF(prices[Params.Col,
      Query.DS_Depots.FieldByName('ID').AsInteger], ffFixed, 20, 2);
end;

procedure TMoneyInDepotsForm.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if Msg.CharCode = VK_ESCAPE then
  begin
    ModalResult := mrCancel;
    Close;
  end;
end;

procedure TMoneyInDepotsForm.FormShow(Sender: TObject);

  function GetSum(index: integer): real;
  var
    i: integer;
  begin
    result := 0;
    for i := 0 to 20 do
      result := result + prices[index, i];
  end;

begin
  label_spec.Caption := floattostrF(GetSum(1), ffFixed, 20, 2);
  label_general.Caption := floattostrF(GetSum(2), ffFixed, 20, 2);
  label_shop1.Caption := floattostrF(GetSum(3), ffFixed, 20, 2);
  label_shop2.Caption := floattostrF(GetSum(4), ffFixed, 20, 2);
end;

end.
