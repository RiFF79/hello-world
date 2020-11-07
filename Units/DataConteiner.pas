unit DataConteiner;

interface

uses
  SysUtils, Classes, Controls, FIBDatabase, pFIBDatabase, DB,
  FIBDataSet, pFIBDataSet, INIFiles, Forms, Variants,
  EXLReport, EXLReportExcelTLB, EXLReportBand, Dialogs, zip,
  DateUtils, Math, DBSumLst, int_const, dxmdaset, windows, QImport3,
  QImport3XLS,
  FIBQuery, pFIBQuery, pFIBProps;

const
  csvquote = '"';
  csvdelimeter = ',';

type

  TData = class(TDataModule)
    Database: TpFIBDatabase;
    TRead_Arrival_N: TpFIBTransaction;
    S_Arrival_N: TDataSource;
    S_Depots: TDataSource;
    DS_Depots: TpFIBDataSet;
    TRead_Depots: TpFIBTransaction;
    S_Firms: TDataSource;
    DS_Firms: TpFIBDataSet;
    TRead_Firms: TpFIBTransaction;
    TWrite_Arrival_N: TpFIBTransaction;
    TWrite_Depots: TpFIBTransaction;
    TWrite_Firms: TpFIBTransaction;
    S_GoodTypes: TDataSource;
    DS_GoodTypes: TpFIBDataSet;
    TRead_GoodTypes: TpFIBTransaction;
    TWrite_GoodTypes: TpFIBTransaction;
    S_Customers: TDataSource;
    DS_Customers: TpFIBDataSet;
    TRead_Customers: TpFIBTransaction;
    TWrite_Customers: TpFIBTransaction;
    S_Currency: TDataSource;
    DS_Currency: TpFIBDataSet;
    TRead_Currency: TpFIBTransaction;
    TWrite_Currency: TpFIBTransaction;
    S_Curs: TDataSource;
    DS_Curs: TpFIBDataSet;
    TRead_Curs: TpFIBTransaction;
    TWrite_Curs: TpFIBTransaction;
    DS_CursID: TFIBIntegerField;
    DS_CursDATE: TFIBDateTimeField;
    DS_CursCURR_ID: TFIBIntegerField;
    DS_CursCURS: TFIBFloatField;
    DS_CursCURRENCY: TStringField;
    S_Goods: TDataSource;
    DS_Goods: TpFIBDataSet;
    TRead_Goods: TpFIBTransaction;
    TWrite_Goods: TpFIBTransaction;
    S_Arrival: TDataSource;
    DS_Arrival: TpFIBDataSet;
    TRead_Arrival: TpFIBTransaction;
    TWrite_Arrival: TpFIBTransaction;
    DS_Arrival_N: TpFIBDataSet;
    DS_Defaults: TpFIBDataSet;
    TRead_Defaults: TpFIBTransaction;
    TWrite_Defaults: TpFIBTransaction;
    S_Defaults: TDataSource;
    DS_DefaultsSUPPLIER: TFIBIntegerField;
    DS_DefaultsCURRENCY: TFIBIntegerField;
    DS_DefaultsCUSTOMER: TFIBIntegerField;
    DS_DefaultsDEPOT: TFIBIntegerField;
    DS_DefaultsGOODTYPE: TFIBIntegerField;
    DS_DefaultsREALIZER: TFIBIntegerField;
    S_Sale_N: TDataSource;
    DS_Sale_N: TpFIBDataSet;
    TRead_Sale_N: TpFIBTransaction;
    TWrite_Sale_N: TpFIBTransaction;
    S_Sale: TDataSource;
    DS_Sale: TpFIBDataSet;
    TRead_Sale: TpFIBTransaction;
    TWrite_Sale: TpFIBTransaction;
    S_Moves_N: TDataSource;
    S_Moves: TDataSource;
    DS_Moves_N: TpFIBDataSet;
    DS_Moves: TpFIBDataSet;
    TRead_Moves_N: TpFIBTransaction;
    TWrite_Moves_N: TpFIBTransaction;
    TRead_Moves: TpFIBTransaction;
    TWrite_Moves: TpFIBTransaction;
    DS_DefaultsDEPOT_FROM: TFIBIntegerField;
    DS_DefaultsDEPOT_TO: TFIBIntegerField;
    S_Return_Suppl: TDataSource;
    DS_Return_Suppl: TpFIBDataSet;
    TRead_Return_Suppl: TpFIBTransaction;
    TWrite_Return_Suppl: TpFIBTransaction;
    S_Return_Suppl_N: TDataSource;
    DS_Return_Suppl_N: TpFIBDataSet;
    TRead_Return_Suppl_N: TpFIBTransaction;
    TWrite_Return_Suppl_N: TpFIBTransaction;
    ExcelExport: TEXLReport;
    DS_DefaultsNEW_DAYS: TFIBIntegerField;
    S_Filters: TDataSource;
    DS_Filters: TpFIBDataSet;
    TRead_Filters: TpFIBTransaction;
    TWrite_Filters: TpFIBTransaction;
    DS_ImportPrice: TpFIBDataSet;
    S_ImportPrice: TDataSource;
    TRead_ImportPrice: TpFIBTransaction;
    TWrite_ImportPrice: TpFIBTransaction;
    DS_Banned: TpFIBDataSet;
    S_Banned: TDataSource;
    TRead_Banned: TpFIBTransaction;
    TWrite_Banned: TpFIBTransaction;
    DS_BannedART: TFIBstringField;
    DS_BannedFULLNAME: TFIBstringField;
    DS_BannedSUPPL_ID: TFIBSmallIntField;
    DS_BannedKIND: TFIBSmallIntField;
    DS_DefaultsDISCOUNT: TFIBFloatField;
    DS_DefaultsCURS: TFIBFloatField;
    DS_BannedSUPPLIER: TStringField;
    TRead_Return_Cust_N: TpFIBTransaction;
    S_Return_Cust_N: TDataSource;
    TWrite_Return_Cust_N: TpFIBTransaction;
    S_Return_Cust: TDataSource;
    DS_Return_Cust: TpFIBDataSet;
    TRead_Return_Cust: TpFIBTransaction;
    TWrite_Return_Cust: TpFIBTransaction;
    DS_Return_Cust_N: TpFIBDataSet;
    S_PriceCategory: TDataSource;
    DS_PriceCategory: TpFIBDataSet;
    TRead_PriceCategory: TpFIBTransaction;
    TWrite_PriceCategory: TpFIBTransaction;
    DS_DefaultsPRICE1_DISCOUNT: TFIBFloatField;
    DS_DefaultsPRICE2_DISCOUNT: TFIBFloatField;
    S_KASSA: TDataSource;
    DS_KASSA: TpFIBDataSet;
    TRead_KASSA: TpFIBTransaction;
    TWrite_KASSA: TpFIBTransaction;
    S_Users: TDataSource;
    DS_Users: TpFIBDataSet;
    TRead_Users: TpFIBTransaction;
    TWrite_Users: TpFIBTransaction;
    DS_KASSAID: TFIBIntegerField;
    DS_KASSASUMM: TFIBFloatField;
    DS_KASSACLIENT_ID: TFIBIntegerField;
    DS_KASSANAKL_ID: TFIBIntegerField;
    DS_KASSACOMMENTS: TFIBstringField;
    DS_KASSAK_DATE: TFIBDateTimeField;
    DS_KASSASUMM_UA: TFIBFloatField;
    DS_KASSASUMM_USD: TFIBFloatField;
    DS_KASSACURS: TFIBFloatField;
    DS_KASSANAKL_SUMM: TFIBFloatField;
    DS_KASSAIN_USE: TFIBSmallIntField;
    DS_KASSACASHOUT: TFIBSmallIntField;
    DS_KASSACLIENT_NAME: TFIBstringField;
    DS_DefaultsLAST_SYS_DATE: TFIBDateTimeField;
    S_Requirements: TDataSource;
    DS_Requirements: TpFIBDataSet;
    TRead_Requirements: TpFIBTransaction;
    TWrite_Requirements: TpFIBTransaction;
    DS_ReqList: TpFIBDataSet;
    S_ReqList: TDataSource;
    TRead_ReqList: TpFIBTransaction;
    DS_EXT_PRICE: TpFIBDataSet;
    S_EXT_PRICE: TDataSource;
    TRead_EXT_PRICE: TpFIBTransaction;
    TWrite_EXT_PRICE: TpFIBTransaction;
    DS_LAST_ARRIVALS: TpFIBDataSet;
    S_LAST_ARRIVALS: TDataSource;
    TRead_LAST_ARRIVALS: TpFIBTransaction;
    S_Discounts: TDataSource;
    DS_Discounts: TpFIBDataSet;
    TRead_Discounts: TpFIBTransaction;
    TWrite_Discounts: TpFIBTransaction;
    ExcelImport: TQImport3XLS;
    DS_EmailGroups: TpFIBDataSet;
    FIBStringField1: TFIBstringField;
    FIBStringField2: TFIBstringField;
    FIBSmallIntField1: TFIBSmallIntField;
    FIBSmallIntField2: TFIBSmallIntField;
    StringField1: TStringField;
    S_EmailGroups: TDataSource;
    TRead_EmailGroups: TpFIBTransaction;
    TWrite_EmailGroups: TpFIBTransaction;
    DS_DefaultsSANAS_CURS: TFIBFloatField;
    DS_DefaultsSANAS_DOSTAVKA: TFIBFloatField;
    DS_PRICETOEXCEL: TpFIBDataSet;
    S_PRICETOEXCEL: TDataSource;
    TRead_PRICETOEXCEL: TpFIBTransaction;
    DS_DefaultsSANAS_DISCOUNT: TFIBSmallIntField;
    DS_DefaultsPRICE_EXPORT_DISCOUNT: TFIBFloatField;
    DS_SaleImportDepots: TpFIBDataSet;
    S_SaleImportDepots: TDataSource;
    TRead_SaleImportDepots: TpFIBTransaction;
    TWrite_SaleImportDepots: TpFIBTransaction;
    DS_Arrival_NID: TFIBIntegerField;
    DS_Arrival_NCOMMENTS: TFIBStringField;
    DS_Arrival_NSUMM: TFIBFloatField;
    DS_Arrival_NA_TYPE: TFIBSmallIntField;
    DS_Arrival_NA_DATE: TFIBDateTimeField;
    DS_Arrival_NDEPOT_ID: TFIBSmallIntField;
    DS_Arrival_NCUST_ID: TFIBSmallIntField;
    DS_Arrival_NCURR_ID: TFIBIntegerField;
    DS_Arrival_NENTERED: TFIBBooleanField;
    DS_Arrival_NCNT: TFIBFloatField;
    DS_Arrival_NIS_NEW: TFIBBooleanField;
    DS_Arrival_NUSERID: TFIBSmallIntField;
    DS_Arrival_NEUSERID: TFIBSmallIntField;
    DS_Arrival_NCHANGED: TFIBDateTimeField;
    DS_Arrival_NCURS: TFIBFloatField;
    DS_Arrival_NSUM_TOTAL: TFIBFloatField;
    DS_Arrival_NEDITINGBY: TFIBIntegerField;
    DS_Arrival_NCURRENCY: TFIBStringField;
    DS_Arrival_NCURR_PREFIX: TFIBStringField;
    DS_Arrival_NDEPOT: TFIBStringField;
    DS_Arrival_NCLIENT: TFIBStringField;
    DS_Arrival_NCLIENT_PRINT: TFIBStringField;
    DS_Arrival_NUSERNAME: TFIBStringField;
    DS_Arrival_NEUSERNAME: TFIBStringField;
    DS_Sale_NID: TFIBIntegerField;
    DS_Sale_NCOMMENTS: TFIBStringField;
    DS_Sale_NSUMM: TFIBFloatField;
    DS_Sale_NS_DATE: TFIBDateTimeField;
    DS_Sale_NCUST_ID: TFIBSmallIntField;
    DS_Sale_NENTERED: TFIBBooleanField;
    DS_Sale_NCNT: TFIBFloatField;
    DS_Sale_NCURR_ID: TFIBSmallIntField;
    DS_Sale_NPRICE_TYPE: TFIBIntegerField;
    DS_Sale_NPRINTED: TFIBIntegerField;
    DS_Sale_NSUMM_ARRIVAL: TFIBFloatField;
    DS_Sale_NDISCOUNT: TFIBFloatField;
    DS_Sale_NCURS: TFIBFloatField;
    DS_Sale_NUSERID: TFIBSmallIntField;
    DS_Sale_NEUSERID: TFIBSmallIntField;
    DS_Sale_NCHANGED: TFIBDateTimeField;
    DS_Sale_NSUM_TOTAL: TFIBFloatField;
    DS_Sale_NEDITINGBY: TFIBIntegerField;
    DS_Sale_NPAID: TFIBFloatField;
    DS_Sale_NCURRENCY: TFIBStringField;
    DS_Sale_NCURR_PREFIX: TFIBStringField;
    DS_Sale_NCUSTOMER: TFIBStringField;
    DS_Sale_NCUST_PRINT: TFIBStringField;
    DS_Sale_NUSERNAME: TFIBStringField;
    DS_Sale_NEUSERNAME: TFIBStringField;
    DS_Return_Suppl_NID: TFIBIntegerField;
    DS_Return_Suppl_NR_DATE: TFIBDateTimeField;
    DS_Return_Suppl_NCUST_ID: TFIBSmallIntField;
    DS_Return_Suppl_NCOMMENTS: TFIBStringField;
    DS_Return_Suppl_NCURR_ID: TFIBIntegerField;
    DS_Return_Suppl_NCNT: TFIBFloatField;
    DS_Return_Suppl_NSUMM: TFIBFloatField;
    DS_Return_Suppl_NENTERED: TFIBBooleanField;
    DS_Return_Suppl_NUSERID: TFIBSmallIntField;
    DS_Return_Suppl_NEUSERID: TFIBSmallIntField;
    DS_Return_Suppl_NCHANGED: TFIBDateTimeField;
    DS_Return_Suppl_NCURS: TFIBFloatField;
    DS_Return_Suppl_NSUMM_TOTAL: TFIBFloatField;
    DS_Return_Suppl_NCLIENT: TFIBStringField;
    DS_Return_Suppl_NCLIENT_PRINT: TFIBStringField;
    DS_Return_Suppl_NCURRENCY: TFIBStringField;
    DS_Return_Suppl_NCURR_PREFIX: TFIBStringField;
    DS_Return_Suppl_NEDITINGBY: TFIBIntegerField;
    DS_Return_Suppl_NUSERNAME: TFIBStringField;
    DS_Return_Suppl_NEUSERNAME: TFIBStringField;
    DS_Return_Cust_NID: TFIBIntegerField;
    DS_Return_Cust_NR_DATE: TFIBDateTimeField;
    DS_Return_Cust_NCUST_ID: TFIBIntegerField;
    DS_Return_Cust_NDEPOT_ID: TFIBIntegerField;
    DS_Return_Cust_NCOMMENTS: TFIBStringField;
    DS_Return_Cust_NCURR_ID: TFIBIntegerField;
    DS_Return_Cust_NCNT: TFIBFloatField;
    DS_Return_Cust_NSUMM: TFIBFloatField;
    DS_Return_Cust_NENTERED: TFIBBooleanField;
    DS_Return_Cust_NUSERID: TFIBSmallIntField;
    DS_Return_Cust_NEUSERID: TFIBSmallIntField;
    DS_Return_Cust_NCHANGED: TFIBDateTimeField;
    DS_Return_Cust_NCURS: TFIBFloatField;
    DS_Return_Cust_NSUMM_TOTAL: TFIBFloatField;
    DS_Return_Cust_NCUSTOMER: TFIBStringField;
    DS_Return_Cust_NCUST_PRINT: TFIBStringField;
    DS_Return_Cust_NCURRENCY: TFIBStringField;
    DS_Return_Cust_NDEPOT: TFIBStringField;
    DS_Return_Cust_NEDITINGBY: TFIBIntegerField;
    DS_Return_Cust_NUSERNAME: TFIBStringField;
    DS_Return_Cust_NEUSERNAME: TFIBStringField;
    TRead_Production_N: TpFIBTransaction;
    S_Production_N: TDataSource;
    T_Write_Production_N: TpFIBTransaction;
    DS_Production_N: TpFIBDataSet;
    S_Production: TDataSource;
    DS_Production: TpFIBDataSet;
    TRead_Production: TpFIBTransaction;
    TWrite_Production: TpFIBTransaction;
    S_Production_SP: TDataSource;
    DS_Production_SP: TpFIBDataSet;
    TRead_Production_SP: TpFIBTransaction;
    TWrite_Production_SP: TpFIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DS_ArrivalAfterDelete(DataSet: TDataSet);
    procedure DS_ArrivalAfterPost(DataSet: TDataSet);
    procedure DS_SaleNewRecord(DataSet: TDataSet);
    procedure DS_SaleAfterDelete(DataSet: TDataSet);
    procedure DS_SaleAfterPost(DataSet: TDataSet);
    procedure DS_MovesAfterDelete(DataSet: TDataSet);
    procedure DS_MovesAfterPost(DataSet: TDataSet);
    procedure ExcelExportBeforeBuild(Sender: TObject);
    procedure ExcelExportGetFieldValue(Sender: TObject; const Field: String;
      var Value: OleVariant);
    procedure DS_Return_SupplAfterDelete(DataSet: TDataSet);
    procedure DS_Return_SupplAfterPost(DataSet: TDataSet);
    procedure DS_Return_SupplNewRecord(DataSet: TDataSet);
    procedure DS_Sale_NAfterRefresh(DataSet: TDataSet);
    procedure DS_KASSAAfterInsert(DataSet: TDataSet);
    procedure DS_Return_CustAfterDelete(DataSet: TDataSet);
    procedure DS_Return_CustAfterPost(DataSet: TDataSet);
    procedure AfterEdit(DataSet: TDataSet);
    procedure AfterInsert(DataSet: TDataSet);
    procedure DS_ReqListAfterScroll(DataSet: TDataSet);
    procedure DS_ProductionAfterDelete(DataSet: TDataSet);
    procedure DS_ProductionAfterPost(DataSet: TDataSet);
    procedure DS_Production_SPAfterDelete(DataSet: TDataSet);
    procedure DS_Production_SPAfterPost(DataSet: TDataSet);
    procedure DS_ProductionEndScroll(DataSet: TDataSet);
    procedure DS_Production_SPNewRecord(DataSet: TDataSet);
    // procedure UpdatePricesFromSuppliers;
  private
    pre_summ: Real;
    first_row: boolean;
    FCounter: integer;
    FDepot, RSDepot, SPDepot: integer;
    procedure addPromCSVValue(var row: string; const Field: string;
      postfix: string = '');
    procedure addPromCSVString(var row: string; const Value: string);
    function correctQuotes(Value: string): string;
  public
    CanUpdateUser: boolean;
    procedure ExportPriceToCSV(filename: string);
    procedure ClearSpecificationBill(id: integer);
    procedure ClearDefaultSpecification(good_id: integer);
    procedure SaveDefaultSpecification(from_bill_id, good_id: integer);
    procedure LoadDefaultSpecification(to_bill_id, good_id: integer);
    function DefaultSpecificationExists(good_id: integer): boolean;
    function SpecificationInBillExists(bill_id: integer): boolean;
    function GetProfit: Real;
    function GetLastSalePrice(good_id: integer; cust_id: integer): Variant;
    function GetLastArrivalPrice(good_id: integer; suppl_id: integer;
      convert: boolean = true; use_arr_perc: boolean = true): double;
    function GetLastArrivalPriceFromDate(good_id: integer; suppl_id: integer;
      from_date: TDate): Variant;
    function GetLastArrivalDate(good_id: integer): Variant;
    function GetLastSupplier(good_id: integer): integer;
    procedure ClearUserActivity;
    procedure SetUserActivity(billtype: integer);
    procedure RecalculateCounts(id: integer);
    procedure DeleteFromRequirements(id: integer);
    function BillOpened(bill_type: integer): integer;
    function ArrivalRCount: integer;
    function SaleRCount: integer;
    function ProductionRCount: integer;
    function MovesRCount: integer;
    function RCRCount: integer;
    function RSRCount: integer;
    function AllSaled(id: integer): real;
    function AllArrived(id: integer): real;
    function AllSaledOnDate(id: integer; OnDate: TDate; Depot: integer)
      : real;
    function AllArrivedOnDate(id: integer; OnDate: TDate;
      Depot: integer): real;
    function AllMovedOnDate(id: integer; OnDate: TDate; Depot: integer)
      : real;
    function TotalDepotCount(id, depot_id: integer): real;
    function LastCurs: Real;
    function UseMinSupplPrice: Real;
    function UseStandartPrice: Real;
    function GetGeneralPriceByType(price: Real; type_id: integer): Real;
    function GetSpecPriceByType(price: Real; type_id: integer): Real;
    function GetNVPrice: Real;
    function GetShopPrice: Real;
    function GetGeneralCnt(good_id: integer): real;
    function CanApplyBill(TableName: string; id: integer): boolean;
    function GetItemUnits(good_id: integer): integer;
  end;

