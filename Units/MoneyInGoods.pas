unit MoneyInGoods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TMoneyInGoodsForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gen_price: TLabel;
    spec_price: TLabel;
    shop_price: TLabel;
    ProgressBar: TProgressBar;
    btn_Cancel: TButton;
    procedure btn_CancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    f_cancel: Boolean;
  end;

var
  MoneyInGoodsForm: TMoneyInGoodsForm;

implementation

{$R *.dfm}

procedure TMoneyInGoodsForm.btn_CancelClick(Sender: TObject);
begin
  if btn_Cancel.Caption = 'Отмена' then
    f_cancel := true
  else
    close;
end;

procedure TMoneyInGoodsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := false;
  if f_cancel then
    CanClose := true
  else
    f_cancel := true;
end;

end.
