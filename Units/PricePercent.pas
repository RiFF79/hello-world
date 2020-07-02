unit PricePercent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrlsEh, DB;

type
  TPricePercentForm = class(TForm)
    Label1: TLabel;
    edit_generalprice: TDBNumberEditEh;
    edit_specprice: TDBNumberEditEh;
    Label2: TLabel;
    btn_OK: TBitBtn;
    btn_Cancel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure edit_generalpriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_specpriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PricePercentForm: TPricePercentForm;

implementation

uses
  DataConteiner;

{$R *.dfm}

procedure TPricePercentForm.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
end;

procedure TPricePercentForm.edit_generalpriceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edit_specprice.SetFocus;
end;

procedure TPricePercentForm.edit_specpriceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btn_OK.SetFocus;
    btn_OK.Click;
  end;
end;

procedure TPricePercentForm.FormShow(Sender: TObject);
begin
  edit_generalprice.SetFocus;
end;

end.
