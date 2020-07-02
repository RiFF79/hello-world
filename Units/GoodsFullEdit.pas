unit GoodsFullEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEh, StdCtrls, Mask, DB,
  GridsEh, DBGridEhGrouping, cxGraphics, cxControls, cxLookAndFeels,
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
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TGoodsFullEditForm = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboEdit1: TcxButtonEdit;
    edit_field: TcxTextEdit;
    edit_value: TcxTextEdit;
    cxButton1: TcxButton;
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    function IsInteger(txt: string): Boolean;
    function IsFloat(txt: string): Boolean;
  public
    { Public declarations }
  end;

var
  GoodsFullEditForm: TGoodsFullEditForm;

implementation

uses
  DataConteiner, MainUnit, ItemEditor;

{$R *.dfm}

procedure TGoodsFullEditForm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    ItemEditorForm.EnControl := true;
    ItemEditorForm.ShowModal;
  end;
  if Key = VK_F6 then
    MainForm.act_price_shop_edit.Execute;

end;

procedure TGoodsFullEditForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    Data.DS_Goods.Filtered := true
  else
    Data.DS_Goods.Filtered := False;
end;

procedure TGoodsFullEditForm.FormShow(Sender: TObject);
begin
  Data.DS_Goods.Filter := '';
  Data.DS_Goods.Filtered := False;
end;

function TGoodsFullEditForm.IsInteger(txt: string): Boolean;
var
  v: Integer;
begin
  result := true;
  try
    v := StrToInt(txt);
  except
    result := False;
  end;
end;

function TGoodsFullEditForm.IsFloat(txt: string): Boolean;
var
  v: real;
begin
  result := true;
  try
    v := StrToFloat(txt);
  except
    result := False;
  end;
end;

procedure TGoodsFullEditForm.ComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    cxButtonEdit1PropertiesButtonClick(Self, 1);
end;

procedure TGoodsFullEditForm.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    Data.DS_Goods.Filter := ComboEdit1.Text;
    Data.DS_Goods.Filtered := true;
  except
    Data.DS_Goods.Filter := '';
    Data.DS_Goods.Filtered := False;
  end;
end;

procedure TGoodsFullEditForm.cxButton1Click(Sender: TObject);
begin
  if (edit_field.Text = '') or (edit_field.Text = '') then
  begin
    MessageBox(Application.Handle, 'Не указано поле или значение!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    Exit;
  end;

  if Data.DS_Goods.FindField(edit_field.Text) = nil then
  begin
    MessageBox(Application.Handle,
      PChar('Поле "' + edit_field.Text + '" не существует!'),
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    Exit;
  end;

  if (Data.DS_Goods.FieldByName(edit_field.Text).DataType = ftInteger) and
    (IsInteger(edit_value.Text) = False) then
  begin
    MessageBox(Application.Handle, 'Данные не соответствуют типу поля!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    Exit;
  end;

  if (Data.DS_Goods.FieldByName(edit_field.Text).DataType = ftFloat) and
    (IsFloat(edit_value.Text) = False) then
  begin
    MessageBox(Application.Handle, 'Данные не соответствуют типу поля!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    Exit;
  end;

  if MessageBox(Application.Handle, PChar('Заполнить поле "' + edit_field.Text +
    '" значением "' + edit_value.Text + '"?'), PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    with Data.DS_Goods do
    begin
      DisableControls;
      First;
      while not(Eof) do
      begin
        Edit;
        if FieldByName(edit_field.Text).DataType = ftInteger then
          FieldByName(edit_field.Text).AsInteger := StrToInt(edit_value.Text)
        else if FieldByName(edit_field.Text).DataType = ftFloat then
          FieldByName(edit_field.Text).AsFloat := StrToFloat(edit_value.Text)
        else if FieldByName(edit_field.Text).DataType = ftDate then
          FieldByName(edit_field.Text).AsDateTime :=
            StrToDateTime(edit_value.Text)
        else
          FieldByName(edit_field.Text).AsString := edit_value.Text;
        Post;
        // Next;
      end;
      EnableControls;
    end;
end;

end.
