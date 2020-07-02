unit ClientCardUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, StdCtrls, Mask, ExtCtrls, DB, DBGridEh, DBLookupEh,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl, cxCurrencyEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxCheckBox,
  cxMemo, Vcl.Menus, cxButtons, dxSkinsCore, dxSkinDarkSide, dxSkinscxPCPainter,
  dxLayoutControlAdapters, cxLabel, cxDBLabel, dxSkinDevExpressStyle,
  dxSkinSilver, cxClasses;

type
  TClientCardForm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edit_clientgroup: TcxDBImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    edit_name: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edit_printname: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edit_price: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    edit_credit: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edit_delay: TcxDBSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    edit_tel1: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edit_tel2: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    edit_tel3: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edit_emailgroup: TcxDBImageComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    edit_emails: TcxDBMemo;
    dxLayoutControl1Item13: TdxLayoutItem;
    check_activeclients: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    check_useindolg: TcxDBCheckBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    check_remind: TcxDBCheckBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1SpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutControl1SpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btn_OK: TcxButton;
    btn_Cancel: TcxButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    edit_discount: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    but_Discounts: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit2PropertiesChange(Sender: TObject);
    procedure but_DiscountsClick(Sender: TObject);
  private
    { Private declarations }
    new_name: Boolean;
  public
    { Public declarations }
  end;

var
  ClientCardForm: TClientCardForm;

implementation

uses
  DataConteiner, SystemContainerUnit, DiscountsUnit, QueryDataContainer;

{$R *.dfm}

procedure TClientCardForm.FormShow(Sender: TObject);
begin
  // Data.DS_Customers.Edit;
  if edit_printname.Text = edit_name.Text then
    new_name := true
  else
    new_name := false;
end;

procedure TClientCardForm.but_DiscountsClick(Sender: TObject);
begin
  DiscountsForm.ShowModal;
end;

procedure TClientCardForm.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  if (Data.DS_Customers.State = dsEdit) and new_name then
    edit_printname.Text := edit_name.Text;
end;

procedure TClientCardForm.cxDBTextEdit2PropertiesChange(Sender: TObject);
begin
  if edit_printname.Focused then
    new_name := false;
end;

procedure TClientCardForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult = mrOK then
  begin
    if Data.DS_Customers.State in [dsEdit, dsInsert] then
    begin
      Data.DS_Customers.Post;
      Data.DS_Customers.ReopenLocate('ID');
      Query.DS_QueryClientsList.ReopenLocate('ID');
    end;
  end
  else
    Data.DS_Customers.Cancel;
end;

end.
