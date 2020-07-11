program Mosquito;

uses
  OneHinstUnit in 'OneHinstUnit.pas',
  Forms,
  SysUtils,
  MainUnit in 'MainUnit.pas' {MainForm},
  Settings in 'Settings.pas',
  DataConteiner in 'DataConteiner.pas' {Data: TDataModule},
  ArrivalUnit in 'ArrivalUnit.pas' {ArrivalForm},
  ItemEditor in 'ItemEditor.pas' {ItemEditorForm},
  SelectGood in 'SelectGood.pas' {SelectGoodForm},
  SplashUnit in 'SplashUnit.pas' {SplashForm},
  SaleUnit in 'SaleUnit.pas' {SaleForm},
  MovesUnit in 'MovesUnit.pas' {MovesForm},
  QueryDataContainer in 'QueryDataContainer.pas' {Query: TDataModule},
  SystemContainerUnit in 'SystemContainerUnit.pas' {SysContainer: TDataModule},
  RetSupplUnit in 'RetSupplUnit.pas' {RetSupplForm},
  FilterUnit in 'FilterUnit.pas' {FilterEditForm},
  MoneyInGoods in 'MoneyInGoods.pas' {MoneyInGoodsForm},
  CalculateSalesUnit in 'CalculateSalesUnit.pas' {CalculateSalesForm},
  ImportExcelSale in 'ImportExcelSale.pas' {ImportExcelSaleForm},
  SelectDepot in 'SelectDepot.pas' {MoneyInDepotsForm},
  procentExport in 'procentExport.pas' {ProcentForm},
  PriceImport in 'PriceImport.pas' {PriceImportForm},
  UnsortedItems in 'UnsortedItems.pas' {UnsortedItemsForm},
  ProgressUnit in 'ProgressUnit.pas' {ProgressForm},
  BannedItemsUnit in 'BannedItemsUnit.pas' {BannedItemsForm},
  SupplReportEdit in 'SupplReportEdit.pas' {SupplReportForm},
  KassaUnit in 'KassaUnit.pas' {KassaForm},
  RetCustUnit in 'RetCustUnit.pas' {RetCustForm},
  DeptReasonSelectUnit in 'DeptReasonSelectUnit.pas' {DebtReasonSelectForm},
  ClientCardUnit in 'ClientCardUnit.pas' {ClientCardForm},
  GoodsFullEdit in 'GoodsFullEdit.pas' {GoodsFullEditForm},
  HistoryUnit in 'HistoryUnit.pas' {HistoryForm},
  Incassation in 'Incassation.pas' {IncassationForm},
  int_const in 'int_const.pas',
  ExternapPriceImportUnit in 'ExternapPriceImportUnit.pas' {ExternalPriceImportForm},
  AuthoriseUnit in 'AuthoriseUnit.pas' {AuthoriseForm},
  ChangePassUnit in 'ChangePassUnit.pas' {ChangePassForm},
  Vcl.Themes,
  Vcl.Styles,
  OptionsUnit in 'OptionsUnit.pas' {OptionsForm},
  WaitUnit in 'WaitUnit.pas' {WaitForm},
  LimitDateUnit in 'LimitDateUnit.pas' {LimitDateForm},
  Top100 in 'Top100.pas' {Top100Form},
  SupplSelector in 'SupplSelector.pas' {SelectSupplForm},
  DiscountsUnit in 'DiscountsUnit.pas' {DiscountsForm},
  EmailSetupUnit in 'EmailSetupUnit.pas' {EmailSetupForm},
  exportcsvUnit in 'exportcsvUnit.pas' {ExportToInternetForm},
  CustomHistoryUnit in 'CustomHistoryUnit.pas' {CustomerHistoryForm},
  mailingunit in 'mailingunit.pas' {MailingProgressForm},
  ProductionUnit in 'ProductionUnit.pas' {ProductionForm};

{$R *.res}

const
  s = 'Инициализация модуля: ';

