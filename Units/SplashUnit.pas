unit SplashUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Vcl.StdCtrls, dxGDIPlusClasses;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    text: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

end.
