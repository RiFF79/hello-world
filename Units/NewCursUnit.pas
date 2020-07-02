unit NewCursUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinSilver, cxTextEdit, cxDBEdit, cxLabel;

type
  TNewCursForm = class(TForm)
    cxLabel1: TcxLabel;
    curs: TcxDBTextEdit;
    old_curs: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cursKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewCursForm: TNewCursForm;

implementation

{$R *.dfm}

uses DataConteiner;

procedure TNewCursForm.cursKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        ModalResult := mrOk;
        NewCursForm.CloseModal;
      end;
    VK_ESCAPE:
      begin
        ModalResult := mrCancel;
        CloseModal;
      end;

  end;
end;

procedure TNewCursForm.FormShow(Sender: TObject);
begin
  ModalResult := mrCancel;
  old_curs.Caption := 'Текущий курс: ' + floattostr(Data.LastCurs);
end;

end.
