unit QueryDataContainer;

interface

uses
  SysUtils, Classes, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, Forms;

type
  TQuery = class(TDataModule)
    S_Select: TDataSource;
    DS_Select: TpFIBDataSet;
    T_Select: TpFIBTransaction;
    DS_CalculateSales: TpFIBDataSet;
    T_CalculateSales: TpFIBTransaction;
    S_CalculateSales: TDataSource;
    Q_SALESCOUNT: TpFIBQuery;
    T_Query_SaleCount: TpFIBTransaction;
    DS_CalculateArrivals: TpFIBDataSet;
    T_CalculateArrivals: TpFIBTransaction;
    S_CalculateArrivals: TDataSource;
    T_QueryDolgi: TpFIBTransaction;
    DS_QueryDolgi: TpFIBDataSet;
    S_QueryDolgi: TDataSource;
    T_QueryClients: TpFIBTransaction;
    DS_QueryClients: TpFIBDataSet;
    S_QueryClients: TDataSource;
    T_QueryClientsList: TpFIBTransaction;
    DS_QueryClientsList: TpFIBDataSet;
    S_QueryClientsList: TDataSource;
    T_HISTORY: TpFIBTransaction;
    DS_HISTORY: TpFIBDataSet;
    S_HISTORY: TDataSource;
    DS_HISTORYGOOD_ID: TFIBIntegerField;
    DS_HISTORYH_DATE: TFIBDateTimeField;
    DS_HISTORYPRICE: TFIBFloatField;
    DS_HISTORYDEPOT_FROM_ID: TFIBIntegerField;
    DS_HISTORYDEPOT_TO_ID: TFIBIntegerField;
    DS_HISTORYBILL_TYPE: TFIBIntegerField;
    DS_HISTORYNAKL_ID: TFIBIntegerField;
    DS_HISTORYCOMMENTS: TFIBstringField;
    DS_HISTORYCUST_ID: TFIBIntegerField;
    DS_HISTORYENTERED: TFIBSmallIntField;
    DS_HISTORYCURR_ID: TFIBIntegerField;
    DS_HISTORYPRICE_TYPE: TFIBIntegerField;
    DS_HISTORYDEPOT_FROM: TStringField;
    DS_HISTORYDEPOT_TO: TStringField;
    DS_HISTORYCUSTOMER: TStringField;
    DS_HISTORYCURRENCY: TStringField;
    T_Clients: TpFIBTransaction;
    DS_Depots: TpFIBDataSet;
    S_Depots: TDataSource;
    T_DayReport: TpFIBTransaction;
    DS_DayReport: TpFIBDataSet;
    S_DayReport: TDataSource;
    T_Sale: TpFIBTransaction;
    DS_Sale: TpFIBDataSet;
    S_Sale: TDataSource;
    T_AccReport: TpFIBTransaction;
    DS_AccReport: TpFIBDataSet;
    S_AccReport: TDataSource;
    MoneyInGoods: TpFIBQuery;
    T_MoneyInGoods: TpFIBTransaction;
    DS_Top100: TpFIBDataSet;
    S_Top100: TDataSource;
    T_Top100: TpFIBTransaction;
    DS_SaleDetails: TpFIBDataSet;
    S_SaleDetails: TDataSource;
    T_SaleDetails: TpFIBTransaction;
    DS_ArrivalDetails: TpFIBDataSet;
    DS_RetCustDetails: TpFIBDataSet;
    DS_RetSupplDetails: TpFIBDataSet;
    S_ArrivalDetails: TDataSource;
    S_RetCustDetails: TDataSource;
    S_RetSupplDetails: TDataSource;
    T_ArrivalDetails: TpFIBTransaction;
    T_RetCustDetails: TpFIBTransaction;
    T_RetSupplDetails: TpFIBTransaction;
    DS_HISTORYCNT: TFIBFloatField;
    DS_HISTORYWEIGHT: TFIBFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DS_QueryDolgiAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Query: TQuery;

implementation

uses DataConteiner, CustomHistoryUnit, SplashUnit;

{$R *.dfm}

procedure TQuery.DataModuleCreate(Sender: TObject);
const
  s = 'Инициализация отчетов: ';
begin
  SplashForm.text.Caption := s + 'DS_Select';
  Application.ProcessMessages;
  DS_Select.Open;
  SplashForm.text.Caption := s + 'DS_CalculateSales';
  Application.ProcessMessages;
  DS_CalculateSales.Open;
  SplashForm.text.Caption := s + 'DS_CalculateArrivals';
  Application.ProcessMessages;
  DS_CalculateArrivals.Open;
  SplashForm.text.Caption := s + 'DS_QueryDolgi';
  Application.ProcessMessages;
  DS_QueryDolgi.Open;
  SplashForm.text.Caption := s + 'DS_QueryClients';
  Application.ProcessMessages;
  DS_QueryClients.Open;
  SplashForm.text.Caption := s + 'DS_QueryClientsList';
  Application.ProcessMessages;
  DS_QueryClientsList.Open;
  SplashForm.text.Caption := s + 'DS_RetSupplDetails';
  Application.ProcessMessages;
  DS_RetSupplDetails.Open;
  SplashForm.text.Caption := s + 'DS_RetCustDetails';
  Application.ProcessMessages;
  DS_RetCustDetails.Open;
  SplashForm.text.Caption := s + 'DS_ArrivalDetails';
  Application.ProcessMessages;
  DS_ArrivalDetails.Open;
  SplashForm.text.Caption := s + 'DS_SaleDetails';
  Application.ProcessMessages;
  DS_SaleDetails.Open;
  SplashForm.text.Caption := s + 'DS_History';
  Application.ProcessMessages;
  DS_HISTORY.Open;
  SplashForm.text.Caption := s + 'DS_Depots';
  Application.ProcessMessages;
  DS_Depots.Open;
end;

procedure TQuery.DS_QueryDolgiAfterScroll(DataSet: TDataSet);
begin
  if CustomerHistoryForm.Visible then
    CustomerHistoryForm.SetDetailsFilter;

end;

end.