var
  Data: TData;

implementation

uses MainUnit, SaleUnit, QueryDataContainer,
  SupplReportEdit, Settings, procentExport, ItemEditor, ProgressUnit,
  exportcsvUnit, mailingunit, SplashUnit, ProductionUnit;

{$R *.dfm}

procedure TData.DataModuleCreate(Sender: TObject);
const
  s = 'Инициализация базы данных: ';
begin
  {
    with TIniFile.Create(ExtractFilePath(Application.ExeName)+inifile) do begin
    Database.DBName:=ReadString('Options', 'DBPath', 'SERVER:C:\Mosquito-Stretch v3.5\Database.gdb');
    free;
    end;
  }
  if not Database.Connected then
    Database.Open;
  SplashForm.text.Caption := s + 'DS_Discounts';
  Application.ProcessMessages;
  DS_Discounts.Open;
  SplashForm.text.Caption := s + 'DS_Users';
  Application.ProcessMessages;
  DS_Users.Open;
  SplashForm.text.Caption := s + 'DS_Defaults';
  Application.ProcessMessages;
  DS_Defaults.Open;
  SplashForm.text.Caption := s + 'DS_Depots';
  Application.ProcessMessages;
  DS_Depots.Open;
  SplashForm.text.Caption := s + 'DS_Firms';
  Application.ProcessMessages;
  DS_Firms.Open;
  SplashForm.text.Caption := s + 'DS_ImportPrice';
  Application.ProcessMessages;
  DS_ImportPrice.Open;
  SplashForm.text.Caption := s + 'DS_Banned';
  Application.ProcessMessages;
  DS_Banned.Open;
  SplashForm.text.Caption := s + 'DS_GoodTypes';
  Application.ProcessMessages;
  DS_GoodTypes.Open;
  SplashForm.text.Caption := s + 'DS_PriceCategory';
  Application.ProcessMessages;
  DS_PriceCategory.Open;
  SplashForm.text.Caption := s + 'DS_Customers';
  Application.ProcessMessages;
  DS_Customers.Open;
  SplashForm.text.Caption := s + 'DS_Currency';
  Application.ProcessMessages;
  DS_Currency.Open;
  SplashForm.text.Caption := s + 'DS_Curs';
  Application.ProcessMessages;
  DS_Curs.Open;
  SplashForm.text.Caption := s + 'DS_Requirements';
  Application.ProcessMessages;
  DS_Requirements.Open;
  SplashForm.text.Caption := s + 'DS_ReqList';
  Application.ProcessMessages;
  DS_ReqList.Open;
  SplashForm.text.Caption := s + 'DS_Kassa';
  Application.ProcessMessages;
  DS_KASSA.Open;
  SplashForm.text.Caption := s + 'DS_Goods';
  Application.ProcessMessages;
  DS_Goods.Open;
  SplashForm.text.Caption := s + 'DS_Filters';
  Application.ProcessMessages;
  DS_Filters.Open;
  SplashForm.text.Caption := s + 'DS_Arrival';
  Application.ProcessMessages;
  DS_Arrival.Open;
  SplashForm.text.Caption := s + 'DS_Arrival_N';
  Application.ProcessMessages;
  DS_Arrival_N.Open;
  SplashForm.text.Caption := s + 'DS_Sale';
  Application.ProcessMessages;
  DS_Sale.Open;
  SplashForm.text.Caption := s + 'DS_Sale_N';
  Application.ProcessMessages;
  DS_Sale_N.Open;
  SplashForm.text.Caption := s + 'DS_Production_SP';
  Application.ProcessMessages;
  DS_Production_SP.Open;
  SplashForm.text.Caption := s + 'DS_Production';
  Application.ProcessMessages;
  DS_Production.Open;
  SplashForm.text.Caption := s + 'DS_Production_N';
  Application.ProcessMessages;
  DS_Production_N.Open;
  SplashForm.text.Caption := s + 'DS_Moves';
  Application.ProcessMessages;
  DS_Moves.Open;
  SplashForm.text.Caption := s + 'DS_Moves_N';
  Application.ProcessMessages;
  DS_Moves_N.Open;
  SplashForm.text.Caption := s + 'DS_Return_Suppl';
  Application.ProcessMessages;
  DS_Return_Suppl.Open;
  SplashForm.text.Caption := s + 'DS_Return_Suppl_N';
  Application.ProcessMessages;
  DS_Return_Suppl_N.Open;
  SplashForm.text.Caption := s + 'DS_Return_Cust';
  Application.ProcessMessages;
  DS_Return_Cust.Open;
  SplashForm.text.Caption := s + 'DS_Return_Cust_N';
  Application.ProcessMessages;
  DS_Return_Cust_N.Open;
  SplashForm.text.Caption := s + 'DS_Ext_Price';
  Application.ProcessMessages;
  DS_EXT_PRICE.Open;
  SplashForm.text.Caption := s + 'DS_Last_Arrivals';
  Application.ProcessMessages;
  DS_LAST_ARRIVALS.Open;
  SplashForm.text.Caption := s + 'DS_PriceToExcel';
  Application.ProcessMessages;
  DS_PRICETOEXCEL.Open;
  SplashForm.text.Caption := s + 'DS_SaleImportDepots';
  Application.ProcessMessages;
  DS_SaleImportDepots.Open;
  FDepot := DS_Defaults['DEPOT'];
  RSDepot := FDepot;
  SPDepot := FDepot;
  CanUpdateUser := true;
