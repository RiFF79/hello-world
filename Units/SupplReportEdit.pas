unit SupplReportEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TSupplReportForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    edit_ClientName: TComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplReportForm: TSupplReportForm;

implementation

uses
  DataConteiner;

{$R *.dfm}

procedure TSupplReportForm.FormShow(Sender: TObject);
begin
  edit_ClientName.Items.Clear;
  with Data.DS_ImportPrice do
  begin
    First;
    while not(Eof) do
    begin
      edit_ClientName.Items.Append(FieldValues['SUPPL_NAME']);
      Next;
    end;
  end;
  edit_ClientName.ItemIndex := 0;
end;

end.
