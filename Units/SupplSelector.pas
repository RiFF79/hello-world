unit SupplSelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDarkSide, cxContainer, cxEdit,
  cxCheckListBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox,
  dxSkinDevExpressStyle, dxSkinSilver, cxCustomListBox;

type
  TSelectSupplForm = class(TForm)
    cg_Suppliers: TcxCheckListBox;
    btn_OK: TcxButton;
    btn_Cancel: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectSupplForm: TSelectSupplForm;

implementation

{$R *.dfm}

end.