end;

function TData.DefaultSpecificationExists(good_id: integer): boolean;
var
  sp_count: integer;
begin
  sp_count := Data.Database.QueryValue(
    'select count(id) from DEFAULT_SPECIFICATIONS where ORIGIN_GOOD_ID='+inttostr(good_id), 0);
  if sp_count = 0
    then Result := false
    else Result := true;
end;

function TData.SpecificationInBillExists(bill_id: integer): boolean;
var
  sp_count: integer;
begin
  sp_count := Data.Database.QueryValue(
  'select count(id) from PRODUCTION_SP where NAKL_ID = ' + inttostr(bill_id), 0);
  if sp_count = 0
    then Result := false
    else Result := true;
end;

procedure TData.ClearDefaultSpecification(good_id: integer);
begin
  Data.Database.Execute('DELETE FROM DEFAULT_SPECIFICATIONS WHERE ORIGIN_GOOD_ID=' + inttostr(good_id));
end;

procedure TData.SaveDefaultSpecification(from_bill_id, good_id: integer);
begin
  Data.Database.Execute('INSERT INTO DEFAULT_SPECIFICATIONS (ORIGIN_GOOD_ID, GOOD_ID, CNT, DEPOT_ID) ' +
                        'SELECT ' + inttostr(good_id) + ', GOOD_ID, CNT, DEPOT_ID FROM PRODUCTION_SP ' +
                        'WHERE NAKL_ID='+ inttostr(from_bill_id));
