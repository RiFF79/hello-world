unit LimitDateUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDarkSide, cxStyles,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  Vcl.StdCtrls, cxContainer, cxDateNavigator, Vcl.Menus, cxButtons,
  dxSkinDevExpressStyle, dxSkinSilver;

type
  TLimitDateForm = class(TForm)
    LimitDate: TcxDateNavigator;
    Label1: TLabel;
    Label2: TLabel;
    btn_OK: TcxButton;
    btn_Cancel: TcxButton;
    check_cosm: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LimitDateForm: TLimitDateForm;

implementation

{$R *.dfm}

end.