begin
  Application.Initialize;
  ApplicationPath := ExtractFilePath(Application.ExeName);
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  Application.Title := 'Mosquito Stretch-Film 3.5';
  SplashForm.text.Caption := s + 'MainForm';
  Application.ProcessMessages;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TProductionForm, ProductionForm);
  SplashForm.text.Caption := s + 'ExternalPriceImportForm';
  Application.ProcessMessages;
  Application.CreateForm(TExternalPriceImportForm, ExternalPriceImportForm);
  SplashForm.text.Caption := s + 'AuthoriseForm';
  Application.ProcessMessages;
  Application.CreateForm(TAuthoriseForm, AuthoriseForm);
  SplashForm.text.Caption := s + 'ChangePassForm';
  Application.ProcessMessages;
  Application.CreateForm(TChangePassForm, ChangePassForm);
  SplashForm.text.Caption := s + 'OptionsForm';
  Application.ProcessMessages;
  Application.CreateForm(TOptionsForm, OptionsForm);
  SplashForm.text.Caption := s + 'WaitForm';
  Application.ProcessMessages;
  Application.CreateForm(TWaitForm, WaitForm);
  SplashForm.text.Caption := s + 'LimitDateForm';
  Application.ProcessMessages;
  Application.CreateForm(TLimitDateForm, LimitDateForm);
  SplashForm.text.Caption := s + 'Top100Form';
  Application.ProcessMessages;
  Application.CreateForm(TTop100Form, Top100Form);
  SplashForm.text.Caption := s + 'SelectSupplForm';
  Application.ProcessMessages;
  Application.CreateForm(TSelectSupplForm, SelectSupplForm);
  SplashForm.text.Caption := s + 'DiscountsForm';
  Application.ProcessMessages;
  Application.CreateForm(TDiscountsForm, DiscountsForm);
  SplashForm.text.Caption := s + 'EmailSetupForm';
  Application.ProcessMessages;
  Application.CreateForm(TEmailSetupForm, EmailSetupForm);
  SplashForm.text.Caption := s + 'ExportToInternetForm';
  Application.ProcessMessages;
  Application.CreateForm(TExportToInternetForm, ExportToInternetForm);
  SplashForm.text.Caption := s + 'CustomerHistoryForm';
  Application.ProcessMessages;
  Application.CreateForm(TCustomerHistoryForm, CustomerHistoryForm);
  SplashForm.text.Caption := s + 'MailingProgressForm';
  Application.ProcessMessages;
  Application.CreateForm(TMailingProgressForm, MailingProgressForm);
  MainForm.ProgStarted := false;
  SplashForm.text.Caption := s + 'IncassationForm';
  Application.ProcessMessages;
  Application.CreateForm(TIncassationForm, IncassationForm);
  SplashForm.text.Caption := s + 'CalculateSalesForm';
  Application.ProcessMessages;
  Application.CreateForm(TCalculateSalesForm, CalculateSalesForm);
  SplashForm.text.Caption := s + 'ImportExcelSaleForm';
  Application.ProcessMessages;
  Application.CreateForm(TImportExcelSaleForm, ImportExcelSaleForm);
  SplashForm.text.Caption := s + 'MoneyInDepotsForm';
  Application.ProcessMessages;
  Application.CreateForm(TMoneyInDepotsForm, MoneyInDepotsForm);
  SplashForm.text.Caption := s + 'ProcentForm';
  Application.ProcessMessages;
  Application.CreateForm(TProcentForm, ProcentForm);
  SplashForm.text.Caption := s + 'PriceImportForm';
  Application.ProcessMessages;
  Application.CreateForm(TPriceImportForm, PriceImportForm);
  SplashForm.text.Caption := s + 'UnsortedItemsForm';
  Application.ProcessMessages;
  Application.CreateForm(TUnsortedItemsForm, UnsortedItemsForm);
  SplashForm.text.Caption := s + 'ProgressForm';
  Application.ProcessMessages;
  Application.CreateForm(TProgressForm, ProgressForm);
  SplashForm.text.Caption := s + 'BannedItemsForm';
  Application.ProcessMessages;
  Application.CreateForm(TBannedItemsForm, BannedItemsForm);
  SplashForm.text.Caption := s + 'SupplReportForm';
  Application.ProcessMessages;
  Application.CreateForm(TSupplReportForm, SupplReportForm);
  SplashForm.text.Caption := s + 'KassaForm';
  Application.ProcessMessages;
  Application.CreateForm(TKassaForm, KassaForm);
  SplashForm.text.Caption := s + 'RetCustForm';
  Application.ProcessMessages;
  Application.CreateForm(TRetCustForm, RetCustForm);
  SplashForm.text.Caption := s + 'DebtReasonSelectForm';
  Application.ProcessMessages;
  Application.CreateForm(TDebtReasonSelectForm, DebtReasonSelectForm);
  SplashForm.text.Caption := s + 'ClientCardForm';
  Application.ProcessMessages;
  Application.CreateForm(TClientCardForm, ClientCardForm);
  SplashForm.text.Caption := s + 'GoodsFullEditForm';
  Application.ProcessMessages;
  Application.CreateForm(TGoodsFullEditForm, GoodsFullEditForm);
  SplashForm.text.Caption := s + 'HistoryForm';
  Application.ProcessMessages;
  Application.CreateForm(THistoryForm, HistoryForm);
  SplashForm.text.Caption := s + 'Data';
  Application.ProcessMessages;
  Application.CreateForm(TData, Data);
  SplashForm.text.Caption := s + 'ArrivalForm';
  Application.ProcessMessages;
  Application.CreateForm(TArrivalForm, ArrivalForm);
  SplashForm.text.Caption := s + 'ItemEditorForm';
  Application.ProcessMessages;
  Application.CreateForm(TItemEditorForm, ItemEditorForm);
  SplashForm.text.Caption := s + 'SelectGoodForm';
  Application.ProcessMessages;
  Application.CreateForm(TSelectGoodForm, SelectGoodForm);
  SplashForm.text.Caption := s + 'SaleForm';
  Application.ProcessMessages;
  Application.CreateForm(TSaleForm, SaleForm);
  SplashForm.text.Caption := s + 'MovesForm';
  Application.ProcessMessages;
  Application.CreateForm(TMovesForm, MovesForm);
  SplashForm.text.Caption := s + 'Query';
  Application.ProcessMessages;
  Application.CreateForm(TQuery, Query);
  SplashForm.text.Caption := s + 'SysContainer';
  Application.ProcessMessages;
  Application.CreateForm(TSysContainer, SysContainer);
  SplashForm.text.Caption := s + 'RetSupplForm';
  Application.ProcessMessages;
  Application.CreateForm(TRetSupplForm, RetSupplForm);
  SplashForm.text.Caption := s + 'FilterEditForm';
  Application.ProcessMessages;
  Application.CreateForm(TFilterEditForm, FilterEditForm);
  SplashForm.text.Caption := s + 'MoneyInGoodsForm';
  Application.ProcessMessages;
  Application.CreateForm(TMoneyInGoodsForm, MoneyInGoodsForm);
  SplashForm.text.Caption := 'Загрузка настроек';
  Application.ProcessMessages;
  Settings.LoadSettings;
  SplashForm.Hide;
  SplashForm.Free;

  MainForm.ApplySkin;
  MainForm.ProgStarted := true;

  Application.Run;

  MainForm.ProgStarted := false;

  MoneyInGoodsForm.Free;
  FilterEditForm.Free;
  RetSupplForm.Free;
  SysContainer.Free;
  MovesForm.Free;
  SaleForm.Free;
  SelectGoodForm.Free;
  ItemEditorForm.Free;
  ArrivalForm.Free;
  ClientCardForm.Free;
  DebtReasonSelectForm.Free;
  RetCustForm.Free;
  KassaForm.Free;
  SupplReportForm.Free;
  BannedItemsForm.Free;
  ProgressForm.Free;
  UnsortedItemsForm.Free;
  PriceImportForm.Free;
  ProcentForm.Free;
  MoneyInDepotsForm.Free;
  ImportExcelSaleForm.Free;
  CalculateSalesForm.Free;
  GoodsFullEditForm.Free;
  HistoryForm.Free;
  MainForm.Free;
  Query.Free;
  Data.Free;

end.