end;

procedure TData.LoadDefaultSpecification(to_bill_id, good_id: integer);
begin
  Data.Database.Execute('INSERT INTO PRODUCTION_SP (NAKL_ID, GOOD_ID, CNT, DEPOT_ID) ' +
                        'SELECT ' + inttostr(to_bill_id) + ', GOOD_ID, CNT, DEPOT_ID FROM DEFAULT_SPECIFICATIONS ' +
                        'WHERE ORIGIN_GOOD_ID='+ inttostr(good_id));
end;


procedure TData.ClearSpecificationBill(id: integer);
begin
    Data.Database.Execute('DELETE FROM PRODUCTION_SP WHERE NAKL_ID = ' + inttostr(id));
end;

function TData.GetGeneralCnt(good_id: integer): real;
begin
  Result := Data.Database.QueryValue
    ('select (coalesce(AVAILABLE_1,0)+coalesce(AVAILABLE_3,0)+coalesce(AVAILABLE_4,0)+coalesce(AVAILABLE_6,0)+coalesce(AVAILABLE_9,0)+C1+C2+C3+C4+C5+C6+C7+C8+C9+C10+C11+C12+C13+C14+C15+C16+C17+C18+C19+C20) as CNT from GOODS where id='
    + inttostr(good_id), 0);
end;

procedure TData.addPromCSVString(var row: string; const Value: string);
begin
  if row <> '' then
    row := row + csvdelimeter;
  row := row + csvquote + correctQuotes(Value) + csvquote;
end;

function TData.correctQuotes(Value: string): string;
begin
  Result := StringReplace(Value, csvquote, csvquote + csvquote, [rfReplaceAll]);
end;

procedure TData.addPromCSVValue(var row: string; const Field: string;
  postfix: string = '');

begin
end;

procedure TData.ExportPriceToCSV(filename: string);
var
  List: TStringList;
  TempStr: String;
  price: String;
  aprice: Real;
  category_id: integer;
  type_id: integer;
  f: boolean;
  s: string;
  cnt: real;
  id: integer;
  nisha: boolean;
  cprc: Real;
  lc: Real;
  lad: Real;
  dostavka: Real;
  stt, skid, dt: string;
  grn: Real;
