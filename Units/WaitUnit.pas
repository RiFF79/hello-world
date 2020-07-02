unit WaitUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxBevel, dxSkinsCore,
  dxSkinDarkSide, dxSkinDevExpressStyle, dxSkinSilver;

type
  TWaitForm = class(TForm)
    dxBevel1: TdxBevel;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateProductBalances;
  end;

var
  WaitForm: TWaitForm;

implementation

{$R *.dfm}

uses DataConteiner;

procedure TWaitForm.UpdateProductBalances;
var
  cur: TCursor;
begin
  cur := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Show;
  Application.ProcessMessages;
  try
    Data.Database.Execute('EXECUTE PROCEDURE UPDATE_PRODUCT_BALANCES');
    Data.DS_Goods.ReopenLocate('ID');
  finally
    Screen.Cursor := cur;
    Close;
  end;
end;

end.
