unit DiscountsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, GridsEh, DBGridEh,
  dxSkinsCore, dxSkinDarkSide, dxSkinsdxBarPainter, dxBar, cxClasses,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinDevExpressStyle,
  dxSkinSilver, EhLibVCL, DBAxisGridsEh;

type
  TDiscountsForm = class(TForm)
    TB_Discounts: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    but_add: TdxBarButton;
    but_delete: TdxBarButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiscountsForm: TDiscountsForm;

implementation

{$R *.dfm}

uses DataConteiner, SystemContainerUnit;

end.