begin
  with DS_Goods do
  begin
    DisableControls;
    cprc := ExportToInternetForm.edit_prc.Value;
    dostavka := DS_Defaults.FBN('SANAS_DOSTAVKA').AsFloat;
    s := Filter;
    f := Filtered;
    Filter := 'USE_EXPORT<>1'; // все
    Filtered := true;
    List := TStringList.Create;
    First;
    if cprc = 0 then
      List.Add('sku,price,qty,status')
    else
      List.Add('sku,price,qty,status,Скидка');
    while not Eof do
    begin
      id := FBN('ID').AsInteger;
      category_id := FBN('price_category_id').AsInteger;
      type_id := FBN('TYPE_ID').AsInteger;
      nisha := false;
      if (category_id = 3) or (type_id in [4, 5]) then
        nisha := true; // ниша
      aprice := FBN('PRICE2').AsFloat;
      lc := DS_Defaults.FBN('SANAS_CURS').AsFloat;
      cnt := GetGeneralCnt(id);
      if cnt > 0 then
      begin
        cnt := 10;
        stt := '1';
        lad := 1 - cprc / 100;
        skid := floattostr(cprc) + '%';
      end
      else
      begin
        cnt := 0;
        stt := '2';
        // lad := 1;
        lad := 1 - cprc / 100;
        skid := '';
      end;
      grn := aprice * lc;
      if nisha then
      begin
        aprice := ((grn / 1.05) * 1.07); // 7% от закупки - остальная НИША
        if copy(Data.DS_Goods.FBN('FULLNAME').AsString, 0, 6) = 'Kilian' then
          aprice := ((grn / 1.05) * 1.04) // 4% на Kilian
        else if copy(Data.DS_Goods.FBN('FULLNAME').AsString, 0, 7) = 'Montale'
        then
          aprice := ((grn / 1.05) * 1.10); // 10% на Montale
      end
      else
        aprice := ((grn / 1.17) * 1.10); // 10% от закупки - НЕ НИША

      dt := DateToStr(Data.DS_Goods.FBN('DATE_ADDED').AsDateTime);
      price := floattostr(Round((aprice + dostavka) / lad));
      TempStr := inttostr(id) + ',' + price + ',' + floattostr(cnt) + ',' + stt +
        ',' + skid + ',' + dt;
      List.Add(TempStr);
      Next;
    end;
    List.SaveToFile(filename);
    List.Free;
    Filter := s;
    Filtered := f;
    EnableControls;
  end;

end;

function TData.LastCurs: Real;
begin
  Result := Data.Database.QueryValue
    ('SELECT CURS.CURS FROM CURS WHERE CURR_ID = 1 ORDER BY CURS."DATE" DESC ROWS 1',
    0);
end;

procedure TData.RecalculateCounts(id: integer);
var
  cnt: double;
  depot_id: integer;
begin
  DS_Depots.DisableControls;
  DS_Goods.DisableControls;
  DS_Depots.First;
  while not DS_Depots.Eof do
  begin
    depot_id := DS_Depots.FBN('ID').AsInteger;
    cnt := TotalDepotCount(id, depot_id);
    Database.Execute('UPDATE GOODS SET C' + inttostr(depot_id) + '=' +
      floattostr(cnt) + ' WHERE ID=' + inttostr(id));
    DS_Depots.Next;
  end;
  DS_Goods.ReopenLocate('ID');
  DS_Depots.EnableControls;
  DS_Goods.EnableControls;
end;

function TData.AllSaled(id: integer): real;
begin
  Result := Data.Database.QueryValue('execute procedure ALL_SALED('+inttostr(id)+')', 0);
end;

function TData.AllSaledOnDate(id: integer; OnDate: TDate;
  Depot: integer): real;
begin
  Result := Data.Database.QueryValue(
    'execute procedure ALL_SALED_ON_DATE('+inttostr(id)+','''+DateToStr(OnDate)+' 23:59:59'','+inttostr(Depot)+')', 0);
end;

function TData.AllArrived(id: integer): real;
begin
  Result := Data.Database.QueryValue('execute procedure ALL_ARRIVED('+inttostr(id)+')', 0);
end;

function TData.AllArrivedOnDate(id: integer; OnDate: TDate;
  Depot: integer): real;
begin
  Result := Data.Database.QueryValue(
    'execute procedure ALL_ARRIVED_ON_DATE('+inttostr(id)+','''+DateToStr(OnDate)+' 23:59:59'','+inttostr(Depot)+')', 0);
end;

function TData.AllMovedOnDate(id: integer; OnDate: TDate;
  Depot: integer): real;
begin
  Result := Data.Database.QueryValue(
    'execute procedure ALL_MOVED_ON_DATE('+inttostr(id)+','''+DateToStr(OnDate)+' 23:59:59'','+inttostr(Depot)+')', 0);
end;

function TData.TotalDepotCount(id, depot_id: integer): real;
var
  ondate: TDateTime;
begin
  ondate := DateUtils.IncYear(now, 100); //shit
  Result := AllArrivedOnDate(id, ondate, depot_id)
          + AllMovedOnDate(id, ondate, depot_id)
          - AllSaledOnDate(id, ondate, depot_id);
end;

function TData.GetLastSalePrice(good_id: integer; cust_id: integer): Variant;
begin
  Result := Data.Database.QueryValue
    ('SELECT SALE.PRICE FROM SALE,SALE_N WHERE (SALE.GOOD_ID = ' +
    inttostr(good_id) + ') AND (SALE_N.CUST_ID = ' + inttostr(cust_id) +
    ') AND (SALE_N.ID = SALE.NAKL_ID) ORDER BY SALE.ID DESC ROWS 1', 0);
end;

function TData.GetLastArrivalPrice(good_id: integer; suppl_id: integer;
  convert: boolean; use_arr_perc: boolean): double;
var
  gid, sid, cnv, uap: string;
begin
  gid := inttostr(good_id);
  sid := inttostr(suppl_id);
  if convert then cnv := '1' else cnv := '0';
  if use_arr_perc then uap := '1' else uap := '0';
  Result := Data.Database.QueryValue(
    'execute procedure GET_LAST_ARRIVAL_PRICE('+gid+','+sid+','+cnv+','+uap+')', 0);
end;

function TData.GetLastArrivalPriceFromDate(good_id: integer; suppl_id: integer;
  from_date: TDate): Variant;
var
  curr: Variant;
begin
  if suppl_id = -1 then
  begin
    Result := Data.Database.QueryValue
      ('SELECT ARRIVAL.PRICE FROM ARRIVAL,ARRIVAL_N WHERE (ARRIVAL.GOOD_ID = ' +
      inttostr(good_id) +
      ') AND (ARRIVAL_N.ID = ARRIVAL.NAKL_ID) AND (ARRIVAL_N.A_DATE >=''' +
      DateToStr(from_date) + ' 00:00:00'') ORDER BY ARRIVAL.ID DESC ROWS 1', 0);
    curr := Data.Database.QueryValue
      ('SELECT ARRIVAL_N.CURR_ID FROM ARRIVAL,ARRIVAL_N WHERE (ARRIVAL.GOOD_ID = '
      + inttostr(good_id) +
      ') AND (ARRIVAL_N.ID = ARRIVAL.NAKL_ID) AND (ARRIVAL_N.A_DATE >=''' +
      DateToStr(from_date) + ' 00:00:00'') ORDER BY ARRIVAL.ID DESC ROWS 1', 0);
  end
  else
  begin
    Result := Data.Database.QueryValue
      ('SELECT ARRIVAL.PRICE FROM ARRIVAL,ARRIVAL_N WHERE (ARRIVAL.GOOD_ID = ' +
      inttostr(good_id) + ') AND (ARRIVAL_N.CUST_ID = ' + inttostr(suppl_id) +
      ') AND (ARRIVAL_N.ID = ARRIVAL.NAKL_ID) AND (ARRIVAL_N.A_DATE >=''' +
      DateToStr(from_date) + ' 00:00:00'') ORDER BY ARRIVAL.ID DESC ROWS 1', 0);
    curr := Data.Database.QueryValue
      ('SELECT ARRIVAL_N.CURR_ID FROM ARRIVAL,ARRIVAL_N WHERE (ARRIVAL.GOOD_ID = '
      + inttostr(good_id) + ') AND (ARRIVAL_N.CUST_ID = ' + inttostr(suppl_id) +
      ') AND (ARRIVAL_N.ID = ARRIVAL.NAKL_ID) AND (ARRIVAL_N.A_DATE >=''' +
      DateToStr(from_date) + ' 00:00:00'') ORDER BY ARRIVAL.ID DESC ROWS 1', 0);
  end;
  if (curr <> 0) and not VarIsNull(curr) then
    Result := RoundTo(Result / LastCurs, -2);
