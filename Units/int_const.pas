unit int_const;

interface

uses Graphics;

const

  // Файлы
  inifile = 'mosquito35.ini';

  // Стандартные значения
  default_depotrowcount = 8;

  // Типы накладных
  default = -10;
  ALL = -1; // Все
  SL = 0; // Расходные
  AR = 1; // Приходные
  MV = 2; // Переходные
  RC = 3; // Возврат от покупателя
  RS = 4; // Возврат поставщику
  KS = 5; // Кассовые операции
  DL = 6; // Долг на начало периода
  PR = 7; // Производство
  SP = 8; // Спецификация

  Curs_NoviyVek = 33;
  proc_NV_kosm = 1.25;
  // proc_mag_kosm = 1.25;
  proc_NV_parf = 1.15;
  proc_mag_parf = 1.15;
  none = -123456;

  // Хранимые процедуры
  pExec = '-1';
  pReturn = '1';

  // Цвета
  color_Defect = clNavy;
  color_Minus = clRed;
  color_Wait = $009F9F9F;
  color_CheckProgress = $00F4F2DD;

  // Документы
  tr_Arrival = 0;
  tr_Arr_Exec = 1;
  tr_Arr_Wait = 2;
  tr_Sale = 3;
  tr_Sale_Exec = 4;
  tr_Sale_Wait = 5;
  tr_Production = 6;
  tr_Production_Exec = 7;
  tr_Production_Wait = 8;
  tr_Moves = 9;
  tr_Moves_Exec = 10;
  tr_Moves_Wait = 11;
  tr_Return_Suppl = 12;
  tr_Ret_Suppl_Exec = 13;
  tr_Ret_Suppl_Wait = 14;
  tr_Return_Cust = 15;
  tr_Ret_Cust_Exec = 16;
  tr_Ret_Cust_Wait = 17;
  tr_KASSA = 18;

  // Классификаторы
  tr_GoodTypes = 0;
  tr_Depots = 1;
  tr_Firms = 2;
  tr_Currency = 3;
  tr_Suppliers = 4;
  tr_Customers = 5;
  tr_ImportPrices = 6;
  tr_Prices = 7;
  tr_GenPrice = 8;
  tr_PriceTrash = 9;

  // Отчёты
  tr_Reports = 0;
  tr_GoodsOnDepots = 1;
  tr_AccReport = 2;
  tr_DayReport = 3;
  tr_DolgiKlienta = 4;
  tr_PrintReports = 5;
  tr_PriceReport = 6;
  tr_CountReport_Depots = 7;

  // Настройки
  tr_ReportsSettings = 0;
  tr_DefaultSettings = 1;
  tr_Colors = 2;
  tr_GoodsFullEdit = 3;

implementation

end.
