unit Incassation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, StdCtrls, Mask;

type
  TIncassationForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    edit_date: TDBDateTimeEditEh;
    edit_SUMM_USD: TDBNumberEditEh;
    btn_OK: TButton;
    btn_Cancel: TButton;
    edit_SUMM_UA: TDBNumberEditEh;
    edit_comments: TDBComboBoxEh;
    btn_MakeChanges: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncassationForm: TIncassationForm;

implementation

{$R *.dfm}

end.
