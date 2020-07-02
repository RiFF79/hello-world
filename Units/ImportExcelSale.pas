unit ImportExcelSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Spin, DB,
  EXLReport, ExtCtrls, Vcl.Menus,DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinSilver, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  cxButtons;

type
  TIntArray = array of Integer;
  TImportExcelSaleForm = class(TForm)
    Label1: TLabel;
    btn_ok: TcxButton;
    btn_cancel: TcxButton;
    price_selector: TcxRadioGroup;
    TB_SaleImportDepots: TDBGridEh;
    Label4: TLabel;
    Label5: TLabel;
    UpDown: TSpinButton;
    procedure UpDownUpClick(Sender: TObject);
    procedure UpDownDownClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Move(value: integer);
  public
    { Public declarations }
  end;

var
  ImportExcelSaleForm: TImportExcelSaleForm;

implementation

uses Settings, DataConteiner;

{$R *.dfm}
procedure TImportExcelSaleForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Data.DS_SaleImportDepots.State = dsEdit then Data.DS_SaleImportDepots.Post;  
end;

procedure TImportExcelSaleForm.Move(value: integer);
var
  curPos: integer;
  curID: integer;
  nextPos: integer;
  nextID: integer;
begin
  with Data.DS_SaleImportDepots do
    begin
      DisableControls;
      curPos := FBN('SALE_IMPORT_PRIORITY').AsInteger;
      curID := FBN('ID').AsInteger;
      if Value > 0 then Prior else Next;
      nextPos := FBN('SALE_IMPORT_PRIORITY').AsInteger;
      nextID := FBN('ID').AsInteger;
      if curID <> nextID then
        begin
         Edit;
         FBN('SALE_IMPORT_PRIORITY').AsInteger := curPos;
         Post;
         if Value > 0 then Next else Prior;
         Edit;
         FBN('SALE_IMPORT_PRIORITY').AsInteger := nextPos;
         Post;
         CloseOpen(true);
        end;
      Locate('ID', curID, []);
      EnableControls;
    end;
end;

procedure TImportExcelSaleForm.UpDownDownClick(Sender: TObject);
begin
  Move(-1);
end;

procedure TImportExcelSaleForm.UpDownUpClick(Sender: TObject);
begin
  Move(1);
end;

end.