end;

function TData.GetLastArrivalDate(good_id: integer): Variant;
begin
  Result := Data.Database.QueryValue
    ('SELECT ARRIVAL_N.A_DATE FROM ARRIVAL, ARRIVAL_N WHERE (ARRIVAL.GOOD_ID = '
    + inttostr(good_id) +
    ') AND (ARRIVAL_N.ID = ARRIVAL.NAKL_ID) ORDER BY ARRIVAL_N.A_DATE DESC ROWS 1',
    0);
end;

function TData.GetLastSupplier(good_id: integer): integer;
var
  v: Variant;
begin
  v := Data.Database.QueryValue
    ('SELECT ARRIVAL_N.CUST_ID FROM ARRIVAL, ARRIVAL_N WHERE (ARRIVAL.GOOD_ID = '
    + inttostr(good_id) +
    ') AND (ARRIVAL_N.ID = ARRIVAL.NAKL_ID) ORDER BY ARRIVAL_N.A_DATE DESC ROWS 1',
    0);
  Result := -1;
  if not VarIsNull(v) then
    Result := v;
end;

procedure TData.DS_ArrivalAfterDelete(DataSet: TDataSet);
begin
  if (DS_Arrival_N.State <> dsInsert) or (DS_Arrival_N.State <> dsInactive) then
    Data.DS_Arrival_N.Refresh;
end;

procedure TData.DS_ArrivalAfterPost(DataSet: TDataSet);
begin
  if (DS_Arrival_N.State <> dsInsert) or (DS_Arrival_N.State <> dsInactive) then
    Data.DS_Arrival_N.Refresh;
end;

procedure TData.DS_SaleNewRecord(DataSet: TDataSet);
begin
  DS_Sale.FieldByName('DEPOT_ID').AsInteger := FDepot;
end;

procedure TData.DS_SaleAfterDelete(DataSet: TDataSet);
begin
  if (DS_Sale_N.State <> dsInsert) or (DS_Sale_N.State <> dsInactive) then
    Data.DS_Sale_N.Refresh;
  SaleForm.UpdateReqButtons;
end;

procedure TData.DS_SaleAfterPost(DataSet: TDataSet);
begin
  if (DS_Sale_N.State <> dsInsert) or (DS_Sale_N.State <> dsInactive) then
    DS_Sale_N.Refresh;
  SaleForm.UpdateReqButtons;
  FDepot := DS_Sale.FieldByName('DEPOT_ID').AsInteger;
end;

procedure TData.DS_MovesAfterDelete(DataSet: TDataSet);
begin
  if (DS_Moves_N.State <> dsInsert) or (DS_Moves_N.State <> dsInactive) then
    Data.DS_Moves_N.Refresh;
end;

procedure TData.DS_MovesAfterPost(DataSet: TDataSet);
begin
  if (DS_Moves_N.State <> dsInsert) or (DS_Moves_N.State <> dsInactive) then
    Data.DS_Moves_N.Refresh;
end;

procedure TData.DS_ProductionAfterDelete(DataSet: TDataSet);
begin
  if (DS_Production_N.State <> dsInsert) or (DS_Production_N.State <> dsInactive) then
    Data.DS_Production_N.Refresh;
  ProductionForm.UpdateSpecificationFilter;
end;

procedure TData.DS_ProductionAfterPost(DataSet: TDataSet);
begin
  if (DS_Production_N.State <> dsInsert) or (DS_Production_N.State <> dsInactive) then
    Data.DS_Production_N.Refresh;
end;

procedure TData.DS_ProductionEndScroll(DataSet: TDataSet);
begin
  ProductionForm.UpdateSpecificationFilter;
end;

procedure TData.DS_Production_SPAfterDelete(DataSet: TDataSet);
begin
  if (DS_Production.State <> dsInsert) or (DS_Production.State <> dsInactive) then
    Data.DS_Production.Refresh;
end;

procedure TData.DS_Production_SPAfterPost(DataSet: TDataSet);
begin
  if (DS_Production.State <> dsInsert) or (DS_Production.State <> dsInactive) then
    Data.DS_Production.Refresh;
  SPDepot := DS_Production_SP.FieldByName('DEPOT_ID').AsInteger;
end;

procedure TData.DS_Production_SPNewRecord(DataSet: TDataSet);
begin
  DS_Production_SP.FieldByName('DEPOT_ID').AsInteger := SPDepot;
end;

procedure TData.ExcelExportBeforeBuild(Sender: TObject);
begin
  FCounter := 1;
  first_row := true;
  pre_summ := 0;
end;

procedure TData.ExcelExportGetFieldValue(Sender: TObject; const Field: String;
  var Value: OleVariant);
var
  d1, d2: string;
  v: Variant;
  dt: TDateTime;
  price: Real;
  barcode: string;
