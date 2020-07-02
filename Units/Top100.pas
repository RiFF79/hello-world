unit Top100;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinDarkSide,
  dxSkinsdxBarPainter, DBGridEhGrouping, GridsEh, DBGridEh, dxBar, cxClasses,
  dxBarExtItems, System.DateUtils, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, dxSkinDevExpressStyle, dxSkinSilver, EhLibVCL, DBAxisGridsEh;

type
  TTop100Form = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    DBGridEh1: TDBGridEh;
    date_from: TdxBarDateCombo;
    date_to: TdxBarDateCombo;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure UpdateTop100Filter;
  public
    { Public declarations }
  end;

var
  Top100Form: TTop100Form;

implementation

{$R *.dfm}

uses QueryDataContainer;

procedure TTop100Form.dxBarButton1Click(Sender: TObject);
begin
  date_to.Date := today;
  date_from.Date := IncYear(today, -1);
  UpdateTop100Filter;
end;

procedure TTop100Form.dxBarButton2Click(Sender: TObject);
begin
  date_to.Date := today;
  date_from.Date := IncMonth(today, -1);
  UpdateTop100Filter;
end;

procedure TTop100Form.dxBarButton3Click(Sender: TObject);
begin
  date_to.Date := today;
  date_from.Date := IncWeek(today, -1);
  UpdateTop100Filter;
end;

procedure TTop100Form.dxBarButton4Click(Sender: TObject);
begin
  date_to.Date := today;
  date_from.Date := IncDay(today, -1);
  UpdateTop100Filter;
end;

procedure TTop100Form.FormActivate(Sender: TObject);
begin
  UpdateTop100Filter;
end;

procedure TTop100Form.UpdateTop100Filter;
begin
  if Query.DS_Top100.Active then
    Query.DS_Top100.Close;
  Query.DS_Top100.Params[0].AsString := datetostr(date_from.Date);
  Query.DS_Top100.Params[1].AsString := datetostr(date_to.Date);;
  Query.DS_Top100.Open;
end;

procedure TTop100Form.FormCreate(Sender: TObject);
begin
  date_to.Date := today;
  date_from.Date := IncMonth(today, -1);
end;

end.
