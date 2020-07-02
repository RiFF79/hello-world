unit BannedItemsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEh, StdCtrls, DBGridEhGrouping, GridsEh, db,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, dxBar,
  cxBarEditItem, cxClasses, cxButtonEdit, dxBarExtItems, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinSilver, EhLibVCL, DBAxisGridsEh;

type
  TBannedItemsForm = class(TForm)
    TB_Banned: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_delete: TdxBarButton;
    edit_client: TdxBarCombo;
    btn_reset_client: TdxBarButton;
    edit_filter: TdxBarEdit;
    procedure btn_DeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edit_clientChange(Sender: TObject);
    procedure btn_reset_clientClick(Sender: TObject);
    procedure edit_clientCloseUp(Sender: TObject);
    procedure cxBarEditItem3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BannedItemsForm: TBannedItemsForm;

implementation

uses
  DataConteiner, SystemContainerUnit;

{$R *.dfm}

procedure TBannedItemsForm.btn_DeleteClick(Sender: TObject);
begin
  Data.DS_Banned.Delete;
end;

procedure TBannedItemsForm.FormShow(Sender: TObject);
var
  sp: TBookmark;
begin
  edit_client.Items.Clear;
  Data.DS_ImportPrice.DisableControls;
  sp := Data.DS_ImportPrice.GetBookmark;
  with Data.DS_ImportPrice do
  begin
    First;
    while not eof do
    begin
      edit_client.Items.Add(FieldValues['SUPPL_NAME']);
      Next;
    end;
  end;
  Data.DS_ImportPrice.GotoBookmark(sp);
  Data.DS_ImportPrice.FreeBookmark(sp);
  Data.DS_ImportPrice.EnableControls;
  edit_client.Text := '';
  edit_clientChange(Self);
end;

procedure TBannedItemsForm.btn_reset_clientClick(Sender: TObject);
begin
  edit_client.Text := '';
end;

procedure TBannedItemsForm.cxBarEditItem3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  edit_clientChange(Self);
end;

procedure TBannedItemsForm.edit_clientChange(Sender: TObject);
var
  s: string;
  p: string;
begin
  caption := edit_client.Text;
  if edit_client.Text = '' then
    Data.DS_Banned.Filter := ''
  else
    Data.DS_Banned.Filter := '(SUPPL_ID=' +
      IntToStr(edit_client.ItemIndex + 1) + ')';
  if edit_filter.CurText <> '' then
  begin
    s := '';
    if Data.DS_Banned.Filter <> '' then
      s := ' AND ';
    Data.DS_Banned.Filter := Data.DS_Banned.Filter + s + '(FULLNAME LIKE ''%' +
      edit_filter.CurText + '%'')';
  end;
end;

procedure TBannedItemsForm.edit_clientCloseUp(Sender: TObject);
begin
  TB_Banned.SetFocus;
end;

end.