begin

  if AnsiCompareStr(Field, 'DOC_DESC') = 0 then
    Value := MainForm.GetDocDescription(Query.DS_QueryDolgi.FBN('A_TYPE')
      .AsInteger);

  if AnsiCompareStr(Field, 'BALANCE') = 0 then
    Value := MainForm.client_summ;
  {
    if AnsiCompareStr(Field, 'BC') = 0 then
    begin
    barcode := DS_GOODS.FBN('barcode').AsString;
    if barcode = ''
    then Value := ''
    else Value := ''''+barcode+'''';
    end;
  }

  if AnsiCompareStr(Field, 'REST') = 0 then
  begin
    if first_row then
    begin
      pre_summ := Query.DS_QueryDolgi.FieldByName('SUMM_OUT').AsFloat +
        Query.DS_QueryDolgi.FieldByName('SUMM_IN').AsFloat;
      Value := pre_summ;
      first_row := false;
    end
    else
    begin
      Value := pre_summ + Query.DS_QueryDolgi.FieldByName('SUMM_OUT').AsFloat +
        Query.DS_QueryDolgi.FieldByName('SUMM_IN').AsFloat;
      pre_summ := Value;
    end;
  end;

  if AnsiCompareStr(Field, 'DATE_RANGE') = 0 then
  begin
    d1 := '';
    d2 := '';
    if not VarIsNull(MainForm.edit_acc_datefrom.EditValue) then
      d1 := DateToStr(MainForm.edit_acc_datefrom.EditValue);
    if not VarIsNull(MainForm.edit_acc_dateto.EditValue) then
      d2 := DateToStr(MainForm.edit_acc_dateto.EditValue);
    if (d1 = '') and (d2 = '') then
      Value := 'Отчет по клиенту за весь период'
    else if d1 = '' then
      Value := 'Отчет по клиенту до ' + d2
    else if d2 = '' then
      Value := 'Отчет по клиенту с ' + d1 + ' до ' + DateToStr(Now)
    else
      Value := 'Отчет по клиенту с ' + d1 + ' до ' + d2;
  end;

  if AnsiCompareStr(Field, 'CLIENT_ACC') = 0 then
    Value := Query.DS_QueryClients['PRINTNAME'];

  if AnsiCompareText(Field, 'NUM') = 0 then
  begin
    Value := FCounter;
    inc(FCounter);
  end;

  if AnsiCompareText(Field, 'PRICE_ROST1') = 0 then
  begin
    v := Data.DS_Goods.FBN('PRICE2').AsFloat;
    if VarIsNull(v) then
      Value := 0
    else
      Value := RoundTo(v * 0.89, -2);
  end;

  if AnsiCompareText(Field, 'PRICE_ROST2') = 0 then
  begin
    v := Data.DS_Goods.FBN('PRICE2').AsFloat;
    if VarIsNull(v) then
      Value := 0
    else
      Value := RoundTo(v * 0.90, -2);
  end;

  if AnsiCompareText(Field, 'PRICE_ROST3') = 0 then
  begin
    v := Data.DS_Goods.FBN('PRICE2').AsFloat;
    if VarIsNull(v) then
      Value := 0
    else
      Value := RoundTo(v * 0.92, -2);
  end;

  if AnsiCompareText(Field, 'PRICEPERC_COSM') = 0 then
  begin
    price := Data.DS_Goods.FBN('PRICE2').AsFloat;
    Value := RoundTo(price + price * MainForm.price_perc / 100, -2);
  end;

  if AnsiCompareText(Field, 'PRICE_STDPERC') = 0 then
    if Data.DS_Goods.FieldValues['PRICE2'] <> null then
      Value := RoundTo(Data.DS_Goods['PRICE2'] - Data.DS_Goods['PRICE2'] *
        Data.DS_Defaults['DISCOUNT'] / 100, -2)
    else
      Value := 0;

  if AnsiCompareText(Field, 'ART') = 0 then
  begin
    Value := Data.DS_Goods.FBN('ART_3').AsString;
  end;

  if AnsiCompareText(Field, 'ZPRICE') = 0 then
  begin
    Value := UseMinSupplPrice;
  end;

  if AnsiCompareText(Field, 'TODAY') = 0 then
    Value := Today;

  if AnsiCompareText(Field, 'PRICE2') = 0 then
    Value := Data.DS_Goods.Lookup('ID', Data.DS_Moves['GOOD_ID'], 'PRICE2');

  if AnsiCompareText(Field, 'ART') = 0 then
    Value := Data.DS_Goods.Lookup('ID',
      ExcelExport.DataSet.FieldByName('GOOD_ID').AsInteger, 'ID');

  if AnsiCompareText(Field, 'PRICE_SUPPL') = 0 then
    Value := Data.DS_Goods
      ['SUPL_PRICE_' + inttostr(SupplReportForm.edit_ClientName.ItemIndex + 1)];

  if AnsiCompareText(Field, 'CURR_SUPPL_NAME') = 0 then
    Value := SupplReportForm.edit_ClientName.text;

end;

procedure TData.DS_Return_SupplAfterDelete(DataSet: TDataSet);
begin
  if (DS_Return_Suppl_N.State <> dsInsert) or
    (DS_Return_Suppl_N.State <> dsInactive) then
    Data.DS_Return_Suppl_N.Refresh;
end;

procedure TData.DS_Return_SupplAfterPost(DataSet: TDataSet);
begin
  if (DS_Return_Suppl_N.State <> dsInsert) or
    (DS_Return_Suppl_N.State <> dsInactive) then
    Data.DS_Return_Suppl_N.Refresh;
  RSDepot := DS_Return_Suppl.FieldByName('DEPOT_ID').AsInteger;
end;

procedure TData.DS_Return_SupplNewRecord(DataSet: TDataSet);
begin
  DS_Return_Suppl.FieldByName('DEPOT_ID').AsInteger := RSDepot;
end;

procedure TData.DS_Sale_NAfterRefresh(DataSet: TDataSet);
var
  profit: Real;
begin
  profit := GetProfit;
  if profit = none then
    SaleForm.label_Summ.Hint := 'Прибыль: не хватает данных'
  else
    SaleForm.label_Summ.Hint := 'Прибыль: $' + FloatToStrF(profit,
      ffFixed, 20, 2);
end;

function TData.GetProfit: Real;
var
  summ, summ_la: Variant;
begin
  summ := DS_Sale_N.FieldByName('SUMM').AsFloat;
  summ_la := DS_Sale_N.FieldByName('SUMM_ARRIVAL').AsFloat;
  Result := none;
  if not(VarIsNull(summ) or VarIsNull(summ_la)) then
  begin
    if DS_Sale_N.FieldByName('CURR_ID').AsInteger = 1 // гривна
    then
      Result := (summ / LastCurs) - summ_la
    else
      Result := summ - summ_la;
  end;
end;

procedure TData.DS_KASSAAfterInsert(DataSet: TDataSet);
begin
  if (DS_KASSA.State = dsEdit) or (DS_KASSA.State = dsInsert) then
    DS_KASSA['CURS'] := LastCurs;
end;

procedure TData.DS_ReqListAfterScroll(DataSet: TDataSet);
begin
  SaleForm.UpdateRequirementsFilter;
end;

procedure TData.DeleteFromRequirements(id: integer);
begin
  Data.Database.Execute('delete from Requirements where ORIGINAL_NAKL_ID = ' +
    inttostr(id));
end;

procedure TData.DS_Return_CustAfterDelete(DataSet: TDataSet);
begin
  if (DS_Return_Cust_N.State <> dsInsert) or
    (DS_Return_Cust_N.State <> dsInactive) then
    Data.DS_Return_Cust_N.Refresh;
end;

procedure TData.DS_Return_CustAfterPost(DataSet: TDataSet);
begin
  if (DS_Return_Cust_N.State <> dsInsert) or
    (DS_Return_Cust_N.State <> dsInactive) then
    Data.DS_Return_Cust_N.Refresh;
end;

procedure TData.AfterEdit(DataSet: TDataSet);
begin
  if CanUpdateUser then
    (DataSet as TDataSet).FieldByName('EUSERID').AsInteger := MainForm.user_id;
end;

procedure TData.AfterInsert(DataSet: TDataSet);
begin
  (DataSet as TDataSet).FieldByName('USERID').AsInteger := MainForm.user_id;
end;

procedure TData.ClearUserActivity;
begin
  Data.DS_Users.Locate('ID', MainForm.user_id, []);
  if not Data.DS_Users.FBN('CURRENT_DOC').IsNull then
  begin
    Data.DS_Users.Edit;
    Data.DS_Users.FBN('CURRENT_DOC').Clear;
    Data.DS_Users.FBN('CURRENT_DOC_ID').Clear;
    Data.DS_Users.Post;
    Data.DS_Sale_N.Refresh;
    Data.DS_Moves_N.Refresh;
    Data.DS_Arrival_N.Refresh;
    Data.DS_Production_N.Refresh;
    Data.DS_Return_Cust_N.Refresh;
    Data.DS_Return_Suppl_N.Refresh;
  end;
end;

procedure TData.SetUserActivity(billtype: integer);
var
  doc_id: integer;
