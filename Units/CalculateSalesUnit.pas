unit CalculateSalesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBGridEh, Mask, DBCtrlsEh,
  DBLookupEh, cxGraphics, cxControls, cxLookAndFeels,
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
  dxCore, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Menus, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, DateUtils, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  cxDateUtils, cxSpinButton;

type
  TCalculateSalesForm = class(TForm)
    cxLabel1: TcxLabel;
    edit_customer: TcxLookupComboBox;
    cxButton1: TcxButton;
    edit_date_from: TcxDateEdit;
    edit_date_to: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    l_rashod: TcxLabel;
    l_prihod: TcxLabel;
    l_dohod: TcxLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    btn_PrevDay: TcxButton;
    btn_NextDay: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure btn_PrevDayClick(Sender: TObject);
    procedure btn_NextDayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalculateSalesForm: TCalculateSalesForm;

implementation

uses DataConteiner, QueryDataContainer, SystemContainerUnit;

{$R *.dfm}

procedure TCalculateSalesForm.btn_NextDayClick(Sender: TObject);
begin
  edit_date_from.EditValue := IncDay(edit_date_from.EditValue, 1);
  edit_date_to.EditValue := IncDay(edit_date_to.EditValue, 1);
end;

procedure TCalculateSalesForm.btn_PrevDayClick(Sender: TObject);
begin
  edit_date_from.EditValue := IncDay(edit_date_from.EditValue, -1);
  edit_date_to.EditValue := IncDay(edit_date_to.EditValue, -1);
end;

procedure TCalculateSalesForm.cxButton1Click(Sender: TObject);
var
  total_sale, total_arrival: real;
  proc: real;
  good_id: integer;
  date_from, date_to: string;
  cust: string;
begin

  l_rashod.caption := 'подождите...';
  l_prihod.caption := 'подождите...';
  l_dohod.caption := 'подождите...';
  l_rashod.Style.Font.Style := [fsItalic];
  l_rashod.Style.Font.Color := clInactiveCaption;
  l_prihod.Style.Font.Style := [fsItalic];
  l_prihod.Style.Font.Color := clInactiveCaption;
  l_dohod.Style.Font.Style := [fsItalic];
  l_dohod.Style.Font.Color := clInactiveCaption;
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  date_from := DateToStr(edit_date_from.EditValue) + ' 00:00:00';
  date_to := DateToStr(edit_date_to.EditValue) + ' 23:23:59';

  if VarIsNull(edit_customer.EditValue) then
    cust := ''
  else
    cust := '(CUST_ID=' + inttostr(edit_customer.EditValue) + ') AND ';

  total_sale := Data.Database.QueryValue
    ('SELECT COALESCE(SUM(SUM_TOTAL),0) FROM SALE_N WHERE ' + cust +
    '(S_DATE >=''' + date_from + ''') AND (S_DATE <=''' + date_to + ''')', 0);
  total_sale := total_sale - Data.Database.QueryValue
    ('SELECT COALESCE(SUM(SUMM_TOTAL),0) FROM RETURN_CUST_N WHERE ' + cust +
    '(R_DATE >=''' + date_from + ''') AND (R_DATE <=''' + date_to + ''')', 0);

  total_arrival := Data.Database.QueryValue
    ('SELECT COALESCE(SUM(A_PRICE*CNT),0) FROM SALE_LIST WHERE ' + cust +
    '(S_DATE >=''' + date_from + ''') AND (S_DATE <=''' + date_to + ''')', 0);
  total_arrival := total_arrival - Data.Database.QueryValue
    ('SELECT COALESCE(SUM(A_PRICE*CNT),0) FROM RETURN_CUST_LIST WHERE ' + cust +
    '(R_DATE >=''' + date_from + ''') AND (R_DATE <=''' + date_to + ''')', 0);

  if total_arrival = 0 then
    if total_sale = 0 then
      proc := 0
    else
      proc := 100
  else
    proc := (total_sale / total_arrival) * 100 - 100;

  l_rashod.Style.Font.Style := [];
  l_rashod.Style.Font.Color := clCaptionText;
  l_prihod.Style.Font.Style := [];
  l_prihod.Style.Font.Color := clCaptionText;
  l_dohod.Style.Font.Style := [fsBold];
  l_dohod.Style.Font.Color := clCaptionText;
  l_rashod.caption := floattostrF(total_sale, ffFixed, 20, 2);
  l_prihod.caption := floattostrF(total_arrival, ffFixed, 20, 2);
  l_dohod.caption := floattostrF(total_sale - total_arrival, ffFixed, 20, 2) +
    ' (' + floattostrF(proc, ffFixed, 20, 2) + '%)';
  Screen.Cursor := crDefault;
end;

procedure TCalculateSalesForm.cxButton2Click(Sender: TObject);
begin
  edit_date_from.EditValue := Today;
  edit_date_to.EditValue := Today;
end;

procedure TCalculateSalesForm.cxButton3Click(Sender: TObject);
begin
  edit_date_from.EditValue := IncWeek(Today, -1);
  edit_date_to.EditValue := Today;
end;

procedure TCalculateSalesForm.cxButton4Click(Sender: TObject);
begin
  edit_date_from.EditValue := SysUtils.IncMonth(Today, -1);
  edit_date_to.EditValue := Today;
end;

procedure TCalculateSalesForm.cxButton5Click(Sender: TObject);
begin
  edit_date_from.EditValue := SysUtils.IncMonth(Today, -2);
  edit_date_to.EditValue := Today;
end;

procedure TCalculateSalesForm.cxButton6Click(Sender: TObject);
begin
  edit_date_from.EditValue := SysUtils.IncMonth(Today, -6);
  edit_date_to.EditValue := Today;
end;

procedure TCalculateSalesForm.cxButton7Click(Sender: TObject);
begin
  edit_date_from.EditValue := IncYear(Today, -1);
  edit_date_to.EditValue := Today;
end;

procedure TCalculateSalesForm.cxButton8Click(Sender: TObject);
begin
  edit_customer.EditValue := Null;
end;

procedure TCalculateSalesForm.FormCreate(Sender: TObject);
begin
  edit_date_from.EditValue := SysUtils.IncMonth(Today, -1);
  edit_date_to.EditValue := Today;
end;

end.
