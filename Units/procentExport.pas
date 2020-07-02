unit procentExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxSpinEdit, dxSkinscxPCPainter,
  dxLayoutcxEditAdapters, cxCheckListBox, cxGroupBox, cxRadioGroup,
  dxLayoutContainer, dxLayoutControl, cxCheckBox;

type
  TProcentForm = class(TForm)
    btn_OK: TButton;
    btn_Cancel: TButton;
    edit_prc: TcxSpinEdit;
    c_Skidka: TcxCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure c_SkidkaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProcentForm: TProcentForm;

implementation

{$R *.dfm}

procedure TProcentForm.c_SkidkaClick(Sender: TObject);
begin
  if c_Skidka.Checked then
    edit_prc.Enabled := true
  else
    edit_prc.Enabled := false;

end;

procedure TProcentForm.FormActivate(Sender: TObject);
begin
  c_SkidkaClick(Self);
end;

end.