begin
  With Data.DS_Users do
  begin
    Locate('ID', MainForm.user_id, []);
    case billtype of
      SL:
        doc_id := Data.DS_Sale_N.FBN('ID').AsInteger;
      MV:
        doc_id := Data.DS_Moves_N.FBN('ID').AsInteger;
      AR:
        doc_id := Data.DS_Arrival_N.FBN('ID').AsInteger;
      PR:
        doc_id := Data.DS_Production_N.FBN('ID').AsInteger;
      RC:
        doc_id := Data.DS_Return_Cust_N.FBN('ID').AsInteger;
      RS:
        doc_id := Data.DS_Return_Suppl_N.FBN('ID').AsInteger;
    else
      exit;
    end;
    Edit;
    FBN('CURRENT_DOC').AsInteger := billtype;
    FBN('CURRENT_DOC_ID').AsInteger := doc_id;
    Post;
    case billtype of
      SL:
        Data.DS_Sale_N.Refresh;
      MV:
        Data.DS_Moves_N.Refresh;
      AR:
        Data.DS_Arrival_N.Refresh;
      RC:
        Data.DS_Return_Cust_N.Refresh;
      RS:
        Data.DS_Return_Suppl_N.Refresh;
    end;
  end;
end;

function TData.BillOpened(bill_type: integer): integer;
var
  v: Variant;
begin
  // Проверяем не открыта ли накладная у другого пользователя
  // Если открыта - возвращаем его ID, если нет: -1
  case bill_type of
    SL:
      v := Data.DS_Sale_N.FBN('EDITINGBY').AsVariant;
    AR:
      v := Data.DS_Arrival_N.FBN('EDITINGBY').AsVariant;
    PR:
      v := Data.DS_Production_N.FBN('EDITINGBY').AsVariant;
    MV:
      v := Data.DS_Moves_N.FBN('EDITINGBY').AsVariant;
    RC:
      v := Data.DS_Return_Cust_N.FBN('EDITINGBY').AsVariant;
    RS:
      v := Data.DS_Return_Suppl_N.FBN('EDITINGBY').AsVariant;
  else
    v := null;
  end;
  if (VarIsNull(v)) or (v = MainForm.user_id) then
    Result := -1
  else
  begin
    Result := v;
    MessageBox(Application.Handle,
      PChar('Накладная редактируется другим пользователем.' + #13#10 +
      'Действие невозможно.'), PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
  end;
end;

function TData.ArrivalRCount: integer;
begin
  Result := Data.Database.QueryValue
    ('SELECT COUNT(ID) FROM ARRIVAL_N WHERE ENTERED = 0', 0);
end;

function TData.SaleRCount: integer;
begin
  Result := Data.Database.QueryValue
    ('SELECT COUNT(ID) FROM SALE_N WHERE ENTERED = 0', 0);
end;

function TData.ProductionRCount: integer;
begin
  Result := Data.Database.QueryValue
    ('SELECT COUNT(ID) FROM PRODUCTION_N WHERE ENTERED = 0', 0);
end;

function TData.MovesRCount: integer;
begin
  Result := Data.Database.QueryValue
    ('SELECT COUNT(ID) FROM DEPOT_MOVES_N WHERE ENTERED = 0', 0);
end;

function TData.RCRCount: integer;
begin
  Result := Data.Database.QueryValue
    ('SELECT COUNT(ID) FROM RETURN_CUST_N WHERE ENTERED = 0', 0);
end;

function TData.RSRCount: integer;
begin
  Result := Data.Database.QueryValue
    ('SELECT COUNT(ID) FROM RETURN_SUPPL_N WHERE ENTERED = 0', 0);
end;

function TData.UseMinSupplPrice;
var
  spl: array [1 .. 6] of double;
begin
  if DS_Goods.FBN('AVAILABLE_1').AsInteger = 1 // Дед
  then
    spl[1] := DS_Goods.FBN('SUPL_PRICE_1').AsFloat
  else
    spl[1] := 999999;

  if DS_Goods.FBN('AVAILABLE_3').AsInteger = 1 // Вова
  then
    spl[2] := DS_Goods.FBN('SUPL_PRICE_3').AsFloat
  else
    spl[2] := 999999;

  if DS_Goods.FBN('AVAILABLE_6').AsInteger = 1 // Днепр
  then
    spl[3] := DS_Goods.FBN('SUPL_PRICE_6').AsFloat
  else
    spl[3] := 999999;

  if DS_Goods.FBN('AVAILABLE_9').AsInteger = 1 // Parfex
  then
    spl[4] := DS_Goods.FBN('SUPL_PRICE_9').AsFloat
  else
    spl[4] := 999999;

  if DS_Goods.FBN('AVAILABLE_4').AsInteger = 1 // Флакон
  then
    spl[5] := DS_Goods.FBN('SUPL_PRICE_4').AsFloat
  else
    spl[5] := 999999;

  if DS_Goods.FBN('AVAILABLE_14').AsInteger = 1 // Олег Косметика
  then
    spl[6] := DS_Goods.FBN('SUPL_PRICE_14').AsFloat
  else
    spl[6] := 999999;

  Result := MinValue(spl);
  if Result = 999999 then
    Result := 0;
  Result := Result + Result * MainForm.price_perc / 100;
end;

function TData.GetGeneralPriceByType(price: Real; type_id: integer): Real;
var
  perc: Real;
begin
  perc := Data.DS_GoodTypes.Lookup('ID', type_id, 'ARR_GEN_PERC');
  Result := RoundTo(price + price * perc / 100, -2);
end;

function TData.GetSpecPriceByType(price: Real; type_id: integer): Real;
var
  perc: Real;
begin
  perc := Data.DS_GoodTypes.Lookup('ID', type_id, 'ARR_SPEC_PERC');
  Result := RoundTo(price + price * perc / 100, -2);
end;

function TData.UseStandartPrice;
var
  price: Real;
begin
  price := Data.DS_Goods.FBN('PRICE2').AsFloat;
  Result := RoundTo(price + price * MainForm.price_perc / 100, -2);
end;

function TData.GetShopPrice: Real;
var
  f: Real;
  proc: Real;
begin
  with DS_Goods do
  begin
    if ItemEditorForm.Visible then
      f := ItemEditorForm.edit_price2.Value
    else
      f := FBN('PRICE2').AsFloat;
    // if fbn('TYPE_ID').AsInteger = 15 //косметика
    // then proc := proc_mag_kosm
    // else proc := proc_mag_parf;
    proc := Data.DS_GoodTypes.Lookup('ID', FBN('TYPE_ID').AsInteger, 'PERC');
    Result := Round((f + f * proc / 100) * DS_Defaults.FBN('CURS').AsFloat);
  end;
end;

function TData.GetNVPrice: Real;
var
  f: Real;
  proc: Real;
begin
  with DS_Goods do
  begin
    if ItemEditorForm.Visible then
      f := ItemEditorForm.edit_price2.Value
    else
      f := FBN('PRICE2').AsFloat;
    if FBN('TYPE_ID').AsInteger = 15 // косметика
    then
      proc := proc_NV_kosm
    else
      proc := proc_NV_parf;
    Result := Round(f * proc * Curs_NoviyVek);
  end;
end;

function TData.CanApplyBill(TableName: string; id: integer): boolean;
var
  fQ: TpFIBQuery;
  fT: TpFIBTransaction;
begin
  fQ := TpFIBQuery.Create(nil);
  fT := TpFIBTransaction.Create(nil);
  try
    fQ.Database := Database;
    fT.DefaultDatabase := Database;
    fQ.Transaction := fT;
    fQ.Options := [qoStartTransaction];
    fQ.SQL.text := 'EXECUTE PROCEDURE CAN_APPLY_' + TableName + '(:id)';
    fQ.ParamByName('id').AsInteger := id;
    fQ.ExecQuery;
    Result := fQ.FieldByName('RESULT').AsBoolean;
  finally
    fQ.Free;
    fT.Free;
  end;
end;

function TData.GetItemUnits(good_id: integer): integer;
begin
  Result := Database.QueryValue('SELECT UNIT FROM GOODS WHERE ID = ' + inttostr(good_id), 0);
end;

end.
