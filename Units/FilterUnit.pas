// Типы фильтров:
// 0 - GoodsData

unit FilterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls,
  DBCtrlsEh, DB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinSilver, cxButtons;

type
  TFilterEditForm = class(TForm)
    FieldsList: TListBox;
    Label1: TLabel;
    Label3: TLabel;
    btn_Add: TSpeedButton;
    btn_Delete: TSpeedButton;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button31: TButton;
    FilterEdit: TDBEditEh;
    PresetNameEdit: TDBEditEh;
    btn_Close: TSpeedButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label5: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    procedure btn_DeleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FieldsListDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
  private
    { Private declarations }
    procedure InsertSymbol(S: string);
  public
    { Public declarations }
    FilterType: integer;
    procedure SetFilter(FType: integer);
  end;

var
  FilterEditForm: TFilterEditForm;

implementation

uses DataConteiner, MainUnit, SystemContainerUnit;

{$R *.dfm}

procedure TFilterEditForm.SetFilter(FType: integer);
begin
  case FType of
    0:
      FieldsList.Items.Assign(Data.DS_Goods.FieldList);
  end;
  FilterType := FType;
  Data.DS_Filters.Filtered := false;
  Data.DS_Filters.Filter := 'F_TYPE=' + inttostr(FType);
  Data.DS_Filters.Filtered := true;
  Data.DS_Filters.First;
end;

procedure TFilterEditForm.btn_DeleteClick(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Удалить пресет ?', PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) = IDOK

  then
  begin
    if Data.DS_Filters.RecordCount <> 0 then
      Data.DS_Filters.Delete;
  end;
end;

procedure TFilterEditForm.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFilterEditForm.InsertSymbol(S: String);
var
  p: string;
  a: integer;
begin
  a := FilterEdit.SelStart;
  p := FilterEdit.Text;
  p := copy(FilterEdit.Text, 0, FilterEdit.SelStart) + S +
    copy(FilterEdit.Text, FilterEdit.SelStart + 1, Length(FilterEdit.Text) -
    FilterEdit.SelStart);
  FilterEdit.Text := p;
  FilterEdit.SetFocus;
  FilterEdit.SelStart := a + Length(S);
end;

procedure TFilterEditForm.FieldsListDblClick(Sender: TObject);
begin
  InsertSymbol(FieldsList.Items.Strings[FieldsList.ItemIndex]);
end;

procedure TFilterEditForm.Button2Click(Sender: TObject);
begin
  InsertSymbol('7')
end;

procedure TFilterEditForm.Button3Click(Sender: TObject);
begin
  InsertSymbol('8')
end;

procedure TFilterEditForm.Button4Click(Sender: TObject);
begin
  InsertSymbol('9')
end;

procedure TFilterEditForm.Button5Click(Sender: TObject);
begin
  InsertSymbol('4')
end;

procedure TFilterEditForm.Button6Click(Sender: TObject);
begin
  InsertSymbol('5')
end;

procedure TFilterEditForm.Button7Click(Sender: TObject);
begin
  InsertSymbol('6');
end;

procedure TFilterEditForm.Button8Click(Sender: TObject);
begin
  InsertSymbol('1');
end;

procedure TFilterEditForm.Button9Click(Sender: TObject);
begin
  InsertSymbol('2');
end;

procedure TFilterEditForm.cxButton1Click(Sender: TObject);
begin
  Data.DS_Filters.Insert;
  Data.DS_Filters['F_TYPE'] := 0;
end;

procedure TFilterEditForm.Button10Click(Sender: TObject);
begin
  InsertSymbol('3');
end;

procedure TFilterEditForm.Button11Click(Sender: TObject);
begin
  InsertSymbol('0');
end;

procedure TFilterEditForm.Button14Click(Sender: TObject);
begin
  InsertSymbol('(');
end;

procedure TFilterEditForm.Button15Click(Sender: TObject);
begin
  InsertSymbol(')');
end;

procedure TFilterEditForm.Button16Click(Sender: TObject);
begin
  InsertSymbol('<');
end;

procedure TFilterEditForm.Button17Click(Sender: TObject);
begin
  InsertSymbol('>');
end;

procedure TFilterEditForm.Button18Click(Sender: TObject);
begin
  InsertSymbol('<=');
end;

procedure TFilterEditForm.Button19Click(Sender: TObject);
begin
  InsertSymbol('>=');
end;

procedure TFilterEditForm.Button20Click(Sender: TObject);
begin
  InsertSymbol('=');
end;

procedure TFilterEditForm.Button21Click(Sender: TObject);
begin
  InsertSymbol('<>');
end;

procedure TFilterEditForm.Button12Click(Sender: TObject);
begin
  InsertSymbol('.');
end;

procedure TFilterEditForm.Button13Click(Sender: TObject);
begin
  InsertSymbol('()');
  FilterEdit.SelStart := FilterEdit.SelStart - 1;
end;

procedure TFilterEditForm.Button22Click(Sender: TObject);
begin
  InsertSymbol(' and ');
end;

procedure TFilterEditForm.Button23Click(Sender: TObject);
begin
  InsertSymbol(' or ');
end;

procedure TFilterEditForm.Button24Click(Sender: TObject);
begin
  InsertSymbol(' not ');
end;

procedure TFilterEditForm.Button25Click(Sender: TObject);
begin
  FilterEdit.Text := '';
  FilterEdit.SetFocus;
end;

procedure TFilterEditForm.Button29Click(Sender: TObject);
begin
  FilterEdit.SetFocus;
  FilterEdit.SelStart := 0;
end;

procedure TFilterEditForm.Button26Click(Sender: TObject);
begin
  FilterEdit.SetFocus;
  FilterEdit.SelStart := Length(FilterEdit.Text);
end;

procedure TFilterEditForm.Button27Click(Sender: TObject);
begin
  InsertSymbol('''');
end;

procedure TFilterEditForm.Button28Click(Sender: TObject);
begin
  InsertSymbol('''''');
  FilterEdit.SelStart := FilterEdit.SelStart - 1;
end;

procedure TFilterEditForm.Button31Click(Sender: TObject);
begin
  InsertSymbol('[DATE]');
end;

procedure TFilterEditForm.btn_AddClick(Sender: TObject);
begin
  Data.DS_Filters.Insert;
  Data.DS_Filters['F_TYPE'] := 0;
end;

procedure TFilterEditForm.btn_CloseClick(Sender: TObject);
begin
  if (Data.DS_Filters.State = dsEdit) or (Data.DS_Filters.State = dsInsert) then
    Data.DS_Filters.Post;
  Close;
end;

procedure TFilterEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data.DS_Filters.ReopenLocate('ID');
end;

end.
