unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Menus, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, StdActns, Grids,
  Buttons, CustomizeDlg, Mask, DBGridEh, inifiles,
  DBCtrls, DBCtrlsEh, DBLookupEh, DBSumLst, Gauges, DB,
  DateUtils, jpeg, AppEvnts, MATH, StrUtils,
  GridsEh, int_const, ShellApi, DBGridEhGrouping, BandActn, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxBar, cxStyles, cxClasses,
  dxBarApplicationMenu, dxRibbon, dxBarExtItems, SIBEABase, SIBFIBEA,
  dxSkinsdxStatusBarPainter, dxStatusBar, dxGDIPlusClasses, cxContainer,
  cxEdit, cxLabel, cxDBLabel, cxCheckBox, cxBarEditItem, cxTextEdit,
  dxRibbonForm,
  cxMaskEdit, cxButtonEdit, frxClass, frxPreview, cxTimeEdit, cxCalendar,
  cxMemo,
  Vcl.Forms, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, dxRibbonStatusBar,
  cxProgressBar, dxSkinsForm, dxBarExtDBItems, cxDBLookupComboBox,
  cxDBExtLookupComboBox, cxTrackBar, cxHyperLinkEdit, cxInplaceContainer,
  cxVGrid, cxDBVGrid, cxCustomData, cxCustomPivotGrid, cxDBPivotGrid,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCurrencyEdit, Vcl.ActnColorMaps, Themes,
  dxSkinsdxNavBarPainter, dxNavBarGroupItems, dxNavBarCollns, dxNavBarBase,
  dxNavBar, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxListBox, cxDBEdit,
  frxDMPExport, cxImageComboBox, cxPCdxBarPopupMenu, cxPC, cxSplitter,
  cxSpinEdit, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  VCLTee.TeeSpline, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Colorful,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxRibbonCustomizationForm, dxBarBuiltInMenu,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, VCLTee.TeeGDIPlus, System.Actions,
  EhLibVCL, DBAxisGridsEh, dxRibbonBackstageView, System.UITypes;

type
  TMainForm = class(TdxRibbonForm)
    FindDialog: TFindDialog;
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    BarManager: TdxBarManager;
    rib_tab_file: TdxRibbonTab;
    Ribbon: TdxRibbon;
    rib_bar_importprices: TdxBar;
    rib_btn_ImportPrice: TdxBarLargeButton;
    rib_btn_UnsortedImport: TdxBarButton;
    rib_btn_BlackListImport: TdxBarButton;
    rib_btn_ImpPricesClients: TdxBarButton;
    rib_tab_documents: TdxRibbonTab;
    rib_bar_settings: TdxBar;
    rib_bar_documents: TdxBar;
    rib_btn_ArrBills: TdxBarLargeButton;
    rib_btn_SaleBills: TdxBarLargeButton;
    rib_btn_RetSupplBills: TdxBarLargeButton;
    rib_btn_MoveBills: TdxBarLargeButton;
    rib_btn_retcustBills: TdxBarLargeButton;
    rib_bar_money: TdxBar;
    rib_btn_Kassa: TdxBarLargeButton;
    rib_btn_Accounting: TdxBarLargeButton;
    rib_btn_ReportEditor: TdxBarLargeButton;
    rib_btn_Settings: TdxBarLargeButton;
    rib_tab_classificators: TdxRibbonTab;
    rib_bar_classifiers: TdxBar;
    rib_btn_Depots: TdxBarLargeButton;
    rib_btn_Customers: TdxBarLargeButton;
    rib_btn_Suppliers: TdxBarLargeButton;
    rib_bar_prices: TdxBar;
    rib_btn_PriceList: TdxBarLargeButton;
    rib_btn_GoodsOnDepots: TdxBarLargeButton;
    rib_btn_HistoryGoods: TdxBarLargeButton;
    rib_btn_MoneyInGoods: TdxBarButton;
    rib_btn_Val: TdxBarButton;
    rib_btn_PrintReports: TdxBarLargeButton;
    rib_btn_DayReport: TdxBarLargeButton;
    rib_btn_Manufacturers: TdxBarButton;
    rib_btn_Curses: TdxBarButton;
    rib_btn_GoodTypes: TdxBarButton;
    rib_btn_NewSaleBill: TdxBarLargeButton;
    EventAlerter: TSIBfibEventAlerter;
    rib_bar_sale_filters: TdxBar;
    btn_PrevDaySale: TdxBarButton;
    btn_NextDaySale: TdxBarButton;
    StatusBar: TdxRibbonStatusBar;
    btn_TodaySale: TdxBarButton;
    rib_bar_Statusbar: TdxBar;
    progressbar: TdxBarProgressItem;
    btn_ResetSaleFilters: TdxBarButton;
    rib_bar_sale_control: TdxBar;
    btn_sale_execute: TdxBarButton;
    btn_sale_return: TdxBarButton;
    btn_sale_new: TdxBarButton;
    btn_sale_export: TdxBarButton;
    btn_sale_delete: TdxBarButton;
    btn_sale_excelexport: TdxBarButton;
    btn_sale_import: TdxBarButton;
    btn_sale_print: TdxBarButton;
    btn_sale_preview: TdxBarButton;
    btn_sale_edit: TdxBarButton;
    btn_printBills: TdxBarButton;
    btn_sale_colprint: TdxBarButton;
    btn_sale_profit: TdxBarButton;
    btn_sale_pay: TdxBarButton;
    dxSkinController: TdxSkinController;
    ActionList: TActionList;
    act_sale_execute: TAction;
    act_sale_return: TAction;
    act_sale_add: TAction;
    act_sale_delete: TAction;
    act_sale_edit: TAction;
    act_sale_preview: TAction;
    act_sale_print: TAction;
    act_sale_colprint: TAction;
    act_sale_profit: TAction;
    act_sale_excelexport: TAction;
    act_sale_import: TAction;
    act_sale_export: TAction;
    act_sale_pay: TAction;
    act_sale_reset: TAction;
    act_sale_prevday: TAction;
    act_sale_nextday: TAction;
    act_sale_today: TAction;
    act_sale_item_history: TAction;
    act_sale_item_card: TAction;
    act_sale_excelimport: TAction;
    act_cls_pricelist: TAction;
    act_cls_goodtypes: TAction;
    act_cls_depots: TAction;
    act_cls_firms: TAction;
    act_cls_curses: TAction;
    act_cls_suppliers: TAction;
    act_cls_customers: TAction;
    act_cls_extprices: TAction;
    act_rep_goodsondepots: TAction;
    act_rep_lastprices: TAction;
    act_rep_articuls: TAction;
    act_rep_accounting: TAction;
    act_rep_moneyingoods: TAction;
    act_rep_valoviydohod: TAction;
    act_rep_Reports: TAction;
    act_rep_history: TAction;
    act_rep_dayreport: TAction;
    act_doc_sale_wait: TAction;
    act_doc_arr_exec: TAction;
    act_doc_arr_wait: TAction;
    act_doc_moves_exec: TAction;
    act_doc_moves_wait: TAction;
    act_doc_rs_exec: TAction;
    act_doc_rs_wait: TAction;
    act_doc_rc_exec: TAction;
    act_doc_rc_wait: TAction;
    act_doc_kassa: TAction;
    act_doc_sale_exec: TAction;
    act_file_importprice: TAction;
    act_file_lastunsorted: TAction;
    act_file_blacklist: TAction;
    act_file_settings: TAction;
    act_file_reportseditor: TAction;
    act_file_exit: TFileExit;
    act_file_changepass: TAction;
    act_sale_printperiod: TAction;
    btn_changepass: TdxBarLargeButton;
    edit_sale_customer: TcxBarEditItem;
    edit_sale_date: TcxBarEditItem;
    rib_bar_arr_filters: TdxBar;
    rib_bar_arr_control: TdxBar;
    btn_arr_execute: TdxBarButton;
    area_client: TcxPageControl;
    P_Sale_N: TcxTabSheet;
    dxBarDockControl1: TdxBarDockControl;
    P_Arrival_N: TcxTabSheet;
    dxBarDockControl3: TdxBarDockControl;
    P_Moves_N: TcxTabSheet;
    P_Return_Cust_N: TcxTabSheet;
    P_ReturnSuppl_N: TcxTabSheet;
    P_Depots: TcxTabSheet;
    P_Firms: TcxTabSheet;
    P_Suppliers: TcxTabSheet;
    TB_Sale_N: TDBGridEh;
    TB_Arrival_N: TDBGridEh;
    TB_Moves_N: TDBGridEh;
    TB_Return_Cust_N: TDBGridEh;
    TB_Return_Suppl_N: TDBGridEh;
    TB_Depots: TDBGridEh;
    TB_Firms: TDBGridEh;
    TB_Suppliers: TDBGridEh;
    P_GoodTypes: TcxTabSheet;
    P_Customers: TcxTabSheet;
    P_Currency: TcxTabSheet;
    P_Price: TcxTabSheet;
    P_GoodsOnDepots: TcxTabSheet;
    TB_GoodTypes: TDBGridEh;
    TB_Customers: TDBGridEh;
    TB_Price: TDBGridEh;
    TB_GoodsOnDepots: TDBGridEh;
    P_List: TcxTabSheet;
    P_Report: TcxTabSheet;
    P_ImportPrices: TcxTabSheet;
    P_Articuls: TcxTabSheet;
    list_ExecDoc: TListView;
    preview_Report: TfrxPreview;
    TB_ImportPrices: TDBGridEh;
    TB_Articuls: TDBGridEh;
    P_Kassa: TcxTabSheet;
    P_Accounting: TcxTabSheet;
    Panel10: TPanel;
    Panel13: TPanel;
    Image3: TImage;
    lbl_kassa_sum_usd: TLabel;
    Panel16: TPanel;
    Panel14: TPanel;
    TB_KASSA: TDBGridEh;
    Panel8: TPanel;
    Panel9: TPanel;
    Label34: TLabel;
    lbl_vzial: TLabel;
    Panel18: TPanel;
    Label49: TLabel;
    lbl_AccSelSumm: TLabel;
    Panel19: TPanel;
    Label48: TLabel;
    lbl_oplatil: TLabel;
    TB_ClientSelectDolg: TDBGridEh;
    Splitter1: TSplitter;
    TB_Accounting_panel: TPanel;
    TB_Accounting: TDBGridEh;
    acc_date_panel: TPanel;
    P_DayReport: TcxTabSheet;
    TB_DayReport: TDBGridEh;
    sb_DayReport: TPanel;
    Panel20: TPanel;
    Label47: TLabel;
    Label50: TLabel;
    Panel21: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Panel22: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    btn_arr_return: TdxBarButton;
    btn_arr_export: TdxBarButton;
    btn_arr_import: TdxBarButton;
    btn_arr_exportexcel: TdxBarButton;
    btn_arr_colprint: TdxBarButton;
    btn_arr_print: TdxBarButton;
    btn_arr_preview: TdxBarButton;
    btn_arr_edit: TdxBarButton;
    btn_arr_delete: TdxBarButton;
    btn_arr_add: TdxBarButton;
    btn_arr_reset: TdxBarButton;
    btn_arr_today: TdxBarButton;
    btn_arr_nextday: TdxBarButton;
    edit_arr_date: TcxBarEditItem;
    edit_arr_supplier: TcxBarEditItem;
    btn_arr_prevday: TdxBarButton;
    act_arr_execute: TAction;
    act_arr_return: TAction;
    act_arr_add: TAction;
    act_arr_delete: TAction;
    act_arr_edit: TAction;
    act_arr_preview: TAction;
    act_arr_print: TAction;
    act_arr_colprint: TAction;
    act_arr_exportexcel: TAction;
    act_arr_import: TAction;
    act_arr_export: TAction;
    act_arr_nextday: TAction;
    act_arr_prevday: TAction;
    act_arr_today: TAction;
    act_arr_reset: TAction;
    act_arr_importexcel: TAction;
    act_arr_price_spec: TAction;
    act_arr_price_general: TAction;
    act_arr_price_shop1: TAction;
    act_arr_price_shop2: TAction;
    act_arr_history: TAction;
    act_arr_itemcard: TAction;
    act_arr_recalcprices: TAction;
    edit_arr_depot: TdxBarLookupCombo;
    btn_arr_reset_supplier: TdxBarButton;
    btn_arr_reset_depot: TdxBarButton;
    btn_arr_resetdate: TdxBarButton;
    act_arr_reset_date: TAction;
    act_arr_reset_supplier: TAction;
    act_arr_reset_depot: TAction;
    btn_sale_reset_date: TdxBarButton;
    btn_sale_reset_customer: TdxBarButton;
    act_sale_reset_date: TAction;
    act_sale_reset_customer: TAction;
    act_moves_execute: TAction;
    rib_bar_moves_filters: TdxBar;
    rib_bar_moves_control: TdxBar;
    btn_moves_execute: TdxBarButton;
    act_moves_return: TAction;
    act_moves_add: TAction;
    act_moves_delete: TAction;
    act_moves_edit: TAction;
    act_moves_preview: TAction;
    act_moves_print: TAction;
    act_moves_cennik: TAction;
    act_moves_exportexcel: TAction;
    act_moves_import: TAction;
    act_moves_export: TAction;
    act_moves_history: TAction;
    act_moves_itemcard: TAction;
    act_moves_prevday: TAction;
    act_moves_nextday: TAction;
    act_moves_today: TAction;
    act_moves_reset_all: TAction;
    act_moves_reset_date: TAction;
    act_moves_reset_from: TAction;
    act_moves_reset_to: TAction;
    btn_moves_add: TdxBarButton;
    btn_moves_return: TdxBarButton;
    btn_moves_import: TdxBarButton;
    btn_moves_delete: TdxBarButton;
    btn_moves_exportexcel: TdxBarButton;
    btn_moves_cennik: TdxBarButton;
    btn_moves_print: TdxBarButton;
    btn_moves_preview: TdxBarButton;
    btn_moves_edit: TdxBarButton;
    btn_moves_export: TdxBarButton;
    btn_moves_reset_all: TdxBarButton;
    btn_moves_reset_to: TdxBarButton;
    btn_moves_reset_from: TdxBarButton;
    cxBarEditItem1: TcxBarEditItem;
    edit_moves_from: TdxBarLookupCombo;
    edit_moves_to: TdxBarLookupCombo;
    edit_moves_date: TcxBarEditItem;
    btn_moves_nextday: TdxBarButton;
    btn_moves_prevday: TdxBarButton;
    btn_moves_today: TdxBarButton;
    btn_moves_reset_date: TdxBarButton;
    dxBarDockControl2: TdxBarDockControl;
    rib_group_arr_filter: TdxBarGroup;
    rib_group_sale_filter: TdxBarGroup;
    label_ListName: TcxLabel;
    act_rc_execute: TAction;
    act_rc_return: TAction;
    act_rc_add: TAction;
    act_rc_delete: TAction;
    act_rc_edit: TAction;
    act_rc_preview: TAction;
    act_rc_print: TAction;
    act_rc_exportexcel: TAction;
    act_rc_import: TAction;
    act_rc_export: TAction;
    act_rc_prevday: TAction;
    act_rc_nextday: TAction;
    act_rc_today: TAction;
    act_rc_reset_all: TAction;
    act_rc_reset_customer: TAction;
    act_rc_reset_depot: TAction;
    act_rc_reset_date: TAction;
    rib_bar_rc_control: TdxBar;
    rib_bar_rc_filters: TdxBar;
    btn_rc_execute: TdxBarButton;
    btn_rc_return: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btn_rc_export: TdxBarButton;
    btn_rc_import: TdxBarButton;
    btn_rc_exportexcel: TdxBarButton;
    btn_rc_print: TdxBarButton;
    btn_rc_preview: TdxBarButton;
    btn_rc_delete: TdxBarButton;
    btn_rc_new: TdxBarButton;
    btn_rc_reset_all: TdxBarButton;
    edit_rc_date: TcxBarEditItem;
    btn_rc_reset_date: TdxBarButton;
    btn_rc_today: TdxBarButton;
    btn_rc_nextday: TdxBarButton;
    btn_rc_prevday: TdxBarButton;
    btn_rc_reset_customer: TdxBarButton;
    dxBarDockControl4: TdxBarDockControl;
    edit_rc_depot: TdxBarLookupCombo;
    btn_rc_reset_depot: TdxBarButton;
    act_rc_itemcard: TAction;
    act_rc_history: TAction;
    act_rc_percent: TAction;
    act_rc_price_spec: TAction;
    act_rc_price_general: TAction;
    act_rc_price_shop1: TAction;
    act_rc_price_shop2: TAction;
    act_rc_price_last: TAction;
    edit_rc_customer: TcxBarEditItem;
    btn_rc_edit: TdxBarButton;
    rib_group_moves_filter: TdxBarGroup;
    dxBarLargeButton1: TdxBarLargeButton;
    rib_bar_rs_control: TdxBar;
    rib_bar_rs_filters: TdxBar;
    dxBarDockControl5: TdxBarDockControl;
    btn_rs_execute: TdxBarButton;
    btn_rs_return: TdxBarButton;
    btn_rs_add: TdxBarButton;
    btn_rs_exportexcel: TdxBarButton;
    btn_rs_print: TdxBarButton;
    btn_rs_preview: TdxBarButton;
    btn_rs_delete: TdxBarButton;
    btn_rs_edit: TdxBarButton;
    btn_rs_import: TdxBarButton;
    btn_rs_export: TdxBarButton;
    btn_rs_reset_all: TdxBarButton;
    btn_rs_prevday: TdxBarButton;
    btn_rs_reset_date: TdxBarButton;
    btn_rs_today: TdxBarButton;
    edit_rs_date: TcxBarEditItem;
    btn_rs_nextday: TdxBarButton;
    btn_rs_reset_client: TdxBarButton;
    act_rs_execute: TAction;
    act_rs_return: TAction;
    act_rs_add: TAction;
    act_rs_edit: TAction;
    act_rs_delete: TAction;
    act_rs_preview: TAction;
    act_rs_print: TAction;
    act_rs_exportexcel: TAction;
    act_rs_import: TAction;
    act_rs_reset_all: TAction;
    act_rs_reset_date: TAction;
    act_rs_today: TAction;
    act_rs_prevday: TAction;
    act_rs_nextday: TAction;
    act_rs_reset_client: TAction;
    act_rs_itemcard: TAction;
    act_rs_history: TAction;
    act_rs_lastprices: TAction;
    act_rs_export: TAction;
    edit_rs_client: TcxBarEditItem;
    rib_group_rc_filter: TdxBarGroup;
    rib_group_rs_filter: TdxBarGroup;
    dxBarDockControl6: TdxBarDockControl;
    rib_bar_accounting_filters: TdxBar;
    rib_bar_accounting_control: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    btn_acc_reset_dateto: TdxBarButton;
    btn_acc_reset_datefrom: TdxBarButton;
    dxBarButton10: TdxBarButton;
    act_acc_exportexcel: TAction;
    act_acc_print: TAction;
    act_acc_preview: TAction;
    act_acc_showbill: TAction;
    act_acc_closedebt: TAction;
    act_acc_totaldebt: TAction;
    act_acc_reset_all: TAction;
    act_acc_reset_datefrom: TAction;
    act_acc_reset_dateto: TAction;
    act_acc_refresh: TAction;
    edit_acc_datefrom: TcxBarEditItem;
    edit_acc_dateto: TcxBarEditItem;
    btn_acc_exportexcel: TdxBarButton;
    btn_acc_closedebt: TdxBarButton;
    btn_acc_billshow: TdxBarButton;
    btn_acc_preview: TdxBarButton;
    btn_acc_print: TdxBarButton;
    btn_acc_totaldebt: TdxBarButton;
    btn_acc_refresh: TdxBarButton;
    pm_DateRange: TdxBarPopupMenu;
    N48: TdxBarButton;
    N44: TdxBarButton;
    N43: TdxBarButton;
    N45: TdxBarButton;
    N46: TdxBarButton;
    act_acc_date_today: TAction;
    act_acc_date_week: TAction;
    act_acc_date_month: TAction;
    act_acc_date_year: TAction;
    act_acc_date_all: TAction;
    rib_bar_kassa_control: TdxBar;
    rib_bar_kassa_filters: TdxBar;
    dxBarDockControl7: TdxBarDockControl;
    btn_kassa_add: TdxBarButton;
    btn_kassa_gotobill: TdxBarButton;
    btn_kassa_refresh: TdxBarButton;
    btn_kassa_print: TdxBarButton;
    btn_kassa_preview: TdxBarButton;
    btn_kassa_edit: TdxBarButton;
    btn_kassa_delete: TdxBarButton;
    act_kassa_today: TAction;
    act_kassa_prevday: TAction;
    act_kassa_nextday: TAction;
    act_kassa_reset_client: TAction;
    act_kassa_add: TAction;
    act_kassa_delete: TAction;
    act_kassa_edit: TAction;
    act_kass_gotobill: TAction;
    act_kassa_print: TAction;
    act_kassa_preview: TAction;
    act_kassa_refresh: TAction;
    btn_kassa_reset_all: TdxBarButton;
    btn_kassa_reset_date: TdxBarButton;
    edit_kassa_date: TcxBarEditItem;
    btn_kassa_today: TdxBarButton;
    btn_kassa_prevday: TdxBarButton;
    btn_kassa_nextday: TdxBarButton;
    edit_kassa_client: TcxBarEditItem;
    btn_kassa_reset_client: TdxBarButton;
    act_kassa_reset_date: TAction;
    popup_kassa: TdxBarPopupMenu;
    popup_accounting: TdxBarPopupMenu;
    popup_dolgclientlist: TdxBarPopupMenu;
    popup_arrival_n: TdxBarPopupMenu;
    act_client_new: TAction;
    act_client_edit: TAction;
    act_client_delete: TAction;
    dxBarDockControl8: TdxBarDockControl;
    rib_bar_clients: TdxBar;
    btn_client_new: TdxBarButton;
    btn_client_delete: TdxBarButton;
    btn_client_edit: TdxBarButton;
    popup_clients: TdxBarPopupMenu;
    act_ostatki_refresh: TAction;
    dxBarDockControl9: TdxBarDockControl;
    rib_bar_ostatki: TdxBar;
    dxBarButton8: TdxBarButton;
    act_price_new: TAction;
    act_price_newon: TAction;
    act_price_edit: TAction;
    act_price_delete: TAction;
    act_price_restore: TAction;
    act_price_find: TAction;
    act_price_refresh: TAction;
    rib_bar_price: TdxBar;
    dxBarDockControl10: TdxBarDockControl;
    btn_price_new: TdxBarButton;
    btn_price_find: TdxBarButton;
    btn_price_restore: TdxBarButton;
    btn_price_delete: TdxBarButton;
    btn_price_edit: TdxBarButton;
    btn_price_newon: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btn_price_refresh: TdxBarButton;
    btn_price_exportexcel: TdxBarButton;
    pm_ExcelPriceExport: TdxBarPopupMenu;
    N25: TdxBarButton;
    N28: TdxBarButton;
    N24: TdxBarButton;
    N21: TdxBarButton;
    N9: TdxBarButton;
    N8: TdxBarButton;
    N2: TdxBarButton;
    N34: TdxBarButton;
    N3: TdxBarButton;
    N20: TdxBarButton;
    N22: TdxBarButton;
    N41: TdxBarButton;
    N26: TdxBarButton;
    N42: TdxBarButton;
    N12: TdxBarButton;
    N39: TdxBarButton;
    N32: TdxBarButton;
    N10: TdxBarButton;
    N11: TdxBarButton;
    N151: TdxBarButton;
    JaDe1: TdxBarButton;
    N13: TdxBarButton;
    N36: TdxBarButton;
    N38: TdxBarButton;
    N50: TdxBarButton;
    act_his_reset_all: TAction;
    act_his_reset_datefrom: TAction;
    act_his_reset_dateto: TAction;
    act_his_reset_client: TAction;
    act_his_reset_depot: TAction;
    btn_ostatki_find: TdxBarButton;
    Splitter_TreeClient: TcxSplitter;
    area_tree: TcxPageControl;
    P_Reports: TcxTabSheet;
    P_Documents: TcxTabSheet;
    P_Classifiers: TcxTabSheet;
    Tree_Docs: TTreeView;
    Tree_Classifiers: TTreeView;
    Tree_Reports: TTreeView;
    rib_bar_printreport: TdxBar;
    dxBarDockControl11: TdxBarDockControl;
    btn_print_first: TdxBarButton;
    btn_print_last: TdxBarButton;
    btn_print_edit: TdxBarButton;
    btn_print_settings: TdxBarButton;
    btn_print_print: TdxBarButton;
    btn_print_open: TdxBarButton;
    btn_print_save: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarImageCombo1: TdxBarImageCombo;
    cxBarEditItem2: TcxBarEditItem;
    btn_print_prev: TdxBarButton;
    btn_print_next: TdxBarButton;
    btn_print_bigger: TdxBarButton;
    btn_print_smaller: TdxBarButton;
    act_print_prior: TAction;
    act_print_next: TAction;
    act_print_first: TAction;
    act_print_last: TAction;
    act_print_edit: TAction;
    act_print_settings: TAction;
    act_print_print: TAction;
    act_print_open: TAction;
    act_print_save: TAction;
    act_print_smaller: TAction;
    act_print_bigger: TAction;
    btn_print_find: TdxBarButton;
    act_print_find: TAction;
    combo_print_scale: TdxBarImageCombo;
    combo_print_depot: TdxBarLookupCombo;
    btn_print_prepare: TdxBarButton;
    act_print_prepare: TAction;
    btn_print_reset_depot: TdxBarButton;
    act_print_reset_depot: TAction;
    btn_print_ondepot: TdxBarButton;
    act_print_ondepot: TAction;
    check_print_ondepot: TcxBarEditItem;
    popup_newdoc: TdxRibbonPopupMenu;
    act_file_goods_full: TAction;
    btn_admin_fullaccess: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    P_AccReport: TcxTabSheet;
    dxBarButton11: TdxBarButton;
    rib_bar_arep_control: TdxBar;
    dxBarDockControl12: TdxBarDockControl;
    edit_arep_to_date: TcxBarEditItem;
    btn_arep_update: TdxBarButton;
    act_arep_update: TAction;
    dxBarButton12: TdxBarButton;
    act_rep_acc_report: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    TB_AccReport: TDBGridEh;
    lbl_begin_money_in_goods: TcxLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    lbl_dima_money: TcxLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    lbl_sasha_money: TcxLabel;
    lbl_dolgi: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    lbl_suppl_dolg: TcxLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    lbl_rashodi: TcxLabel;
    dxBarEdit1: TdxBarEdit;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarDateCombo1: TdxBarDateCombo;
    edit_arep_from_date: TcxBarEditItem;
    dxBarButton13: TdxBarButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    lbl_all_arrived: TcxLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    lbl_all_saled: TcxLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    lbl_dohod: TcxLabel;
    dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    lbl_end_money_in_goods: TcxLabel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1SpaceItem1: TdxLayoutEmptySpaceItem;
    act_arr_clear_nakl: TAction;
    dxBarButton14: TdxBarButton;
    act_price_recalc_ostatki: TAction;
    dxLayoutControl1Item12: TdxLayoutItem;
    lbl_salary: TcxLabel;
    dxLayoutControl1Item13: TdxLayoutItem;
    lbl_rent: TcxLabel;
    act_sale_req_delete: TAction;
    act_sale_req_add: TAction;
    act_sale_check: TAction;
    dxBarButton15: TdxBarButton;
    act_file_recalc_lux: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    act_arr_reprice: TAction;
    dxBarButton16: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    act_sale_req_clear: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    act_rep_top100: TAction;
    act_sale_req_print: TAction;
    act_sale_req_tosale: TAction;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    act_file_email: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarButton32: TdxBarButton;
    btnColorfulGrid: TdxBarButton;
    rib_btn_CustHistory: TdxBarLargeButton;
    act_rep_customer_history: TAction;
    act_file_prom_export: TAction;
    act_file_prom_import: TAction;
    act_price_shop_edit: TAction;
    act_arr_shopcard: TAction;
    act_sale_shop_card: TAction;
    act_rc_shopcard: TAction;
    act_moves_shopcard: TAction;
    act_rs_shopcard: TAction;
    P_Production_N: TcxTabSheet;
    btn_shop_edit: TdxBarButton;
    dxBarLargeButton8: TdxBarLargeButton;
    act_cls_price_shop: TAction;
    act_shop_find: TAction;
    btn_shop_find: TdxBarButton;
    FindShopDialog: TFindDialog;
    act_shop_edit: TAction;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    act_curs_new: TAction;
    act_curs_delete: TAction;
    act_curs_edit: TAction;
    dxBarButton39: TdxBarButton;
    act_sale_req_import: TAction;
    act_sale_update_prices: TAction;
    act_sale_clear: TAction;
    editCustType: TcxBarEditItem;
    dxBarButton40: TdxBarButton;
    act_price_deselect: TAction;
    dxBarButton41: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    act_doc_prod_exec: TAction;
    act_doc_prod_wait: TAction;
    dxBarDockControl13: TdxBarDockControl;
    rib_bar_prod_filters: TdxBar;
    rib_bar_prod_control: TdxBar;
    TB_Production_N: TDBGridEh;
    rib_btn_ProdBills: TdxBarLargeButton;
    act_prod_new: TAction;
    btn_prod_add: TdxBarButton;
    act_prod_delete: TAction;
    btn_prod_delete: TdxBarButton;
    act_prod_edit: TAction;
    btn_prod_edit: TdxBarButton;
    btn_prod_execute: TdxBarButton;
    btn_prod_return: TdxBarButton;
    act_prod_execute: TAction;
    act_prod_return: TAction;
    act_prod_item_history: TAction;
    act_prod_item_card: TAction;
    act_prod_spec_item_history: TAction;
    act_prod_spec_item_card: TAction;
    act_prod_clear_nakl: TAction;
    act_prod_spec_clear_nakl: TAction;
    act_prod_spec_load_defaults: TAction;
    act_prod_spec_save_defaults: TAction;
    btn_prod_reset_filters: TdxBarButton;
    btn_prod_today: TdxBarButton;
    act_prod_reset: TAction;
    act_prod_today: TAction;
    act_prod_next_day: TAction;
    act_prod_prev_day: TAction;
    act_prod_print: TAction;
    btn_prod_prev_day: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    btn_prod_next_day: TdxBarButton;
    dxBarButton46: TdxBarButton;
    act_prod_reset_date: TAction;
    btn_prod_reset_date: TdxBarButton;
    edit_prod_date: TcxBarEditItem;
    act_prod_reset_depot: TAction;
    edit_prod_depot: TdxBarLookupCombo;
    btn_prod_reset_depot: TdxBarButton;
    rib_group_prod_filter: TdxBarGroup;
    dxBarButton42: TdxBarButton;
    act_prod_preview: TAction;
    procedure FormCreate(Sender: TObject);
    procedure TB_PriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_Arrival_NDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_GoodsOnDepotsColumnsGetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure DefaultChange(Sender: TObject);
    procedure Tree_DocsChange(Sender: TObject; Node: TTreeNode);
    procedure Tree_ReportsChange(Sender: TObject; Node: TTreeNode);
    procedure Tree_ClassifiersChange(Sender: TObject; Node: TTreeNode);
    procedure edit_DateToArrivalChange(Sender: TObject);
    procedure btn_ResetSaleClick(Sender: TObject);
    procedure TB_Sale_NKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_DateToMovesChange(Sender: TObject);
    procedure TB_Moves_NDblClick(Sender: TObject);
    procedure TB_Moves_NKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure list_ExecDocClick(Sender: TObject);
    procedure edit_DateToRetSupplChange(Sender: TObject);
    procedure TB_Return_SupplCellClick(Column: TColumnEh);
    procedure TB_Return_Suppl_NDblClick(Sender: TObject);
    procedure TB_Return_Suppl_NKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FindDialogFind(Sender: TObject);
    procedure TB_GoodsOnDepotsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure combo_SupplierRetSupplFilterChange(Sender: TObject);
    procedure ToolButton42Click(Sender: TObject);
    procedure ToolButton44Click(Sender: TObject);
    procedure TB_Arrival_NKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_GoodsOnDepotsDblClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure JaDe1Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure TB_Sale_NColumns7GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure N36Click(Sender: TObject);
    procedure TB_ArticulsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N38Click(Sender: TObject);
    procedure TB_ArticulsDblClick(Sender: TObject);
    procedure TB_Return_Cust_NDblClick(Sender: TObject);
    procedure TB_Return_Cust_NKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton72Click(Sender: TObject);
    procedure TB_AccountingGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure TB_AccountingKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_AccountingColumns3GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure TB_CustomersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_KASSAColumns6GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure TB_ClientSelectDolgKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_ClientSelectDolgCellClick(Column: TColumnEh);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure N50Click(Sender: TObject);
    procedure TB_KASSAGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure TB_KASSAMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TB_KASSAKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TB_KASSAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_AccountingKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_AccountingMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure TB_AccountingMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TB_KASSAMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mbtn_DayReportClick(Sender: TObject);
    procedure TB_CustomersGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SetTags;
    procedure act_billsExecute(Sender: TObject);
    procedure act_file_settingsExecute(Sender: TObject);
    procedure EventAlerterEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer);
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure act_sale_executeExecute(Sender: TObject);
    procedure act_sale_returnExecute(Sender: TObject);
    procedure act_sale_addExecute(Sender: TObject);
    procedure act_sale_deleteExecute(Sender: TObject);
    procedure act_sale_editExecute(Sender: TObject);
    procedure act_sale_previewExecute(Sender: TObject);
    procedure act_sale_printExecute(Sender: TObject);
    procedure act_sale_colprintExecute(Sender: TObject);
    procedure act_sale_profitExecute(Sender: TObject);
    procedure act_sale_excelexportExecute(Sender: TObject);
    procedure act_sale_importExecute(Sender: TObject);
    procedure act_sale_exportExecute(Sender: TObject);
    procedure act_sale_payExecute(Sender: TObject);
    procedure act_sale_resetExecute(Sender: TObject);
    procedure act_sale_prevdayExecute(Sender: TObject);
    procedure act_sale_nextdayExecute(Sender: TObject);
    procedure act_sale_todayExecute(Sender: TObject);
    procedure TB_Sale_NDblClick(Sender: TObject);
    procedure act_sale_item_historyExecute(Sender: TObject);
    procedure act_sale_item_cardExecute(Sender: TObject);
    procedure act_rep_goodsondepotsExecute(Sender: TObject);
    procedure act_rep_accountingExecute(Sender: TObject);
    procedure act_rep_moneyingoodsExecute(Sender: TObject);
    procedure act_rep_valoviydohodExecute(Sender: TObject);
    procedure act_rep_historyExecute(Sender: TObject);
    procedure act_rep_dayreportExecute(Sender: TObject);
    procedure act_file_changepassExecute(Sender: TObject);
    procedure act_file_importpriceExecute(Sender: TObject);
    procedure act_file_lastunsortedExecute(Sender: TObject);
    procedure act_file_blacklistExecute(Sender: TObject);
    procedure act_file_reportseditorExecute(Sender: TObject);
    procedure act_sale_printperiodExecute(Sender: TObject);
    procedure edit_sale_customerPropertiesCloseUp(Sender: TObject);
    procedure act_arr_executeExecute(Sender: TObject);
    procedure act_arr_addExecute(Sender: TObject);
    procedure act_arr_returnExecute(Sender: TObject);
    procedure act_arr_deleteExecute(Sender: TObject);
    procedure act_arr_editExecute(Sender: TObject);
    procedure act_arr_previewExecute(Sender: TObject);
    procedure act_arr_printExecute(Sender: TObject);
    procedure act_arr_colprintExecute(Sender: TObject);
    procedure act_arr_exportexcelExecute(Sender: TObject);
    procedure act_arr_importExecute(Sender: TObject);
    procedure act_arr_exportExecute(Sender: TObject);
    procedure act_arr_prevdayExecute(Sender: TObject);
    procedure act_arr_nextdayExecute(Sender: TObject);
    procedure act_arr_todayExecute(Sender: TObject);
    procedure act_arr_resetExecute(Sender: TObject);
    procedure act_arr_price_specExecute(Sender: TObject);
    procedure act_arr_price_generalExecute(Sender: TObject);
    procedure act_arr_price_shop1Execute(Sender: TObject);
    procedure act_arr_price_shop2Execute(Sender: TObject);
    procedure act_arr_recalcpricesExecute(Sender: TObject);
    procedure act_arr_itemcardExecute(Sender: TObject);
    procedure act_arr_reset_dateExecute(Sender: TObject);
    procedure act_arr_reset_supplierExecute(Sender: TObject);
    procedure act_arr_reset_depotExecute(Sender: TObject);
    procedure edit_arr_datePropertiesCloseUp(Sender: TObject);
    procedure edit_arr_depotCloseUp(Sender: TObject);
    procedure edit_arr_supplierPropertiesCloseUp(Sender: TObject);
    procedure act_sale_reset_customerExecute(Sender: TObject);
    procedure act_sale_reset_dateExecute(Sender: TObject);
    procedure act_moves_reset_allExecute(Sender: TObject);
    procedure act_moves_prevdayExecute(Sender: TObject);
    procedure act_moves_nextdayExecute(Sender: TObject);
    procedure act_moves_todayExecute(Sender: TObject);
    procedure act_moves_executeExecute(Sender: TObject);
    procedure act_moves_returnExecute(Sender: TObject);
    procedure act_moves_addExecute(Sender: TObject);
    procedure act_moves_deleteExecute(Sender: TObject);
    procedure act_moves_editExecute(Sender: TObject);
    procedure act_moves_previewExecute(Sender: TObject);
    procedure act_moves_printExecute(Sender: TObject);
    procedure act_moves_cennikExecute(Sender: TObject);
    procedure act_moves_exportexcelExecute(Sender: TObject);
    procedure act_moves_importExecute(Sender: TObject);
    procedure act_moves_exportExecute(Sender: TObject);
    procedure act_moves_historyExecute(Sender: TObject);
    procedure act_moves_itemcardExecute(Sender: TObject);
    procedure edit_moves_fromCloseUp(Sender: TObject);
    procedure edit_moves_toCloseUp(Sender: TObject);
    procedure act_moves_reset_dateExecute(Sender: TObject);
    procedure act_moves_reset_fromExecute(Sender: TObject);
    procedure act_moves_reset_toExecute(Sender: TObject);
    procedure SetComboSize(Sender: TObject);
    procedure edit_sale_datePropertiesCloseUp(Sender: TObject);
    procedure act_rc_executeExecute(Sender: TObject);
    procedure act_rc_returnExecute(Sender: TObject);
    procedure act_rc_addExecute(Sender: TObject);
    procedure act_rc_deleteExecute(Sender: TObject);
    procedure act_rc_editExecute(Sender: TObject);
    procedure act_rc_previewExecute(Sender: TObject);
    procedure act_rc_printExecute(Sender: TObject);
    procedure act_rc_exportexcelExecute(Sender: TObject);
    procedure act_rc_exportExecute(Sender: TObject);
    procedure act_rc_prevdayExecute(Sender: TObject);
    procedure act_rc_nextdayExecute(Sender: TObject);
    procedure act_rc_todayExecute(Sender: TObject);
    procedure act_rc_reset_allExecute(Sender: TObject);
    procedure edit_rc_datePropertiesCloseUp(Sender: TObject);
    procedure edit_rc_depotCloseUp(Sender: TObject);
    procedure act_rc_itemcardExecute(Sender: TObject);
    procedure act_rc_percentExecute(Sender: TObject);
    procedure act_rc_price_specExecute(Sender: TObject);
    procedure act_rc_price_generalExecute(Sender: TObject);
    procedure act_rc_price_shop1Execute(Sender: TObject);
    procedure act_rc_price_shop2Execute(Sender: TObject);
    procedure act_rc_price_lastExecute(Sender: TObject);
    procedure act_rc_reset_customerExecute(Sender: TObject);
    procedure act_rc_reset_depotExecute(Sender: TObject);
    procedure act_rc_reset_dateExecute(Sender: TObject);
    procedure edit_rc_customerPropertiesCloseUp(Sender: TObject);
    procedure act_rs_executeExecute(Sender: TObject);
    procedure act_rs_returnExecute(Sender: TObject);
    procedure act_rs_addExecute(Sender: TObject);
    procedure act_rs_deleteExecute(Sender: TObject);
    procedure act_rs_editExecute(Sender: TObject);
    procedure act_rs_previewExecute(Sender: TObject);
    procedure act_rs_printExecute(Sender: TObject);
    procedure act_rs_exportexcelExecute(Sender: TObject);
    procedure act_rs_exportExecute(Sender: TObject);
    procedure act_rs_reset_allExecute(Sender: TObject);
    procedure act_rs_prevdayExecute(Sender: TObject);
    procedure act_rs_nextdayExecute(Sender: TObject);
    procedure act_rs_todayExecute(Sender: TObject);
    procedure edit_rs_datePropertiesCloseUp(Sender: TObject);
    procedure edit_rs_clientCloseUp(Sender: TObject);
    procedure act_rs_historyExecute(Sender: TObject);
    procedure act_rs_itemcardExecute(Sender: TObject);
    procedure act_rs_lastpricesExecute(Sender: TObject);
    procedure act_rs_reset_dateExecute(Sender: TObject);
    procedure act_rs_reset_clientExecute(Sender: TObject);
    procedure edit_rs_clientPropertiesCloseUp(Sender: TObject);
    procedure act_acc_exportexcelExecute(Sender: TObject);
    procedure act_acc_printExecute(Sender: TObject);
    procedure act_acc_previewExecute(Sender: TObject);
    procedure act_acc_showbillExecute(Sender: TObject);
    procedure act_acc_closedebtExecute(Sender: TObject);
    procedure act_acc_totaldebtExecute(Sender: TObject);
    procedure act_acc_reset_allExecute(Sender: TObject);
    procedure act_acc_refreshExecute(Sender: TObject);
    procedure act_acc_date_todayExecute(Sender: TObject);
    procedure act_acc_date_weekExecute(Sender: TObject);
    procedure act_acc_date_monthExecute(Sender: TObject);
    procedure act_acc_date_yearExecute(Sender: TObject);
    procedure act_acc_date_allExecute(Sender: TObject);
    procedure TB_AccountingDblClick(Sender: TObject);
    procedure edit_acc_datefromPropertiesCloseUp(Sender: TObject);
    procedure edit_acc_date_toPropertiesCloseUp(Sender: TObject);
    procedure act_acc_reset_datefromExecute(Sender: TObject);
    procedure act_acc_reset_datetoExecute(Sender: TObject);
    procedure act_kassa_editExecute(Sender: TObject);
    procedure act_kassa_deleteExecute(Sender: TObject);
    procedure act_kass_gotobillExecute(Sender: TObject);
    procedure act_kassa_printExecute(Sender: TObject);
    procedure act_kassa_previewExecute(Sender: TObject);
    procedure act_kassa_refreshExecute(Sender: TObject);
    procedure act_kassa_todayExecute(Sender: TObject);
    procedure act_kassa_prevdayExecute(Sender: TObject);
    procedure act_kassa_nextdayExecute(Sender: TObject);
    procedure edit_kassa_datePropertiesCloseUp(Sender: TObject);
    procedure act_kassa_reset_clientExecute(Sender: TObject);
    procedure edit_kassa_clientPropertiesCloseUp(Sender: TObject);
    procedure act_kassa_reset_dateExecute(Sender: TObject);
    procedure TB_KASSADblClick(Sender: TObject);
    procedure act_kassa_addExecute(Sender: TObject);
    procedure TB_KASSACellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TB_AccountingCellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TB_ClientSelectDolgCellMouseClick(Grid: TCustomGridEh;
      Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
    procedure TB_Arrival_NCellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure act_client_newExecute(Sender: TObject);
    procedure act_client_editExecute(Sender: TObject);
    procedure act_client_deleteExecute(Sender: TObject);
    procedure TB_CustomersDblClick(Sender: TObject);
    procedure TB_CustomersCellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure act_ostatki_refreshExecute(Sender: TObject);
    procedure act_price_newExecute(Sender: TObject);
    procedure act_price_newonExecute(Sender: TObject);
    procedure act_price_editExecute(Sender: TObject);
    procedure act_price_findExecute(Sender: TObject);
    procedure act_price_refreshExecute(Sender: TObject);
    procedure btn_price_exportexcelClick(Sender: TObject);
    procedure TB_PriceDblClick(Sender: TObject);
    procedure act_price_restoreExecute(Sender: TObject);
    procedure act_price_deleteExecute(Sender: TObject);
    procedure edit_kassa_dateChange(Sender: TObject);
    procedure act_his_reset_datefromExecute(Sender: TObject);
    procedure act_his_reset_datetoExecute(Sender: TObject);
    procedure act_his_reset_clientExecute(Sender: TObject);
    procedure act_his_reset_depotExecute(Sender: TObject);
    procedure act_his_reset_allExecute(Sender: TObject);
    procedure area_treeChange(Sender: TObject);
    procedure Tree_ClassifiersChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure Tree_DocsCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure act_print_priorExecute(Sender: TObject);
    procedure act_print_nextExecute(Sender: TObject);
    procedure act_print_editExecute(Sender: TObject);
    procedure act_print_settingsExecute(Sender: TObject);
    procedure act_print_printExecute(Sender: TObject);
    procedure act_print_openExecute(Sender: TObject);
    procedure act_print_saveExecute(Sender: TObject);
    procedure act_print_firstExecute(Sender: TObject);
    procedure act_print_findExecute(Sender: TObject);
    procedure act_print_smallerExecute(Sender: TObject);
    procedure act_print_biggerExecute(Sender: TObject);
    procedure combo_print_scaleCloseUp(Sender: TObject);
    procedure act_print_prepareExecute(Sender: TObject);
    procedure act_print_reset_depotExecute(Sender: TObject);
    procedure act_print_lastExecute(Sender: TObject);
    procedure act_file_goods_fullExecute(Sender: TObject);
    procedure edit_moves_datePropertiesCloseUp(Sender: TObject);
    procedure act_arr_historyExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure act_arep_updateExecute(Sender: TObject);
    procedure act_rep_acc_reportExecute(Sender: TObject);
    procedure act_arr_clear_naklExecute(Sender: TObject);
    procedure TB_ClientSelectDolgColumns2GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure act_price_recalc_ostatkiExecute(Sender: TObject);
    procedure act_sale_req_deleteExecute(Sender: TObject);
    procedure act_sale_req_addExecute(Sender: TObject);
    procedure act_sale_checkExecute(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure act_sale_req_clearExecute(Sender: TObject);
    procedure act_rep_top100Execute(Sender: TObject);
    procedure act_sale_req_printExecute(Sender: TObject);
    procedure TB_Sale_NGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure act_file_emailExecute(Sender: TObject);
    procedure TB_PriceGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnColorfulGridClick(Sender: TObject);
    procedure act_rep_customer_historyExecute(Sender: TObject);
    procedure act_arr_shopcardExecute(Sender: TObject);
    procedure act_sale_shop_cardExecute(Sender: TObject);
    procedure act_rc_shopcardExecute(Sender: TObject);
    procedure act_moves_shopcardExecute(Sender: TObject);
    procedure act_rs_shopcardExecute(Sender: TObject);
    procedure act_sale_req_importExecute(Sender: TObject);
    procedure act_sale_req_tosaleExecute(Sender: TObject);
    procedure act_sale_update_pricesExecute(Sender: TObject);
    procedure act_sale_clearExecute(Sender: TObject);
    procedure TB_ClientSelectDolgGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure editCustTypePropertiesEditValueChanged(Sender: TObject);
    procedure P_PriceShow(Sender: TObject);
    procedure P_PriceHide(Sender: TObject);
    procedure P_GoodsOnDepotsShow(Sender: TObject);
    procedure P_GoodsOnDepotsHide(Sender: TObject);
    procedure act_price_deselectExecute(Sender: TObject);
    procedure act_classifiersExecute(Sender: TObject);
    procedure act_prod_newExecute(Sender: TObject);
    procedure act_prod_deleteExecute(Sender: TObject);
    procedure act_prod_editExecute(Sender: TObject);
    procedure TB_Production_NKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TB_Production_NDblClick(Sender: TObject);
    procedure act_prod_item_historyExecute(Sender: TObject);
    procedure act_prod_item_cardExecute(Sender: TObject);
    procedure act_prod_spec_item_historyExecute(Sender: TObject);
    procedure act_prod_spec_item_cardExecute(Sender: TObject);
    procedure act_prod_clear_naklExecute(Sender: TObject);
    procedure act_prod_spec_clear_naklExecute(Sender: TObject);
    procedure act_prod_spec_save_defaultsExecute(Sender: TObject);
    procedure act_prod_spec_load_defaultsExecute(Sender: TObject);
    procedure act_prod_executeExecute(Sender: TObject);
    procedure act_prod_returnExecute(Sender: TObject);
    procedure cxBarEditItem3PropertiesCloseUp(Sender: TObject);
    procedure edit_prod_depotEnter(Sender: TObject);
    procedure edit_prod_depotCloseUp(Sender: TObject);
    procedure act_prod_resetExecute(Sender: TObject);
    procedure act_prod_todayExecute(Sender: TObject);
    procedure act_prod_next_dayExecute(Sender: TObject);
    procedure act_prod_prev_dayExecute(Sender: TObject);
    procedure act_prod_reset_dateExecute(Sender: TObject);
    procedure act_prod_reset_depotExecute(Sender: TObject);
    procedure act_prod_previewExecute(Sender: TObject);
    procedure act_prod_printExecute(Sender: TObject);
  private
    kassa_sum, kassa_sum_usd, kassa_sum_uah: real;
    firstrun: Boolean;
    isMyApplyActivity: Boolean;
    procedure UpdateDocumentsWindow;
    procedure UpdateClassifiersWindow;
    procedure UpdateReportsWindow;
    procedure SetRetCustButtons;
    procedure SetRetSupplButtons;
    procedure SetPriceButtons;
    procedure SetArticulNames;
    procedure SetRangeText;
    function CountsNotNull: Boolean;
    function CurBill: Integer;
    procedure UpdateTreeText(EventName: String);
    procedure ForceUpdateTreeText;
    procedure Event_MOVES_N;
    procedure Event_ENT_MOVES_N;
    procedure Event_ARR_N;
    procedure Event_ENT_ARR_N;
    procedure Event_SALE_N;
    procedure Event_ENT_SALE_N;
    procedure Event_PROD_N;
    procedure Event_ENT_PROD_N;
    procedure Event_RETCUST_N;
    procedure Event_ENT_RETCUST_N;
    procedure Event_RETSUPPL_N;
    procedure Event_ENT_RETSUPPL_N;
    procedure Event_ALL;
  public
    price_perc: real;
    DepotOnPrint: Integer;
    ProgStarted: Boolean;
    Kassa_Date_From_Checked: Boolean;
    Kassa_Date_To_Checked: Boolean;
    LastClientSelected: Integer;
    client_summ: real;
    client_summ_in: real;
    client_summ_out: real;
    event_locked: Boolean;
    user_id: Integer;
    kassaFromDate: TDateTime;
    kassaToDate: TDateTime;
    SecKey: Boolean;
    procedure ExportParfToExcel(filename: string; percent: real; where: string);
    procedure FillComboCustomers;
    procedure FillCustomers(combo: TcxBarEditItem);
    procedure FillCustomers_edit(combo: TcxDBImageComboBox);
    procedure AddPayment;
    procedure ApplySkinToForm(form: TForm);
    procedure ApplySkinToTable(Grid: TDBGridEh);
    procedure ApplySkin;
    procedure IndicatorON;
    procedure IndicatorOFF;
    procedure AccSelectionCalc;
    procedure KassaSelectionCalc;
    procedure SetDepotNames;
    procedure UpdatePrintedStatus_Sale;
    procedure UpdatePrintedStatus_Move;
    function GetDolg(client_id: Integer; Date: TDate): real;
    function GetAllClientsDolg(dt: string): real;
    function GetAllSuppliersDolg(dt: string): real;
    function GetDocDescription(tp: Integer): string;
    function GetArrivalPeriod(df, dt: string): real;
    function GetSalePeriod(df, dt: string): real;
    function GetMoneyInGoods(dt: String): real;
    function GetOfficeExpenses(dt_from, dt_to: string): real;
    function GetRentExpenses(dt_from, dt_to: string): real;
    function GetSalaryExpenses(dt_from, dt_to: string): real;
    procedure GotoSaleBill(nakl_id: Integer);
    procedure SetAccReportFilter;
    procedure SetArrivalFilter;
    procedure SetExecSaleFilter;
    procedure SetWaitSaleFilter;
    procedure SetSaleFilter;
    procedure SetExecProductionFilter;
    procedure SetWaitProductionFilter;
    procedure SetProductionFilter;
    procedure SetMovesFilter;
    procedure SetExecMovesFilter;
    procedure SetWaitMovesFilter;
    procedure SetAccountingFilter;
    procedure SetAccountingListFilter;
    procedure SetKassaFilter;
    procedure SetReturnSupplFilter;
    procedure SetRetCustFilter;
    procedure SetDayReportFilter;

    procedure SetSaleTittle;
    procedure SetArrivalTittle;
    procedure SetProductionTittle;
    procedure SetMovesTittle;
    procedure SetReturnSupplTittle;
    procedure SetRetCustTittle;

    procedure SetMovesButtons;
    procedure SetMovesButtonsWait;
    procedure SetMovesButtonsExec;
    procedure SetArrivalButtons;
    procedure SetSaleButtons;
    procedure SetSaleButtonsWait;
    procedure SetSaleButtonsExec;
    procedure SetProductionButtons;
    procedure SetProductionButtonsWait;
    procedure SetProductionButtonsExec;

  end;

var
  MainForm: TMainForm;

implementation

uses
  DataConteiner, ArrivalUnit, ItemEditor, SelectGood, SaleUnit,
  MovesUnit, QueryDataContainer, SystemContainerUnit, RetSupplUnit,
  Settings, CalculateSalesUnit, SelectDepot,
  procentExport, PriceImport, UnsortedItems, BannedItemsUnit,
  SupplReportEdit, KassaUnit, RetCustUnit, DeptReasonSelectUnit,
  ClientCardUnit, GoodsFullEdit, HistoryUnit, ExternapPriceImportUnit,
  AuthoriseUnit, ChangePassUnit, ImportExcelSale, OptionsUnit,
  WaitUnit, ProgressUnit, repricedialog, Top100, SupplSelector, CONF_SKU_Unit,
  EmailSetupUnit, exportcsvUnit, CustomHistoryUnit, ShopProduct, SelectShopGood,
  mailingunit, CursEditUnit, NewCursUnit, ProductionUnit;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
  I: TIniFile;
  WS: String;
begin
  firstrun := true;
  SecKey := false;
  event_locked := false;
  isMyApplyActivity := false;
  Tree_Docs.FullExpand;
  Tree_Reports.FullExpand;
  Tree_Classifiers.FullExpand;
  edit_arr_date.EditValue := Now;
  edit_sale_date.EditValue := Now;
  edit_prod_date.EditValue := Now;
  edit_moves_date.EditValue := Now;
  edit_rs_date.EditValue := Now;
  edit_rc_date.EditValue := Now;
  edit_acc_datefrom.EditValue := IncMonth(Now, -1);
  edit_acc_dateto.EditValue := Now;
  edit_arep_to_date.EditValue := Today;
  edit_arep_from_date.EditValue := IncMonth(Today, -1);
  I := TIniFile.Create(ExtractFilePath(Application.ExeName) + inifile);
  Top := I.ReadInteger('MainForm', 'Top', 0);
  Left := I.ReadInteger('MainForm', 'Left', 0);
  Width := I.ReadInteger('MainForm', 'Width', 800);
  Height := I.ReadInteger('MainForm', 'Height', 600);
  WS := I.ReadString('MainForm', 'WindowState', 'Maximized');
  if WS = 'Maximized' then
    WindowState := wsMaximized;
  if WS = 'Minimized' then
    Application.Minimize;
  if WS = 'Normal' then
    WindowState := wsNormal;
  area_tree.Width := I.ReadInteger('MainForm', 'Splitter', 280);
  LastClientSelected := -1;
  I.Free;
  SetTags;
  BarManager.IniFileName := ApplicationPath + inifile;
  rib_tab_documents.Active := true;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssShift, ssAlt, ssCtrl] then
    SecKey := true;

end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SecKey := false;
end;

procedure TMainForm.ApplySkinToForm(form: TForm);
var
  I: Integer;
begin
  for I := 0 to (form as TForm).ComponentCount - 1 do
    if (form as TForm).Components[I] is TDBGridEh then
      ApplySkinToTable((form as TForm).Components[I] as TDBGridEh);
end;

procedure TMainForm.ApplySkin;
begin
  ApplySkinToForm(MainForm);
  ApplySkinToForm(KassaForm);
  ApplySkinToForm(SaleForm);
  ApplySkinToForm(ArrivalForm);
  ApplySkinToForm(MovesForm);
  ApplySkinToForm(BannedItemsForm);
  ApplySkinToForm(GoodsFullEditForm);
  ApplySkinToForm(HistoryForm);
  ApplySkinToForm(ItemEditorForm);
  ApplySkinToForm(MoneyInDepotsForm);
  ApplySkinToForm(PriceImportForm);
  ApplySkinToForm(RetCustForm);
  ApplySkinToForm(RetSupplForm);
  ApplySkinToForm(SelectGoodForm);
  ApplySkinToForm(UnsortedItemsForm);
  with RootLookAndFeel.Painter do
  begin
    Tree_Docs.Color := DefaultContentColor;
    Tree_Docs.Font.Color := DefaultContentTextColor;
    Tree_Reports.Color := DefaultContentColor;
    Tree_Reports.Font.Color := DefaultContentTextColor;
    Tree_Classifiers.Color := DefaultContentColor;
    Tree_Classifiers.Font.Color := DefaultContentTextColor;
  end;
end;

procedure TMainForm.SetTags;
begin
  act_cls_goodtypes.Tag := tr_GoodTypes;
  act_cls_depots.Tag := tr_Depots;
  act_cls_firms.Tag := tr_Firms;
  act_cls_curses.Tag := tr_Currency;
  act_cls_suppliers.Tag := tr_Suppliers;
  act_cls_customers.Tag := tr_Customers;
  act_cls_extprices.Tag := tr_ImportPrices;
  act_cls_pricelist.Tag := tr_GenPrice;

  act_doc_sale_exec.Tag := tr_sale_exec;
  act_doc_sale_wait.Tag := tr_sale_wait;
  act_doc_arr_exec.Tag := tr_arr_exec;
  act_doc_arr_wait.Tag := tr_arr_wait;
  act_doc_prod_exec.Tag := tr_production_exec;
  act_doc_prod_wait.Tag := tr_production_wait;
  act_doc_moves_exec.Tag := tr_moves_exec;
  act_doc_moves_wait.Tag := tr_moves_wait;
  act_doc_rs_exec.Tag := tr_ret_suppl_exec;
  act_doc_rs_wait.Tag := tr_ret_suppl_wait;
  act_doc_rc_exec.Tag := tr_ret_cust_exec;
  act_doc_rc_wait.Tag := tr_ret_cust_wait;
  act_doc_kassa.Tag := tr_kassa;

end;

procedure TMainForm.UpdateDocumentsWindow;
begin
  case Tree_Docs.Selected.AbsoluteIndex of
    tr_Arrival:
      begin
        label_ListName.Caption := 'Приходные накладные';
        area_client.ActivePage := P_List;
      end;
    tr_arr_exec:
      begin
        label_ListName.Caption := 'Приходные накладные (Выполненные)';
        SetArrivalFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Arrival_N;
      end;
    tr_arr_wait:
      begin
        label_ListName.Caption := 'Приходные накладные (На очереди)';
        SetArrivalFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Arrival_N;
      end;
    tr_Sale:
      begin
        label_ListName.Caption := 'Расходные накладные';
        area_client.ActivePage := P_List;
      end;
    tr_sale_exec:
      begin
        label_ListName.Caption := 'Расходные накладные (Выполненные)';
        SetSaleFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Sale_N;
      end;
    tr_sale_wait:
      begin
        label_ListName.Caption := 'Расходные накладные (На очереди)';
        SetSaleFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Sale_N;
      end;
    tr_production:
      begin
        label_ListName.Caption := 'Производство';
        area_client.ActivePage := P_List;
      end;
    tr_production_exec:
      begin
        label_ListName.Caption := 'Производство (Выполненные)';
        SetProductionFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Production_N;
      end;
    tr_production_wait:
      begin
        label_ListName.Caption := 'Производство (На очереди)';
        SetProductionFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Production_N;
      end;
    tr_Moves:
      begin
        label_ListName.Caption := 'Переходные накладные';
        area_client.ActivePage := P_List;
      end;
    tr_moves_exec:
      begin
        label_ListName.Caption := 'Переходные накладные (Выполненные)';
        SetMovesFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Moves_N;
      end;
    tr_moves_wait:
      begin
        label_ListName.Caption := 'Переходные накладные (На очереди)';
        SetMovesFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Moves_N;
      end;
    tr_Return_Suppl:
      begin
        label_ListName.Caption := 'Возврат поставщику';
        area_client.ActivePage := P_List;
      end;
    tr_ret_suppl_exec:
      begin
        label_ListName.Caption := 'Возврат поставщику (Выполненные)';
        SetReturnSupplFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_ReturnSuppl_N;
      end;
    tr_ret_suppl_wait:
      begin
        label_ListName.Caption := 'Возврат поставщику (На очереди)';
        SetReturnSupplFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_ReturnSuppl_N;
      end;
    tr_Return_Cust:
      begin
        label_ListName.Caption := 'Возврат от клиента';
        area_client.ActivePage := P_List;
      end;
    tr_ret_cust_exec:
      begin
        label_ListName.Caption := 'Возврат от клиента (Выполненные)';
        SetRetCustFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Return_Cust_N;
      end;
    tr_ret_cust_wait:
      begin
        label_ListName.Caption := 'Возврат от клиента (На очереди)';
        SetRetCustFilter;
        Data.DS_Goods.Filtered := false;
        Data.DS_Goods.Refresh;
        area_client.ActivePage := P_Return_Cust_N;
      end;

    tr_kassa:
      begin
        label_ListName.Caption := 'Касса';
        SetKassaFilter;
        area_client.ActivePage := P_Kassa;
      end;
  end;
end;

procedure TMainForm.UpdateClassifiersWindow;
begin
  case Tree_Classifiers.Selected.AbsoluteIndex of
    tr_GoodTypes:
      begin
        label_ListName.Caption := 'Виды товара';
        area_client.ActivePage := P_GoodTypes;
      end;
    tr_Depots:
      begin
        label_ListName.Caption := 'Склады';
        area_client.ActivePage := P_Depots;
      end;
    tr_Firms:
      begin
        label_ListName.Caption := 'Производители';
        area_client.ActivePage := P_Firms;
      end;
    tr_Currency:
      begin
        label_ListName.Caption := 'Курсы валют';
        area_client.ActivePage := P_Currency;
      end;
    tr_Suppliers:
      begin
        label_ListName.Caption := 'Поставщики';
        area_client.ActivePage := P_Suppliers;
      end;
    tr_Customers:
      begin
        label_ListName.Caption := 'Клиенты';
        area_client.ActivePage := P_Customers;
      end;
    tr_ImportPrices:
      begin
        label_ListName.Caption := 'Клиенты для учета цен';
        area_client.ActivePage := P_ImportPrices;
      end;

    {
      tr_GenPrice:
      begin
      label_ListName.Caption:='Прайс-лист';
      Data.DS_EXT_PRICE.Close;
      Data.DS_Goods.Close;
      Data.DS_Goods.SelectSQL.Text := 'select * from goods where deleted=0 order by fullname';
      Data.DS_Goods.Open;
      Data.DS_Goods.Refresh;
      SetPriceButtons;
      Area_Client.ActivePage:=P_Price;
      end;
    }

    tr_GenPrice:
      begin
        label_ListName.Caption := 'Прайс-лист';
        Data.DS_Goods.Filter := '(DELETED = 0)';
        Data.DS_Goods.Filtered := true;
        Data.DS_Goods.Refresh;
        SetPriceButtons;
        area_client.ActivePage := P_Price;
      end;

    tr_PriceTrash:
      begin
        label_ListName.Caption := 'Прайс-лист (Корзина)';
        Data.DS_Goods.Filter := 'DELETED=1';
        Data.DS_Goods.Filtered := true;
        Data.DS_Goods.Refresh;
        SetPriceButtons;
        area_client.ActivePage := P_Price;
      end;
  end;
end;

procedure TMainForm.TB_PriceDblClick(Sender: TObject);
begin
  act_price_edit.Execute;
end;

procedure TMainForm.TB_PriceGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Sender As TDBGridEh).DataSource.DataSet.FieldByName('TYPE_ID')
    .AsInteger = -1 then
    Background := clCream;
  if (Sender As TDBGridEh).DataSource.DataSet.FieldByName('SELECTED')
    .AsInteger = 1 then
    Background := clMoneyGreen;
end;

procedure TMainForm.TB_PriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Insert then
    if ssCtrl in Shift then
      act_price_newon.Execute
    else
      act_price_new.Execute;
  if Key = VK_Delete then
    act_price_delete.Execute;
  if (Key = VK_Return) or (Key = VK_F1) then
    act_price_edit.Execute;

  if (Key = VK_F6) then
    act_price_shop_edit.Execute;

  if Key = VK_F3 then
    act_price_find.Execute;

  if Key = VK_F4 then
    HistoryForm.ShowEx(Data.DS_Goods.fbn('ID').AsInteger, all);

end;

procedure TMainForm.TB_Production_NDblClick(Sender: TObject);
begin
  act_prod_edit.Execute;
end;

procedure TMainForm.TB_Production_NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return:
      act_prod_edit.Execute;
    VK_F5:
      if not act_prod_execute.Execute then
        act_prod_return.Execute
  end;
end;

function TMainForm.CountsNotNull: Boolean;
begin
  Result := false;
  With Data.DS_Goods do
    if (FieldValues['C0'] = 0) and (FieldValues['C1'] = 0) and
      (FieldValues['C2'] = 0) and (FieldValues['C3'] = 0) and
      (FieldValues['C4'] = 0) and (FieldValues['C5'] = 0) and
      (FieldValues['C6'] = 0) and (FieldValues['C7'] = 0) and
      (FieldValues['C8'] = 0) and (FieldValues['C9'] = 0) and
      (FieldValues['C10'] = 0) and (FieldValues['C11'] = 0) and
      (FieldValues['C12'] = 0) and (FieldValues['C13'] = 0) and
      (FieldValues['C14'] = 0) and (FieldValues['C15'] = 0) and
      (FieldValues['C16'] = 0) and (FieldValues['C17'] = 0) and
      (FieldValues['C18'] = 0) and (FieldValues['C19'] = 0) and
      (FieldValues['C20'] = 0) then
      Result := true;
end;

procedure TMainForm.TB_Arrival_NCellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) and (Data.DS_Arrival_N.RecordCount > 0) then
    popup_arrival_n.PopupFromCursorPos;
end;

procedure TMainForm.TB_Arrival_NDblClick(Sender: TObject);
begin
  act_arr_edit.Execute;
end;

procedure TMainForm.SetRetCustTittle;
begin
  if Data.DS_Return_Cust_N.VisibleRecordCount > 0 then
    RetCustForm.Caption := 'Возвратная накладная от клиента № ' +
      inttostr(Data.DS_Return_Cust_N['ID'])
  else
    RetCustForm.Close;
end;

procedure TMainForm.SetArrivalTittle;
begin
  if Data.DS_Arrival_N.VisibleRecordCount > 0 then
    ArrivalForm.Caption := 'Приходная накладная № ' +
      inttostr(Data.DS_Arrival_N.FBN('ID').AsInteger)
  else
    ArrivalForm.Close;
end;

procedure TMainForm.SetProductionTittle;
begin
    if Data.DS_Production_N.VisibleRecordCount > 0 then
    ProductionForm.Caption := 'Производство. Накладная № ' +
      inttostr(Data.DS_Production_N.FBN('ID').AsInteger)
  else
    ProductionForm.Close;
end;

procedure TMainForm.SetSaleTittle;
begin
  if Data.DS_Sale_N.VisibleRecordCount > 0 then
    SaleForm.Caption := 'Расходная накладная № ' +
      inttostr(Data.DS_Sale_N['ID']);
end;

procedure TMainForm.SetMovesTittle;
begin
  if Data.DS_Moves_N.VisibleRecordCount > 0 then
    MovesForm.Caption := 'Накладная перемещения № ' +
      inttostr(Data.DS_Moves_N['ID'])
  else
    MovesForm.Close;
end;

procedure TMainForm.SetReturnSupplTittle;
begin
  if Data.DS_Return_Suppl_N.VisibleRecordCount > 0 then
    RetSupplForm.Caption := 'Возврат поставщику. Накладная № ' +
      inttostr(Data.DS_Return_Suppl_N['ID'])
  else
    RetSupplForm.Close;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  Tree_Docs.Select(Tree_Docs.Items[tr_sale_wait]);
  Tree_Classifiers.Select(Tree_Classifiers.Items[tr_GenPrice]);
  Tree_Reports.Select(Tree_Reports.Items[tr_GoodsOnDepots]);
  area_tree.ActivePage := P_Documents;
  UpdateClassifiersWindow;
  UpdateReportsWindow;
  UpdateDocumentsWindow;
  ForceUpdateTreeText;
  area_treeChange(Self);
end;

procedure TMainForm.UpdateReportsWindow;
begin
  case Tree_Reports.Selected.AbsoluteIndex of
    tr_GoodsOnDepots:
      begin
        label_ListName.Caption := 'Остаток товара';
        Data.DS_Depots.DisableControls;
        try
          SetDepotNames;
        finally
          Data.DS_Depots.EnableControls;
        end;
        Data.DS_Goods.Filter := 'DELETED=0';
        Data.DS_Goods.Filtered := true;
        Data.DS_Goods.Refresh;
        Data.DS_Depots.Refresh;
        area_client.ActivePage := P_GoodsOnDepots;
      end;
    tr_CountReport_Depots:
      begin
        label_ListName.Caption := 'Общее количество на складе';
        preview_Report.Clear;
        area_client.ActivePage := P_Report;
        check_print_ondepot.enabled := true;
        act_print_edit.enabled := false;
      end;
    tr_DolgiKlienta:
      begin
        label_ListName.Caption := 'Взаиморасчеты по клиенту';
        act_acc_refresh.Execute;
        area_client.ActivePage := P_Accounting;
      end;
    tr_DayReport:
      begin
        label_ListName.Caption := 'Полный отчёт';
        SetDayReportFilter;
        area_client.ActivePage := P_DayReport;
      end;
    tr_AccReport:
      begin
        label_ListName.Caption := 'Отчёт за период';
        // SetAccReportFilter;
        area_client.ActivePage := P_AccReport;
      end;
  end;
end;

procedure TMainForm.TB_GoodsOnDepotsColumnsGetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
var
  c_name, cb_name: string;
  c, cb: real;
begin
  cb_name := (Sender as TDBGridColumnEh).FieldName;
  c_name := cb_name;
  Delete(c_name, 2, 1);
  c := RoundTo(Data.DS_Goods.fbn(c_name).AsFloat, -2);
  cb := RoundTo(Data.DS_Goods.fbn(cb_name).AsFloat, -2);
  if EditMode then
    Params.Text := floattostrF(cb, ffFixed, 20, 2)
  else
    Params.Text := floattostrF(c, ffFixed, 20, 2);
  if cb > 0 then
  begin
    Params.Font.Color := clBlue;
    Params.Font.Style := [fsBold];
    Params.Background := clSilver;
  end;
  if cb < 0 then
  begin
    Params.Font.Color := clPurple;
    Params.Font.Style := [fsBold];
    Params.Background := clMedGray;
  end;
  if c < 0 then
  begin
    Params.Font.Style := [fsBold];
    Params.Font.Color := color_Minus;
  end;
end;

procedure TMainForm.SetDepotNames;
var
  I: Integer;
  s: string;
begin
  with Data.DS_Depots do
  begin
    Filter := 'ID>0';
    Filtered := true;
    Refresh;
    First;
    for I := 1 to 20 do
    begin
      if Data.DS_Depots['USED'] then
      begin
        if Data.DS_Depots['NAME'] <> Null then
          s := Data.DS_Depots['NAME']
        else
          s := inttostr(I);
        TB_GoodsOnDepots.Columns[I + 1].Visible := true;
        SelectGoodForm.TB_GoodsSelect.Columns[I].Visible := true;
        TB_GoodsOnDepots.Columns[I + 1].Title.Caption := s;
        SelectGoodForm.TB_GoodsSelect.Columns[I].Title.Caption := s;
      end
      else
      begin
        TB_GoodsOnDepots.Columns[I + 1].Visible := false;
        SelectGoodForm.TB_GoodsSelect.Columns[I].Visible := false;
      end;
      Next;
    end;
    Filtered := false;
    Refresh;
  end;
end;

procedure TMainForm.SetPriceButtons;
begin
  // Data.DS_Goods.ReopenLocate('ID');
  case Tree_Classifiers.Selected.AbsoluteIndex of
    tr_GenPrice:
      begin
        act_price_restore.enabled := false;
        TB_Price.Columns.Items[0].ReadOnly := false;

        if Data.DS_Goods.VisibleRecordCount = 0 then
        begin
          act_price_delete.enabled := false;
          act_price_edit.enabled := false;
          act_price_newon.enabled := false;
        end
        else
        begin
          act_price_delete.enabled := true;
          act_price_edit.enabled := true;
          act_price_newon.enabled := true;
        end;
      end;
    tr_PriceTrash:
      begin
        act_price_edit.enabled := false;
        TB_Price.Columns.Items[0].ReadOnly := true;
        if Data.DS_Goods.VisibleRecordCount = 0 then
        begin
          act_price_restore.enabled := false;
          act_price_newon.enabled := false;
          act_price_delete.enabled := false;
        end
        else
        begin
          act_price_restore.enabled := true;
          act_price_newon.enabled := true;
          act_price_delete.enabled := true;
        end;
      end;
  end;
end;

procedure TMainForm.DefaultChange(Sender: TObject);
begin
  if (Data.DS_Defaults.State <> dsInactive) then
    Data.DS_Defaults.Refresh;
end;

procedure TMainForm.dxBarButton15Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter :=
    '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID<>15)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'rost_parf.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      price_perc := -2;
      Template := ApplicationPath + 'Reports\Прайс (росты).xls';
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист парфюмерия';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.dxBarButton20Click(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Добавить позиции в прайс из Excel?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  SysContainer.exlGoods.Execute;
end;

procedure TMainForm.dxBarButton22Click(Sender: TObject);
begin
  Data.DS_Goods.LocateNext('SELECTED', 1, []);
end;

procedure TMainForm.dxBarButton23Click(Sender: TObject);
var
  discount: real;
begin
  ProcentForm.ActiveControl := ProcentForm.c_Skidka;
  if ProcentForm.ShowModal = mrOK then
  begin
    discount := 0;
    if ProcentForm.c_Skidka.Checked then
      discount := ProcentForm.edit_prc.Value;
    SysContainer.ExportExcelDialog.filename := 'kosm.xls';
    if SysContainer.ExportExcelDialog.Execute then
      ExportParfToExcel(SysContainer.ExportExcelDialog.filename, discount,
        'TYPE_ID=15');
  end;
end;

procedure TMainForm.dxBarButton28Click(Sender: TObject);
begin
  SysContainer.ExportExcelDialog.filename := 'price_update.csv';
  SysContainer.ExportExcelDialog.Filter := 'Файл CSV (*.csv)|*.csv';
  if SysContainer.ExportExcelDialog.Execute then
    if ExportToInternetForm.ShowModal = mrOK then
      Data.ExportPriceToCSV(SysContainer.ExportExcelDialog.filename);
  SysContainer.ExportExcelDialog.Filter :=
    'Книга Microsoft Excel (*.xls)|*.xls';
end;

procedure TMainForm.dxBarButton30Click(Sender: TObject);
begin
  Data.ExcelImport.Execute;
end;

procedure TMainForm.Tree_DocsChange(Sender: TObject; Node: TTreeNode);
begin
  Screen.Cursor := crHourGlass;
  UpdateDocumentsWindow;
  Screen.Cursor := crDefault;
end;

procedure TMainForm.Tree_DocsCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  FontColor: TColor;
  BackColor: TColor;
begin
  if not ProgStarted then
    exit;

  // this is a hack to circumvent a bug in NT which makes the first item
  // bold the first time the list is being filled.
  FontColor := Sender.Canvas.Font.Color;
  Sender.Canvas.Font.Color := clNavy;
  Sender.Canvas.Font.Color := FontColor;
  BackColor := (Sender as TTreeView).Color;
  FontColor := clWindowText;

  case Node.AbsoluteIndex of
    tr_arr_wait:
      if (r_arrival > 0) then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Node.Text := 'На очереди (' + inttostr(r_arrival) + ')';
      end
      else
        Node.Text := 'На очереди';
    tr_sale_wait:
      if (r_sale > 0) then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Node.Text := 'На очереди (' + inttostr(r_sale) + ')';
      end
      else
        Node.Text := 'На очереди';
    tr_production_wait:
      if (r_prod > 0) then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Node.Text := 'На очереди (' + inttostr(r_prod) + ')';
      end
      else
        Node.Text := 'На очереди';
    tr_moves_wait:
      if (r_moves > 0) then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Node.Text := 'На очереди (' + inttostr(r_moves) + ')';
      end
      else
        Node.Text := 'На очереди';

    tr_ret_cust_wait:
      if (r_rc > 0) then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Node.Text := 'На очереди (' + inttostr(r_rc) + ')';
      end
      else
        Node.Text := 'На очереди';

    tr_ret_suppl_wait:
      if (r_rs > 0) then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Node.Text := 'На очереди (' + inttostr(r_rs) + ')';
      end
      else
        Node.Text := 'На очереди';
  end;

  Sender.Canvas.Brush.Color := BackColor;
  Sender.Canvas.Font.Color := FontColor;

  DefaultDraw := true;
end;

procedure TMainForm.Tree_ReportsChange(Sender: TObject; Node: TTreeNode);
begin
  Screen.Cursor := crHourGlass;
  UpdateReportsWindow;
  Screen.Cursor := crDefault;
end;

procedure TMainForm.Tree_ClassifiersChange(Sender: TObject; Node: TTreeNode);
begin
  Screen.Cursor := crHourGlass;
  UpdateClassifiersWindow;
  Screen.Cursor := crDefault;
end;

procedure TMainForm.Tree_ClassifiersChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.AbsoluteIndex = tr_Prices then
    AllowChange := false;

end;

procedure TMainForm.SetArrivalButtons;
var
  Posted: Boolean;
begin
  if Tree_Docs.Selected.AbsoluteIndex = tr_arr_exec then
    Posted := true
  else
    Posted := false;

  // Установка интерфейсных элементов
  if Data.DS_Arrival_N.VisibleRecordCount > 0 then
  begin
    act_arr_return.enabled := Posted;
    act_arr_execute.enabled := not Posted;
    act_arr_delete.enabled := not Posted;
    act_arr_export.enabled := true;
    act_arr_exportexcel.enabled := true;
    act_arr_edit.enabled := true;
  end
  else
  begin
    act_arr_return.enabled := false;
    act_arr_delete.enabled := false;
    act_arr_export.enabled := false;
    act_arr_exportexcel.enabled := false;
    act_arr_edit.enabled := false;
  end;
  rib_group_arr_filter.enabled := Posted;
  act_arr_recalcprices.enabled := not Posted;
  act_arr_reprice.enabled := not Posted;
  act_arr_clear_nakl.enabled := not Posted;
  ArrivalForm.btn_special1.enabled := not Posted;
  act_arr_importexcel.enabled := not Posted;
  ArrivalForm.edit_percent.enabled := not Posted;
  ArrivalForm.btn_price.enabled := not Posted;
  ArrivalForm.LayoutControl.enabled := not Posted;
  ArrivalForm.btn_special1.enabled := not Posted;
  if Posted then
  begin
    ArrivalForm.TB_Arrival.Options := [dgTitles, dgColumnResize, dgColLines,
      dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete];
    ArrivalForm.TB_Arrival.AllowedOperations :=
      ArrivalForm.TB_Arrival.AllowedOperations - [alopDeleteEh];
  end
  else
  begin
    ArrivalForm.TB_Arrival.Options := [dgEditing, dgTitles, dgColumnResize,
      dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete];
    ArrivalForm.TB_Arrival.AllowedOperations :=
      ArrivalForm.TB_Arrival.AllowedOperations + [alopDeleteEh];
  end;
  r_arrival := Data.ArrivalRCount;
end;

procedure TMainForm.SetArrivalFilter;

  procedure SetExecArrivalFilter;
  var
    depot_filter: string;
    date_filter: string;
    suppl_filter: string;
  begin
    Data.DS_Arrival.Close;
    Data.DS_Arrival_N.Close;
    if not VarIsNull(edit_arr_depot.KeyValue) then
      depot_filter := ' and (DEPOT_ID = ' +
        inttostr(edit_arr_depot.KeyValue) + ')'
    else
      depot_filter := '';

    if not VarIsNull(edit_arr_supplier.EditValue) then
      suppl_filter := ' and (CUST_ID = ' +
        inttostr(edit_arr_supplier.EditValue) + ')'
    else
      suppl_filter := '';

    if not VarIsNull(edit_arr_date.EditValue) then
      date_filter := ' and (A_DATE >= ''' + DateToStr(edit_arr_date.EditValue) +
        ' 00:00:00'') and (A_DATE <= ''' + DateToStr(edit_arr_date.EditValue) +
        ' 23:59:59'')'
    else
      date_filter := '';

    Data.DS_Arrival_N.SQLs.SelectSQL.Strings[27] := '(ENTERED = 1)' +
      date_filter + depot_filter + suppl_filter;
    Data.DS_Arrival_N.Open;
    Data.DS_Arrival.Open;
  end;

  procedure SetWaitArrivalFilter;
  begin
    Data.DS_Arrival.Close;
    Data.DS_Arrival_N.Close;
    Data.DS_Arrival_N.SQLs.SelectSQL.Strings[27] := 'ENTERED = 0';
    Data.DS_Arrival_N.Open;
    Data.DS_Arrival.Open;
  end;

begin
  if (Tree_Docs.Selected.AbsoluteIndex <> tr_arr_exec) and
    (Tree_Docs.Selected.AbsoluteIndex <> tr_arr_wait) then
    exit;

  Data.DS_Arrival_N.DisableControls;
  Data.DS_Arrival.DisableControls;
  if Tree_Docs.Selected.AbsoluteIndex = tr_arr_exec then
    SetExecArrivalFilter
  else
    SetWaitArrivalFilter;
  SetArrivalButtons;
  Data.DS_Arrival_N.Last;
  Data.DS_Arrival_N.EnableControls;
  Data.DS_Arrival.EnableControls;
end;

procedure TMainForm.SetMovesButtonsExec;
begin
  if Data.DS_Moves_N.VisibleRecordCount > 0 then
  begin
    act_moves_return.enabled := true;
    act_moves_preview.enabled := true;
    act_moves_print.enabled := true;
    act_moves_export.enabled := true;
    act_moves_exportexcel.enabled := true;
    act_moves_cennik.enabled := true;
    act_moves_edit.enabled := true;
  end
  else
  begin
    act_moves_return.enabled := false;
    act_moves_preview.enabled := false;
    act_moves_print.enabled := false;
    act_moves_export.enabled := false;
    act_moves_exportexcel.enabled := false;
    act_moves_cennik.enabled := false;
    act_moves_edit.enabled := false;
  end;
  rib_group_moves_filter.enabled := true;
  act_moves_execute.enabled := false;
  act_moves_delete.enabled := false;
  MovesForm.FilterLayout.enabled := false;
  MovesForm.TB_Moves.Options := [dgTitles, dgColumnResize, dgColLines,
    dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete];
  MovesForm.TB_Moves.AllowedOperations := MovesForm.TB_Moves.AllowedOperations -
    [alopDeleteEh];
end;

procedure TMainForm.SetMovesButtonsWait;
begin
  if Data.DS_Moves_N.VisibleRecordCount > 0 then
  begin
    act_moves_delete.enabled := true;
    act_moves_execute.enabled := true;
    act_moves_edit.enabled := true;
    act_moves_preview.enabled := true;
    act_moves_print.enabled := true;
    act_moves_export.enabled := true;
    act_moves_exportexcel.enabled := true;
    act_moves_cennik.enabled := true;
  end
  else
  begin
    act_moves_delete.enabled := false;
    act_moves_execute.enabled := false;
    act_moves_edit.enabled := false;
    act_moves_preview.enabled := false;
    act_moves_print.enabled := false;
    act_moves_export.enabled := false;
    act_moves_exportexcel.enabled := false;
    act_moves_cennik.enabled := false;
  end;
  rib_group_moves_filter.enabled := false;
  act_moves_return.enabled := false;
  MovesForm.FilterLayout.enabled := true;
  MovesForm.TB_Moves.Options := [dgEditing, dgTitles, dgColumnResize,
    dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete];
  MovesForm.TB_Moves.AllowedOperations := MovesForm.TB_Moves.AllowedOperations +
    [alopDeleteEh];
  r_moves := Data.MovesRCount;
  Tree_Docs.Invalidate;
end;

procedure TMainForm.SetMovesButtons;
begin
  case Tree_Docs.Selected.AbsoluteIndex of
    tr_moves_exec:
      SetMovesButtonsExec;
    tr_moves_wait:
      SetMovesButtonsWait;
  end;
end;

procedure TMainForm.SetExecMovesFilter;
var
  from_depot_filter: string;
  to_depot_filter: string;
  date_filter: string;
begin
  if not VarIsNull(edit_moves_from.KeyValue) then
    from_depot_filter := ' and (DEPOT_FROM_ID = ' +
      inttostr(edit_moves_from.KeyValue) + ')'
  else
    from_depot_filter := '';
  if not VarIsNull(edit_moves_to.KeyValue) then
    to_depot_filter := ' and (DEPOT_TO_ID = ' +
      inttostr(edit_moves_to.KeyValue) + ')'
  else
    to_depot_filter := '';
  if not VarIsNull(edit_moves_date.EditValue) then
    date_filter := ' and (M_DATE >= ''' + DateToStr(edit_moves_date.EditValue) +
      ' 00:00:00'') and (M_DATE <= ''' + DateToStr(edit_moves_date.EditValue) +
      ' 23:59:59'')'
  else
    date_filter := '';
  Data.DS_Moves_N.SQLs.SelectSQL.Strings[16] := '(ENTERED = 1)' + date_filter +
    from_depot_filter + to_depot_filter;
end;

procedure TMainForm.SetWaitMovesFilter;
begin
  Data.DS_Moves_N.SQLs.SelectSQL.Strings[16] := 'ENTERED = 0';
end;

procedure TMainForm.SetMovesFilter;
var
  sp: TBookmark;
begin
  if (Tree_Docs.Selected.AbsoluteIndex <> tr_moves_exec) and
    (Tree_Docs.Selected.AbsoluteIndex <> tr_moves_wait) then
    exit;
  sp := Data.DS_Moves_N.GetBookmark;
  Data.DS_Moves.Close;
  Data.DS_Moves_N.Close;
  Data.DS_Moves_N.DisableControls;
  Data.DS_Moves.DisableControls;
  if Tree_Docs.Selected.AbsoluteIndex = tr_moves_exec then
    SetExecMovesFilter
  else
    SetWaitMovesFilter;
  Data.DS_Moves_N.Open;
  Data.DS_Moves.Open;
  try
    if sp = nil then
      Data.DS_Moves.Last
    else
      Data.DS_Moves_N.GotoBookmark(sp);
  finally
  end;
  SetMovesButtons;
  Data.DS_Moves_N.EnableControls;
  Data.DS_Moves.EnableControls;
end;

procedure TMainForm.SetSaleButtons;
begin
  case Tree_Docs.Selected.AbsoluteIndex of
    tr_sale_exec:
      SetSaleButtonsExec;
    tr_sale_wait:
      SetSaleButtonsWait;
  end;
end;

procedure TMainForm.SetSaleButtonsWait;
var
  b: Boolean;
begin
  b := Data.DS_Sale_N.VisibleRecordCount > 0;
  act_sale_delete.enabled := b;
  act_sale_execute.enabled := b;
  act_sale_edit.enabled := b;
//  act_sale_preview.enabled := b;
//  act_sale_print.enabled := b;
//  act_sale_colprint.enabled := b;
  act_sale_export.enabled := b;
  act_sale_excelexport.enabled := b;
  act_sale_pay.enabled := b;
  act_sale_excelimport.enabled := b;
  act_sale_printperiod.enabled := b;
  rib_group_sale_filter.enabled := false;
  act_sale_return.enabled := false;
  act_sale_clear.Enabled := true;
  act_sale_req_import.Enabled := true;
  SaleForm.FilterLayout.enabled := true;
  act_sale_req_clear.Enabled := true;
  act_sale_req_add.Enabled := true;
  act_sale_req_delete.Enabled := true;
  act_sale_check.Enabled := true;
  act_sale_req_tosale.Enabled := true;
//  SaleForm.l_changecaption.Visible := true;
  SaleForm.TB_Sale.Options := [dgEditing, dgTitles, dgColumnResize, dgColLines,
    dgRowLines, dgTabs, dgAlwaysShowSelection];
  SaleForm.TB_Sale.AllowedOperations := SaleForm.TB_Sale.AllowedOperations +
    [alopDeleteEh];
  r_sale := Data.SaleRCount;
  Tree_Docs.Invalidate;
end;

procedure TMainForm.SetSaleButtonsExec;
var
  b: Boolean;
begin
  b := Data.DS_Sale_N.VisibleRecordCount > 0;
  act_sale_return.enabled := b;
//  act_sale_preview.enabled := b;
  act_sale_edit.enabled := b;
//  act_sale_print.enabled := b;
  act_sale_export.enabled := b;
  act_sale_excelexport.enabled := b;
//  act_sale_colprint.enabled := b;
  act_sale_pay.enabled := b;
  act_sale_printperiod.enabled := b;

  rib_group_sale_filter.enabled := true;
  act_sale_execute.enabled := false;
  act_sale_delete.enabled := false;
  act_sale_excelimport.enabled := false;
  act_sale_clear.Enabled := false;
  act_sale_req_import.Enabled := false;
  act_sale_req_clear.Enabled := false;
  act_sale_req_add.Enabled := false;
  act_sale_req_delete.Enabled := false;
  act_sale_check.Enabled := false;
  act_sale_req_tosale.Enabled := false;
  SaleForm.FilterLayout.enabled := false;
//  SaleForm.l_changecaption.Visible := false;
  SaleForm.TB_Sale.Options := [dgTitles, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgRowSelect, dgAlwaysShowSelection];
  SaleForm.TB_Sale.AllowedOperations := SaleForm.TB_Sale.AllowedOperations -
    [alopDeleteEh];
end;

procedure TMainForm.SetProductionButtons;
begin
  case Tree_Docs.Selected.AbsoluteIndex of
    tr_production_exec:
      SetProductionButtonsExec;
    tr_production_wait:
      SetProductionButtonsWait;
  end;
end;

procedure TMainForm.SetProductionButtonsWait;
var
  b: Boolean;
begin
  b := Data.DS_Production_N.VisibleRecordCount > 0;
  act_prod_delete.enabled := b;
  act_prod_execute.enabled := b;
  act_prod_edit.enabled := b;
  rib_group_prod_filter.enabled := false;
  act_prod_return.enabled := false;
  act_prod_clear_nakl.Enabled := true;
  act_prod_spec_load_defaults.Enabled := true;
  act_prod_spec_clear_nakl.Enabled := true;
  ProductionForm.LayoutControl.enabled := true;
  ProductionForm.TB_Production.Options := [dgEditing, dgTitles, dgColumnResize, dgColLines,
    dgRowLines, dgTabs, dgAlwaysShowSelection];
  ProductionForm.TB_Production.AllowedOperations := ProductionForm.TB_Production.AllowedOperations +
    [alopDeleteEh];
  r_prod := Data.ProductionRCount;
  Tree_Docs.Invalidate;
end;

procedure TMainForm.SetProductionButtonsExec;
var
  b: Boolean;
begin
  b := Data.DS_Production_N.VisibleRecordCount > 0;
  act_prod_return.enabled := b;
  act_prod_edit.enabled := b;
  act_prod_clear_nakl.Enabled := false;
  act_prod_spec_load_defaults.Enabled := false;
  act_prod_spec_clear_nakl.Enabled := false;
  rib_group_prod_filter.enabled := true;
  act_prod_execute.enabled := false;
  act_prod_delete.enabled := false;
  ProductionForm.LayoutControl.enabled := false;
  ProductionForm.TB_Production.Options := [dgTitles, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgRowSelect, dgAlwaysShowSelection];
  ProductionForm.TB_Production.AllowedOperations := ProductionForm.TB_Production.AllowedOperations -
    [alopDeleteEh];
end;


procedure TMainForm.SetExecSaleFilter;
var
  customer_filter: string;
  date_filter: string;
begin
  if not VarIsNull(edit_sale_customer.EditValue) then
    customer_filter := ' and (CUST_ID = ' +
      inttostr(edit_sale_customer.EditValue) + ')'
  else
    customer_filter := '';
  if not VarIsNull(edit_sale_date.EditValue) then
    date_filter := ' and (S_DATE >= ''' + DateToStr(edit_sale_date.EditValue) +
      ' 00:00:00'') and (S_DATE <= ''' + DateToStr(edit_sale_date.EditValue) +
      ' 23:59:59'')'
  else
    date_filter := '';

  Data.DS_Sale_N.SQLs.SelectSQL.Strings[14] := '(ENTERED = 1)' + date_filter +
    customer_filter;
end;

procedure TMainForm.SetWaitSaleFilter;
begin
  Data.DS_Sale_N.SQLs.SelectSQL.Strings[14] := '    (ENTERED = 0)';
end;

procedure TMainForm.SetExecProductionFilter;
var
  date_filter: string;
begin
  if not VarIsNull(edit_prod_date.EditValue) then
    date_filter := ' and (P_DATE >= ''' + DateToStr(edit_prod_date.EditValue) +
      ' 00:00:00'') and (P_DATE <= ''' + DateToStr(edit_prod_date.EditValue) +
      ' 23:59:59'')'
  else
    date_filter := '';

  Data.DS_Production_N.SQLs.SelectSQL.Strings[17] := '(ENTERED = 1)' + date_filter
end;

procedure TMainForm.SetWaitProductionFilter;
begin
  Data.DS_Production_N.SQLs.SelectSQL.Strings[17] := '    (ENTERED = 0)';
end;


procedure TMainForm.SetProductionFilter;
begin
  try
    Data.DS_Production_N.DisableControls;
    Data.DS_Production.DisableControls;
    Screen.Cursor := crHourGlass;
    Data.DS_Production_SP.Close;
    Data.DS_Production.Close;
    Data.DS_Production_N.Close;
    case Tree_Docs.Selected.AbsoluteIndex of
      tr_production_exec:
        SetExecProductionFilter;
      tr_production_wait:
        SetWaitProductionFilter;
    end;
  finally
    Data.DS_Production_SP.Open;
    Data.DS_Production.Open;
    Data.DS_Production_N.Open;
    Data.DS_Production_N.Last;
    Screen.Cursor := crDefault;
    Data.DS_Production_N.EnableControls;
    Data.DS_Production.EnableControls;
    SetProductionButtons;
  end;
end;

procedure TMainForm.SetSaleFilter;
begin
  try
    Data.DS_Sale_N.DisableControls;
    Data.DS_Sale.DisableControls;
    Screen.Cursor := crHourGlass;
    Data.DS_Sale.Close;
    Data.DS_Sale_N.Close;
    case Tree_Docs.Selected.AbsoluteIndex of
      tr_sale_exec:
        SetExecSaleFilter;
      tr_sale_wait:
        SetWaitSaleFilter;
    end;
  finally
    Data.DS_Sale.Open;
    Data.DS_Sale_N.Open;
    Data.DS_Sale_N.Last;
    Screen.Cursor := crDefault;
    Data.DS_Sale_N.EnableControls;
    Data.DS_Sale.EnableControls;
    SetSaleButtons;
  end;
end;

procedure TMainForm.edit_DateToArrivalChange(Sender: TObject);
begin
  SetArrivalFilter;
end;

procedure TMainForm.btn_ResetSaleClick(Sender: TObject);
begin
  edit_sale_date.EditValue := Now;
  SetSaleFilter;
end;

procedure TMainForm.UpdatePrintedStatus_Sale;
var
  prnt: Integer;
begin
  Data.CanUpdateUser := false;
  Data.DS_Sale_N.Refresh;
  if Data.DS_Sale_N.FieldValues['PRINTED'] = Null then
    prnt := 0
  else
    prnt := Data.DS_Sale_N.FieldValues['PRINTED'];
  inc(prnt);
  Data.DS_Sale_N.Edit;
  Data.DS_Sale_N.FieldValues['PRINTED'] := prnt;
  Data.DS_Sale_N.Post;
  Data.CanUpdateUser := true;
end;

procedure TMainForm.UpdatePrintedStatus_Move;
var
  prnt: Integer;
begin
  Data.CanUpdateUser := false;
  Data.DS_Moves_N.Refresh;
  if Data.DS_Moves_N.FieldValues['PRINTED'] = Null then
    prnt := 0
  else
    prnt := Data.DS_Moves_N.FieldValues['PRINTED'];
  inc(prnt);
  Data.CanUpdateUser := false;
  Data.DS_Moves_N.Edit;
  Data.DS_Moves_N.FieldValues['PRINTED'] := prnt;
  Data.DS_Moves_N.Post;
  Data.CanUpdateUser := true;
end;

procedure TMainForm.TB_Sale_NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return:
      act_sale_edit.Execute;
    VK_F5:
      if not act_sale_execute.Execute then
        act_sale_return.Execute;
    VK_F9:
      act_sale_pay.Execute;
  end;
  if (Key = VK_DIVIDE) and (Shift = [ssShift, ssAlt, ssCtrl]) then
  begin
    Data.DS_Sale_N.Edit;
    if Data.DS_Sale_N.FieldValues['ENTERED'] = true then
      Data.DS_Sale_N['ENTERED'] := false
    else if Data.DS_Sale_N.FieldValues['ENTERED'] = false then
      Data.DS_Sale_N['ENTERED'] := true;
    Data.DS_Sale_N.Post;
    SetSaleFilter;
    SetSaleTittle;
  end;
end;

procedure TMainForm.edit_DateToMovesChange(Sender: TObject);
begin
  SetMovesFilter;
end;

procedure TMainForm.TB_Moves_NDblClick(Sender: TObject);
begin
  act_moves_edit.Execute;
end;

procedure TMainForm.TB_Moves_NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return:
      act_moves_edit.Execute;
    VK_F5:
      if not act_moves_execute.Execute then
        act_moves_return.Execute
  end;
  SetMovesTittle;
end;

procedure TMainForm.list_ExecDocClick(Sender: TObject);
begin
  if list_ExecDoc.Selected <> nil then
    if list_ExecDoc.Selected.Index = 0 then
      case Tree_Docs.Selected.AbsoluteIndex of
        tr_Arrival:
          Tree_Docs.Select(Tree_Docs.Items[tr_arr_exec]);
        tr_Sale:
          Tree_Docs.Select(Tree_Docs.Items[tr_sale_exec]);
        tr_Production:
          Tree_Docs.Select(Tree_Docs.Items[tr_production_exec]);
        tr_Moves:
          Tree_Docs.Select(Tree_Docs.Items[tr_moves_exec]);
        tr_Return_Suppl:
          Tree_Docs.Select(Tree_Docs.Items[tr_ret_suppl_exec]);
      end
    else
      case Tree_Docs.Selected.AbsoluteIndex of
        tr_Arrival:
          Tree_Docs.Select(Tree_Docs.Items[tr_arr_wait]);
        tr_Sale:
          Tree_Docs.Select(Tree_Docs.Items[tr_sale_wait]);
        tr_Production:
          Tree_Docs.Select(Tree_Docs.Items[tr_production_wait]);
        tr_Moves:
          Tree_Docs.Select(Tree_Docs.Items[tr_moves_wait]);
        tr_Return_Suppl:
          Tree_Docs.Select(Tree_Docs.Items[tr_ret_suppl_wait]);
      end;
end;

procedure TMainForm.SetRetSupplButtons;
var
  Posted: Boolean;
begin
  if Tree_Docs.Selected.AbsoluteIndex = tr_ret_suppl_exec then
    Posted := true
  else
    Posted := false;

  // Установка интерфейсных элементов   введ
  if Data.DS_Return_Suppl_N.VisibleRecordCount > 0 then
  begin
    act_rs_return.enabled := Posted;
    act_rs_execute.enabled := not Posted;
    act_rs_preview.enabled := true;
    act_rs_print.enabled := true;
    act_rs_exportexcel.enabled := true;
    act_rs_export.enabled := true;
    act_rs_edit.enabled := true;
    act_rs_delete.enabled := not Posted;
  end
  else
  begin
    act_rs_return.enabled := false;
    act_rs_execute.enabled := false;
    act_rs_preview.enabled := false;
    act_rs_print.enabled := false;
    act_rs_exportexcel.enabled := false;
    act_rs_export.enabled := false;
    act_rs_edit.enabled := false;
    act_rs_delete.enabled := false;
  end;
  rib_group_rs_filter.enabled := Posted;
  act_rs_lastprices.enabled := not Posted;
  RetSupplForm.control_layout.enabled := not Posted;
  if Posted then
  begin
    RetSupplForm.TB_RetSuppl.Options := [dgTitles, dgColumnResize, dgColLines,
      dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete];
    RetSupplForm.TB_RetSuppl.AllowedOperations :=
      RetSupplForm.TB_RetSuppl.AllowedOperations - [alopDeleteEh];
  end
  else
  begin
    RetSupplForm.TB_RetSuppl.Options := [dgEditing, dgTitles, dgColumnResize,
      dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete];
    RetSupplForm.TB_RetSuppl.AllowedOperations :=
      RetSupplForm.TB_RetSuppl.AllowedOperations + [alopDeleteEh];
  end;
end;

procedure TMainForm.SetReturnSupplFilter;
// ---------------ВВЕДЕННЫЕ--------------

  procedure SetExecRetSupplFilter;
  var
    date_filter: string;
    suppl_filter: string;
  begin

    Data.DS_Return_Suppl.Close;
    Data.DS_Return_Suppl_N.Close;

    if not VarIsNull(edit_rs_date.EditValue) then
      date_filter := ' and (R_DATE >= ''' + DateToStr(edit_rs_date.EditValue) +
        ' 00:00:00'') and (R_DATE <= ''' + DateToStr(edit_rs_date.EditValue) +
        ' 23:59:59'')'
    else
      date_filter := '';

    if not VarIsNull(edit_rs_client.EditValue) then
      suppl_filter := ' and (CUST_ID = ' +
        inttostr(edit_rs_client.EditValue) + ')'
    else
      suppl_filter := '';

    Data.DS_Return_Suppl_N.SQLs.SelectSQL.Strings[14] := '(ENTERED = 1)' +
      date_filter + suppl_filter;
    Data.DS_Return_Suppl.Open;
    Data.DS_Return_Suppl_N.Open;
  end;

// -----------------НА ОЧЕРЕДИ--------------

  procedure SetWaitRetSupplFilter;
  begin

    Data.DS_Return_Suppl.Close;
    Data.DS_Return_Suppl_N.Close;
    Data.DS_Return_Suppl_N.SQLs.SelectSQL.Strings[14] := 'ENTERED = 0';
    Data.DS_Return_Suppl.Open;
    Data.DS_Return_Suppl_N.Open;
    if Data.DS_Return_Suppl_N.RecordCountFromSrv > 0 then
      RetSupplForm.Close;
  end;

begin
  Data.DS_Return_Suppl_N.DisableControls;
  Data.DS_Return_Suppl.DisableControls;
  case Tree_Docs.Selected.AbsoluteIndex of
    tr_ret_suppl_exec:
      SetExecRetSupplFilter;
    tr_ret_suppl_wait:
      SetWaitRetSupplFilter;
  end;
  SetRetSupplButtons;
  Data.DS_Return_Suppl_N.Last;
  Data.DS_Return_Suppl_N.EnableControls;
  Data.DS_Return_Suppl.EnableControls;
end;

procedure TMainForm.edit_DateToRetSupplChange(Sender: TObject);
begin
  SetReturnSupplFilter;
end;

procedure TMainForm.TB_Return_SupplCellClick(Column: TColumnEh);
begin
  SetReturnSupplTittle;
end;

procedure TMainForm.TB_Return_Suppl_NDblClick(Sender: TObject);
begin
  act_rs_edit.Execute;
end;

procedure TMainForm.TB_Return_Suppl_NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return:
      act_rs_edit.Execute;
    VK_F5:
      if not act_rs_execute.Execute then
        act_rs_return.Execute;
  end;
  SetReturnSupplTittle;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // ShellExecute(Handle, nil, Pchar(ApplicationPath + 'TrayMessage.exe'), '"Не забудьте!"', nil, SW_SHOW);
  ProgStarted := false;
  Settings.SaveSettings;
  Data.DS_PRICETOEXCEL.Close;
  Data.DS_EXT_PRICE.Close;
  Data.DS_LAST_ARRIVALS.Close;
  Data.DS_Customers.Close;
  Data.DS_Return_Cust_N.Close;
  Data.DS_Return_Cust.Close;
  Data.DS_Return_Suppl_N.Close;
  Data.DS_Return_Suppl.Close;
  Data.DS_Moves_N.Close;
  Data.DS_Moves.Close;
  Data.DS_Production_N.Close;
  Data.DS_Production.Close;
  Data.DS_Production_SP.Close;
  Data.DS_Sale_N.Close;
  Data.DS_Sale.Close;
  Data.DS_Arrival_N.Close;
  Data.DS_Arrival.Close;
  Data.DS_Filters.Close;
  Data.DS_Goods.Close;
  Data.DS_Curs.Close;
  Data.DS_KASSA.Close;
  Data.DS_Requirements.Close;
  Data.DS_ReqList.Close;
  Data.DS_Currency.Close;
  Data.DS_GoodTypes.Close;
  Data.DS_PriceCategory.Close;
  Data.DS_Banned.Close;
  Data.DS_ImportPrice.Close;
  Data.DS_Firms.Close;
  Data.DS_Depots.Close;
  Data.DS_Defaults.Close;
  Data.DS_Users.Close;
  Data.DS_Discounts.Close;
  Data.DS_SaleImportDepots.Close;

  Query.DS_HISTORY.Close;

  Query.DS_SaleDetails.Close;
  Query.DS_ArrivalDetails.Close;
  Query.DS_RetCustDetails.Close;
  Query.DS_RetSupplDetails.Close;
  Query.DS_QueryClientsList.Close;
  Query.DS_QueryClients.Close;
  Query.DS_QueryDolgi.Close;
  Query.DS_CalculateArrivals.Close;
  Query.DS_CalculateSales.Close;
  Query.DS_Depots.Close;
  Query.DS_Select.Close;

  Data.Database.Close;
end;

procedure TMainForm.edit_rc_customerPropertiesCloseUp(Sender: TObject);
begin
  SetRetCustFilter;
  TB_Return_Cust_N.SetFocus;
end;

procedure TMainForm.edit_rc_datePropertiesCloseUp(Sender: TObject);
begin
  SetRetCustFilter;
  TB_Return_Cust_N.SetFocus;
end;

procedure TMainForm.edit_rc_depotCloseUp(Sender: TObject);
begin
  SetRetCustFilter;
  TB_Return_Cust_N.SetFocus;
end;

procedure TMainForm.edit_rs_clientCloseUp(Sender: TObject);
begin
  SetReturnSupplFilter;
  TB_Return_Suppl_N.SetFocus;
end;

procedure TMainForm.edit_rs_clientPropertiesCloseUp(Sender: TObject);
begin
  SetReturnSupplFilter;
  TB_Return_Suppl_N.SetFocus;
end;

procedure TMainForm.edit_rs_datePropertiesCloseUp(Sender: TObject);
begin
  SetReturnSupplFilter;
  TB_Return_Suppl_N.SetFocus;
end;

procedure TMainForm.ApplySkinToTable(Grid: TDBGridEh);
begin
  with RootLookAndFeel.Painter do
  begin
    (Grid as TDBGridEh).ColumnDefValues.Title.Color :=
      DefaultHeaderBackgroundColor;
    (Grid as TDBGridEh).TitleFont.Color := DefaultHeaderTextColor;
    (Grid as TDBGridEh).Color := DefaultContentColor;
    (Grid as TDBGridEh).OddRowColor := DefaultContentOddColor;
    (Grid as TDBGridEh).EvenRowColor := DefaultContentEvenColor;
    (Grid as TDBGridEh).Font.Color := DefaultContentTextColor;
    (Grid as TDBGridEh).FixedColor := DefaultHeaderColor;
    (Grid as TDBGridEh).FooterColor := DefaultHeaderBackgroundColor;
    (Grid as TDBGridEh).FooterFont.Color := DefaultHeaderTextColor;
  end;
end;

procedure TMainForm.area_treeChange(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if area_tree.ActivePage = P_Classifiers then
    UpdateClassifiersWindow;
  if area_tree.ActivePage = P_Documents then
    UpdateDocumentsWindow;
  if area_tree.ActivePage = P_Reports then
    UpdateReportsWindow;
  Screen.Cursor := crDefault;
end;

procedure TMainForm.FindDialogFind(Sender: TObject);
begin
  with Data.DS_Goods do
  begin
    First;
    Data.DS_Goods.Locate('FULLNAME', FindDialog.FindText,
      [loCaseInsensitive, loPartialKey])
  end;
  FindDialog.CloseDialog;
end;

procedure TMainForm.TB_GoodsOnDepotsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
    act_price_find.Execute;

  if Key = VK_F6 then
    act_price_shop_edit.Execute;

  if Key = VK_F4 then
    HistoryForm.ShowEx(Data.DS_Goods.fbn('ID').AsInteger, all);

  if ((Key = VK_Return) and
    (TB_GoodsOnDepots.SelectedField.FullName = 'FULLNAME')) or (Key = VK_F1)
  then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        try
          Screen.Cursor := crAppStart;
          Data.DS_Goods.Post;
          Data.DS_Goods.ReopenLocate('ID');
          Query.DS_Select.ReopenLocate('ID');
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end;
end;

procedure TMainForm.edit_moves_datePropertiesCloseUp(Sender: TObject);
begin
  SetMovesFilter;
  TB_Moves_N.SetFocus;
end;

procedure TMainForm.edit_moves_fromCloseUp(Sender: TObject);
begin
  SetMovesFilter;
  TB_Moves_N.SetFocus;
end;

procedure TMainForm.SetComboSize(Sender: TObject);
begin
  (Sender as TdxBarLookupCombo).RowCount := default_depotrowcount;
end;

procedure TMainForm.edit_moves_toCloseUp(Sender: TObject);
begin
  SetMovesFilter;
  TB_Moves_N.SetFocus;
end;

procedure TMainForm.edit_prod_depotCloseUp(Sender: TObject);
begin
  SetProductionFilter;
  TB_Production_N.SetFocus;
end;

procedure TMainForm.edit_prod_depotEnter(Sender: TObject);
begin
  (Sender as TdxBarLookupCombo).RowCount := default_depotrowcount;
end;

procedure TMainForm.N2Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter := 'DELETED=0 and TYPE_ID<>15 and PRICE_CATEGORY_ID = 3';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'parf.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelPriceTemplate.Text;
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист (Основной)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.N3Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter :=
    '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID<>15) and (TYPE_ID<>3)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'gen_parf.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelPriceTemplate.Text;
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист (Основной)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.N34Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter := '(C1>0) and (TYPE_ID<>15)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'gen_parf.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelPriceTemplate.Text;
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист (Основной)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.N20Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter :=
    '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID=15)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'gen_kosm.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelPriceTemplate.Text;
      TemplSheet := 'Косметика';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист (Основной)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.N21Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter :=
    '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID=15)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'sp_kosm.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelSpecPriceTemplate.Text;
      TemplSheet := 'Косметика';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист (Спец.)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Hide;
  ProgStarted := false;
end;

procedure TMainForm.combo_print_scaleCloseUp(Sender: TObject);
var
  ItemIndex: Integer;
begin
  ItemIndex := combo_print_scale.CurItemIndex;
  if ItemIndex < 8 then
    preview_Report.Zoom := (ItemIndex + 1) * 0.25
  else if ItemIndex = 8 then
    preview_Report.ZoomMode := zmWholePage
  else
    preview_Report.ZoomMode := zmPageWidth;
  combo_print_scale.Text := floattostr(preview_Report.Zoom * 100) + '%';
end;

procedure TMainForm.combo_SupplierRetSupplFilterChange(Sender: TObject);
begin
  if ProgStarted then
  begin
    SetReturnSupplFilter;
    TB_Return_Suppl_N.SetFocus;
  end;
end;

procedure TMainForm.ToolButton42Click(Sender: TObject);
begin
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_sale_exec]);
end;

procedure TMainForm.ToolButton44Click(Sender: TObject);
begin
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_sale_wait]);
end;

procedure TMainForm.TB_Arrival_NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return:
      act_arr_edit.Execute;
    VK_F5:
      if not act_arr_execute.Execute then
        act_arr_return.Execute
  end;
end;

procedure TMainForm.TB_GoodsOnDepotsDblClick(Sender: TObject);
begin
  if TB_GoodsOnDepots.SelectedField.FullName = 'FULLNAME' then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        try
          Screen.Cursor := crAppStart;
          Data.DS_Goods.Post;
          Data.DS_Goods.ReopenLocate('ID');
          Query.DS_Select.ReopenLocate('ID');
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end;
end;

procedure TMainForm.editCustTypePropertiesEditValueChanged(Sender: TObject);
begin
  SetAccountingListFilter;
  SetAccountingFilter;
end;

procedure TMainForm.edit_acc_datefromPropertiesCloseUp(Sender: TObject);
begin
  SetAccountingFilter;
  TB_Accounting.SetFocus;
end;

procedure TMainForm.edit_acc_date_toPropertiesCloseUp(Sender: TObject);
begin
  SetAccountingFilter;
  TB_Accounting.SetFocus;
end;

procedure TMainForm.edit_arr_datePropertiesCloseUp(Sender: TObject);
begin
  SetArrivalFilter;
  TB_Arrival_N.SetFocus;
end;

procedure TMainForm.edit_arr_depotCloseUp(Sender: TObject);
begin
  SetArrivalFilter;
  TB_Arrival_N.SetFocus;
end;

procedure TMainForm.edit_arr_supplierPropertiesCloseUp(Sender: TObject);
begin
  SetArrivalFilter;
  TB_Arrival_N.SetFocus;
end;

procedure TMainForm.N11Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter :=
    '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID<>15)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'shop_parf.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelRetPriceTemplate.Text;
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист (Магазин)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.JaDe1Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter := 'DELETED=0 and TYPE_ID<>15 and TYPE_ID<>3';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'parfum_col.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := ApplicationPath + 'Reports\Количество по складам.xls';
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Общее наличие парфюмерии на всех складах';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.N13Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter :=
    '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID<>15) and (TYPE_ID<>3)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'parfum_col.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := ApplicationPath + 'Reports\Количество по складам.xls';
      TemplSheet := 'Парфюмерия';
      DataSet := Data.DS_Goods;
      Title := 'Общее наличие парфюмерии на всех складах';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.N28Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter := '(C1>0) and (TYPE_ID=15)';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'sp_kosm.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := OptionsForm.edit_ExcelSpecPriceTemplate.Text;
      TemplSheet := 'Косметика';
      DataSet := Data.DS_Goods;
      Title := 'Прайс-лист косметика (Спец.)';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;

end;

procedure TMainForm.N12Click(Sender: TObject);
var
  discount: real;
begin
  ProcentForm.ActiveControl := ProcentForm.c_Skidka;
  if ProcentForm.ShowModal = mrOK then
  begin
    discount := 0;
    if ProcentForm.c_Skidka.Checked then
      discount := ProcentForm.edit_prc.Value;
    SysContainer.ExportExcelDialog.filename := 'parf.xls';
    if SysContainer.ExportExcelDialog.Execute then
      ExportParfToExcel(SysContainer.ExportExcelDialog.filename, discount,
        'PRICE_CATEGORY_ID = 1');
  end;
end;

procedure TMainForm.N32Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  if ProcentForm.ShowModal = mrOK then
  begin
    Data.DS_Goods.DisableControls;
    f := Data.DS_Goods.Filtered;
    s := Data.DS_Goods.Filter;
    Data.DS_Goods.Filter :=
      '(C1>0 or C2>0 or C3>0 or C4>0 or C6>0) and (TYPE_ID=15)';
    Data.DS_Goods.Filtered := true;
    SysContainer.ExportExcelDialog.filename := 'kosm.xls';
    if SysContainer.ExportExcelDialog.Execute then
      with Data.ExcelExport do
      begin
        Application.ProcessMessages;
        price_perc := ProcentForm.edit_prc.Value;
        Template := ApplicationPath + 'Reports\Прайс (Спец+%).xls';
        TemplSheet := 'Косметика';
        DataSet := Data.DS_Goods;
        Title := 'Прайс-лист косметика';
        Show(SysContainer.ExportExcelDialog.filename);
      end;
    Data.DS_Goods.Filtered := f;
    Data.DS_Goods.Filter := s;
    Data.DS_Goods.EnableControls;
  end;
end;

procedure TMainForm.TB_Sale_NColumns7GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
var
  profit: real;
  prc: real;
  sa: real;
begin
  profit := Data.GetProfit;
  if profit = none then
    Params.Text := ''
  else
  begin
    sa := Data.DS_Sale_N.fbn('SUMM_ARRIVAL').AsFloat;
    if sa <> 0 then
    begin
      if Data.DS_Sale_N.fbn('CURR_ID').AsInteger = 1 then
        prc := (((Data.DS_Sale_N.fbn('SUMM').AsFloat / Data.LastCurs) / sa
          - 1) * 100)
      else
        prc := ((Data.DS_Sale_N.fbn('SUMM').AsFloat / sa - 1) * 100);
      Params.Text := FloatToStrF(profit, ffFixed, 20, 2) + '(' +
        FloatToStrF(prc, ffFixed, 20, 2) + '%)';
    end
    else
      Params.Text := '';
  end;
end;

procedure TMainForm.TB_Sale_NDblClick(Sender: TObject);
begin
  act_sale_edit.Execute;
end;

procedure TMainForm.TB_Sale_NGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
var
  a, b, c: real;
begin

  if Data.DS_Sale_N.fbn('PRINTED').AsInteger = 0 then
    Background := clSilver;
  if btnColorfulGrid.Down then
  begin
    a := RoundTo(Data.DS_Sale_N.fbn('SUM_TOTAL').AsFloat, -2);
    b := RoundTo(Data.DS_Sale_N.fbn('PAID').AsFloat, -2);
    c := a + b;
    if (c > 0) and (b <> 0) then
    begin
      AFont.Style := [fsBold, fsItalic];
      AFont.Color := clRed;
    end
    else if (c > 0) then
    begin
      AFont.Style := [fsBold];
      AFont.Color := clMaroon;
    end
    else if (c < 0) then
    begin
      AFont.Style := [fsBold];
      AFont.Color := clBlue;
    end;
  end;

end;

procedure TMainForm.N36Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  Data.DS_Goods.DisableControls;
  f := Data.DS_Goods.Filtered;
  s := Data.DS_Goods.Filter;
  Data.DS_Goods.Filter := 'ART_12 <> NULL';
  Data.DS_Goods.Filtered := true;
  SysContainer.ExportExcelDialog.filename := 'Коды товара - Класс.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Application.ProcessMessages;
      Template := ApplicationPath + 'Reports\Коды товаров (класс).xls';
      TemplSheet := 'Коды товара - Класс';
      DataSet := Data.DS_Goods;
      Title := 'Коды товара - Класс';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
  Data.DS_Goods.Filtered := f;
  Data.DS_Goods.Filter := s;
  Data.DS_Goods.EnableControls;
end;

procedure TMainForm.SetArticulNames;
var
  I: Integer;
begin
  with Data.DS_ImportPrice do
  begin
    First;
    I := 2;
    while not(eof) do
    begin
      TB_Articuls.Columns[I].Title.Caption := FieldValues['SUPPL_NAME'];
      inc(I);
      Next;
    end;
  end;
end;

procedure TMainForm.TB_ArticulsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
    act_price_find.Execute;

  if Key = VK_F4 then
    HistoryForm.ShowEx(Data.DS_Goods.fbn('ID').AsInteger, all);

end;

procedure TMainForm.N38Click(Sender: TObject);
var
  f: Boolean;
  s: string;
begin
  if SupplReportForm.ShowModal = mrOK then
  begin
    f := Data.DS_Goods.Filtered;
    s := Data.DS_Goods.Filter;
    Data.DS_Goods.DisableControls;
    Data.DS_Goods.Filtered := false;
    Data.DS_Goods.Filter := '(AVAILABLE_' +
      inttostr(SupplReportForm.edit_ClientName.ItemIndex + 1) + ' = 1)';
    Data.DS_Goods.Filtered := true;
    SysContainer.ExportExcelDialog.filename := 'Закупка - ' +
      SupplReportForm.edit_ClientName.Text + '.xls';
    if SysContainer.ExportExcelDialog.Execute then
      with Data.ExcelExport do
      begin
        Application.ProcessMessages;
        Template := ApplicationPath + 'Reports\Отчет для закупок.xls';
        TemplSheet := 'Отчет для закупки';
        DataSet := Data.DS_Goods;
        Title := 'Отчет для закупки';
        Show(SysContainer.ExportExcelDialog.filename);
      end;
    Data.DS_Goods.Filtered := f;
    Data.DS_Goods.Filter := s;
    Data.DS_Goods.EnableControls;
  end;

end;

procedure TMainForm.TB_ArticulsDblClick(Sender: TObject);
begin
  if Tree_Classifiers.Selected.AbsoluteIndex = tr_GenPrice then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        Data.DS_Goods.Post;
        Data.DS_Goods.DoSortEx([1], [true]);
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end;
  if Tree_Classifiers.Selected.AbsoluteIndex = tr_PriceTrash then
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
end;

procedure TMainForm.SetRetCustButtons;
var
  Posted: Boolean;
begin
  if Tree_Docs.Selected.AbsoluteIndex = tr_ret_cust_exec then
    Posted := true
  else
    Posted := false;
  // Установка интерфейсных элементов
  if Data.DS_Return_Cust_N.VisibleRecordCount > 0 then
  begin
    act_rc_execute.enabled := not Posted;
    act_rc_return.enabled := Posted;
    act_rc_delete.enabled := not Posted;
    act_rc_preview.enabled := true;
    act_rc_print.enabled := true;
    act_rc_exportexcel.enabled := true;
    act_rc_export.enabled := true;
    act_rc_edit.enabled := true;
  end
  else
  begin
    act_rc_execute.enabled := false;
    act_rc_return.enabled := false;
    act_rc_preview.enabled := false;
    act_rc_print.enabled := false;
    act_rc_exportexcel.enabled := false;
    act_rc_export.enabled := false;
    act_rc_edit.enabled := false;
    act_rc_delete.enabled := false;

  end;
  rib_group_rc_filter.enabled := Posted;
  RetCustForm.FilterLayout.enabled := not Posted;
  RetCustForm.edit_percent.enabled := not Posted;
  RetCustForm.btn_recalc.enabled := not Posted;
  RetCustForm.btn_price.enabled := not Posted;
  if Posted then
  begin
    RetCustForm.TB_RetCust.Options := [dgTitles, dgColumnResize, dgColLines,
      dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete];
    RetCustForm.TB_RetCust.AllowedOperations :=
      RetCustForm.TB_RetCust.AllowedOperations - [alopDeleteEh];
  end
  else
  begin
    RetCustForm.TB_RetCust.Options := [dgEditing, dgTitles, dgColumnResize,
      dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete];
    RetCustForm.TB_RetCust.AllowedOperations :=
      RetCustForm.TB_RetCust.AllowedOperations + [alopDeleteEh];
  end;
end;

procedure TMainForm.SetRetCustFilter;
// ---------------ВВЕДЕННЫЕ--------------

  procedure SetExecRetCustFilter;
  var
    date_filter: string;
    depot_filter: string;
    cust_filter: string;
  begin

    Data.DS_Return_Cust.Close;
    Data.DS_Return_Cust_N.Close;

    if not VarIsNull(edit_rc_depot.KeyValue) then
      depot_filter := ' and (DEPOT_ID = ' +
        inttostr(edit_rc_depot.KeyValue) + ')'
    else
      depot_filter := '';

    if not VarIsNull(edit_rc_date.EditValue) then
      date_filter := ' and (R_DATE >= ''' + DateToStr(edit_rc_date.EditValue) +
        ' 00:00:00'') and (R_DATE <= ''' + DateToStr(edit_rc_date.EditValue) +
        ' 23:59:59'')'
    else
      date_filter := '';

    if not VarIsNull(edit_rc_customer.EditValue) then
      cust_filter := ' and (Cust_ID = ' +
        inttostr(edit_rc_customer.EditValue) + ')'
    else
      cust_filter := '';

    Data.DS_Return_Cust_N.SQLs.SelectSQL.Strings[13] := '(ENTERED = 1)' +
      date_filter + depot_filter + cust_filter;
    Data.DS_Return_Cust.Open;
    Data.DS_Return_Cust_N.Open;

    SetRetCustButtons;
  end;

// -----------------НА ОЧЕРЕДИ--------------

  procedure SetWaitRetCustFilter;
  begin

    Data.DS_Return_Cust.Close;
    Data.DS_Return_Cust_N.Close;
    Data.DS_Return_Cust_N.SQLs.SelectSQL.Strings[13] := 'ENTERED = 0';
    Data.DS_Return_Cust.Open;
    Data.DS_Return_Cust_N.Open;

    SetRetCustButtons;

    if Data.DS_Return_Cust_N.RecordCountFromSrv > 0 then
      RetCustForm.Close;
  end;

begin
  Data.DS_Return_Cust_N.DisableControls;
  Data.DS_Return_Cust.DisableControls;
  case Tree_Docs.Selected.AbsoluteIndex of
    tr_ret_cust_exec:
      SetExecRetCustFilter;
    tr_ret_cust_wait:
      SetWaitRetCustFilter;
  end;
  Data.DS_Return_Cust_N.Last;
  Data.DS_Return_Cust_N.EnableControls;
  Data.DS_Return_Cust.EnableControls;
end;

procedure TMainForm.TB_Return_Cust_NDblClick(Sender: TObject);
begin
  act_rc_edit.Execute;
end;

procedure TMainForm.TB_Return_Cust_NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return:
      act_rc_edit.Execute;
    VK_F5:
      if not act_rc_execute.Execute then
        act_rc_return.Execute;
  end;
  SetRetCustTittle;
end;

procedure TMainForm.ToolButton72Click(Sender: TObject);
begin
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_ret_cust_wait]);
end;

function TMainForm.GetDolg(client_id: Integer; Date: TDate): real;
var
  kassa_sum: variant;
begin
  kassa_sum := Data.Database.QueryValue
    ('SELECT SUM(SUMM_OUT + SUMM_IN) FROM CLIENT_ACC WHERE (CUST_ID = ' +
    inttostr(client_id) + ') AND (A_DATE <= ''' + DateTimeToStr(Date) +
    ''')', 0);
  if VarIsNull(kassa_sum) then
    kassa_sum := 0;
  Result := kassa_sum;
end;

function TMainForm.GetAllClientsDolg(dt: string): real;
var
  sa: string;
begin
  sa := 'select sum(' +
    'coalesce((SELECT SUM(SUM_TOTAL) FROM SALE_N WHERE (clientcards.ID = SALE_N.CUST_ID) and (S_DATE<='''
    + dt + ''')),0)+' +
    'coalesce((SELECT SUM(SUMM_TOTAL) FROM RETURN_SUPPL_N WHERE (clientcards.ID = RETURN_SUPPL_N.CUST_ID) and (R_DATE<='''
    + dt + ''')),0)-' +
    'coalesce((SELECT SUM(SUM_TOTAL) FROM ARRIVAL_N WHERE (clientcards.ID = ARRIVAL_N.CUST_ID) and (A_DATE<='''
    + dt + ''')),0)-' +
    'coalesce((SELECT SUM(SUMM_TOTAL) FROM RETURN_CUST_N WHERE (clientcards.ID = RETURN_CUST_N.CUST_ID) and (R_DATE<='''
    + dt + ''')),0)+' +
    'coalesce((SELECT SUM(SUMM) FROM KASSA WHERE (clientcards.ID = KASSA.CLIENT_ID) and (K_DATE<='''
    + dt + ''')),0)) ' +
    'from clientcards where (c_type <> 0) and (c_type <> 4) and (c_type <> 5)';
  // 0 - расходы, 4 - поставщики, 5 - боссы
  Result := Data.Database.QueryValue(sa, 0);
end;

function TMainForm.GetAllSuppliersDolg(dt: string): real;
var
  kassa_sum: variant;
begin
  kassa_sum := Data.Database.QueryValue
    ('SELECT SUM(SUMM_OUT + SUMM_IN) FROM CLIENT_ACC, CUSTOMERS WHERE (CLIENT_ACC.CUST_ID = CUSTOMERS.ID) AND (CUSTOMERS.C_TYPE = 4) AND (CUSTOMERS.USED = 1) AND (A_DATE <= '''
    + dt + ''')', 0);
  if VarIsNull(kassa_sum) then
    kassa_sum := 0;
  Result := kassa_sum;
end;

procedure TMainForm.SetKassaFilter;
var
  FromDate: variant;
  ToDate: variant;
  cust_filter: string;
  v: variant;
begin
  if ProgStarted then
  begin
    if VarIsNull(edit_kassa_date.EditValue) then
    begin
      if not VarIsNull(edit_kassa_client.EditValue) then
        cust_filter := 'WHERE CLIENT_ID = ' +
          inttostr(edit_kassa_client.EditValue)
      else
        cust_filter := 'WHERE C_TYPE >= 0';
      Data.DS_KASSA.Close;
      Data.DS_KASSA.SQLs.SelectSQL[14] := cust_filter;
      Data.DS_KASSA.Open;
      Data.DS_KASSA.Last;
      exit;
    end;

    if edit_kassa_date.EditValue > Now then
      edit_kassa_date.EditValue := Now;
    FromDate := Data.Database.QueryValue
      ('SELECT MAX(K_DATE) FROM KASSA WHERE CASHOUT = 1 AND K_DATE <= ''' +
      DateToStr(edit_kassa_date.EditValue) + ' 23:59:59''', 0);
    if FromDate = Null then
    begin
      FromDate := Data.Database.QueryValue
        ('SELECT MIN(K_DATE) FROM KASSA WHERE CASHOUT = 1', 0);
      ToDate := Data.Database.QueryValue
        ('SELECT MIN(K_DATE) FROM KASSA WHERE CASHOUT = 1 AND K_DATE > ''' +
        DateTimeToStr(FromDate) + '''', 0);
      edit_kassa_date.EditValue := FromDate;
    end
    else
    begin
      ToDate := Data.Database.QueryValue
        ('SELECT MIN(K_DATE) FROM KASSA WHERE CASHOUT = 1 and K_DATE >= ''' +
        DateToStr(edit_kassa_date.EditValue) + ' 23:59:59''', 0);
      if ToDate = Null then
        ToDate := Now;
    end;
    kassaFromDate := FromDate;
    kassaToDate := ToDate;
    if not VarIsNull(edit_kassa_client.EditValue) then
      cust_filter := ' AND CLIENT_ID = ' + inttostr(edit_kassa_client.EditValue)
    else
      cust_filter := '';

    Data.DS_KASSA.Close;
    Data.DS_KASSA.SQLs.SelectSQL[14] := ' WHERE K_DATE > ''' +
      DateTimeToStr(IncSecond(FromDate, 1)) + ''' AND K_DATE <= ''' +
      DateTimeToStr(IncSecond(ToDate, 1)) + '''' + cust_filter;
    Data.DS_KASSA.Open;
    v := Data.Database.QueryValue('SELECT SUM(SUMM) FROM KASSA ' +
      Data.DS_KASSA.SQLs.SelectSQL[14] + ' AND IN_USE = 1', 0);
    if VarIsNull(v) then
      kassa_sum := 0
    else
      kassa_sum := v;
    v := Data.Database.QueryValue('SELECT SUM(SUMM_USD) FROM KASSA ' +
      Data.DS_KASSA.SQLs.SelectSQL[14] + ' AND IN_USE = 1', 0);
    if VarIsNull(v) then
      kassa_sum_usd := 0
    else
      kassa_sum_usd := v;
    v := Data.Database.QueryValue('SELECT SUM(SUMM_UA) FROM KASSA ' +
      Data.DS_KASSA.SQLs.SelectSQL[14] + ' AND IN_USE = 1', 0);
    if VarIsNull(v) then
      kassa_sum_uah := 0
    else
      kassa_sum_uah := v;
    Data.DS_KASSA.Last;
    KassaSelectionCalc;
  end;
end;

procedure TMainForm.SetAccountingListFilter;
var
  flt: string;
begin
  Query.DS_QueryClients.Close;
  case editCustType.EditValue of
    1: flt := 'WHERE C_TYPE IN (1,2,3)';
    2: flt := 'WHERE C_TYPE = 4';
    default: flt := '';
  end;
  Query.DS_QueryClients.SelectSQL[15] := flt;
  Query.DS_QueryClients.Open;
end;

procedure TMainForm.SetAccountingFilter;
var
  cs: variant;
  date_filter: string;
  date_filter2: string;
  date_filter3: string;
  min_date: variant;
  range_summ: variant;
  vr: variant;
  cust_id: Integer;
  cust_flt: string;
  sp: TBookmark;
begin
  if ProgStarted then
  begin
    sp := Query.DS_QueryDolgi.GetBookmark;
    vr := Query.DS_QueryClients.fbn('ID').AsInteger;
    if VarIsNull(vr) then
      vr := -1;
    cust_id := vr;
    cust_flt := 'CUST_ID = ' + inttostr(vr);
    Query.DS_QueryDolgi.Close;
    date_filter2 := '';
    date_filter3 := '';

    if not VarIsNull(edit_acc_datefrom.EditValue) then
    begin
      date_filter := ' and (A_DATE >= ''' +
        DateToStr(edit_acc_datefrom.EditValue) + ' 00:00:00'')';
      date_filter2 := ' and A_DATE <= ''' +
        DateToStr(IncDay(edit_acc_datefrom.EditValue, -1)) + ' 23:59:59''';
      date_filter3 := ' AND A_DATE >=''' +
        DateToStr(edit_acc_datefrom.EditValue) + ' 00:00:00''';
    end;

    if not VarIsNull(edit_acc_dateto.EditValue) then
      date_filter := date_filter + 'and (A_DATE <= ''' +
        DateToStr(edit_acc_dateto.EditValue) + ' 23:59:59'')';

    min_date := Data.Database.QueryValue
      ('SELECT MIN(A_DATE) FROM CLIENT_ACC WHERE ' + cust_flt +
      date_filter3, 0);

    if VarIsNull(min_date) then
      min_date := Now;

    range_summ := 0;

    if not VarIsNull(edit_acc_datefrom.EditValue) then
    begin
      range_summ := Data.Database.QueryValue
        ('SELECT SUM(SUMM_IN + SUMM_OUT) FROM CLIENT_ACC WHERE ' + cust_flt +
        date_filter2, 0);
      if VarIsNull(range_summ) then
        range_summ := 0;
    end;
    Query.DS_QueryDolgi.SQLs.SelectSQL[10] := cust_flt + date_filter;
    Query.DS_QueryDolgi.SQLs.SelectSQL[14] := 'CAST(''' +
      DateToStr(IncDay(min_date, -1)) + ' 23:59:59'' AS TIMESTAMP),';
    Query.DS_QueryDolgi.SQLs.SelectSQL[16] :=
      ReplaceStr(FloatToStrF(range_summ, ffFixed, 20, 2), ',', '.') + ',';
    Query.DS_QueryDolgi.SQLs.SelectSQL[18] := inttostr(cust_id) + ',';

    Query.DS_QueryDolgi.Open;

    cs := Data.Database.QueryValues
      ('SELECT SUM(SUMM_OUT), SUM(SUMM_IN) FROM CLIENT_ACC WHERE ' + cust_flt +
      date_filter);
    if VarIsFloat(cs[0]) then
      client_summ_out := cs[0]
    else
      client_summ_out := 0;
    if VarIsFloat(cs[1]) then
      client_summ_in := cs[1]
    else
      client_summ_in := 0;
    client_summ := client_summ_out + client_summ_in + range_summ;

    AccSelectionCalc;
    if LastClientSelected <> Query.DS_QueryClients.fbn('ID').AsInteger then
    begin
      Query.DS_QueryDolgi.Last;
      LastClientSelected := Query.DS_QueryClients.fbn('ID').AsInteger;
    end
    else
      try
        Query.DS_QueryDolgi.GotoBookmark(sp);
      except
      end;
    Query.DS_QueryDolgi.FreeBookmark(sp);
    SetRangeText;
  end;
end;

procedure TMainForm.SetRangeText;
var
  d1, d2: variant;
  cpt: string;
begin
  d1 := edit_acc_datefrom.EditValue;
  d2 := edit_acc_dateto.EditValue;
  if VarIsNull(d1) and not VarIsNull(d2) then
    cpt := 'Отчёт за период до ' + DateToStr(d2);
  if VarIsNull(d2) and not VarIsNull(d1) then
    cpt := 'Отчёт за период с ' + DateToStr(d1) + ' по сегодня';
  if VarIsNull(d1) and VarIsNull(d2) then
    cpt := 'Отчёт за весь период';
  if not VarIsNull(d1) and not VarIsNull(d2) then
    cpt := 'Отчет за ' + inttostr(DaysBetween(edit_acc_dateto.EditValue,
      edit_acc_datefrom.EditValue)) + ' дней';
  acc_date_panel.Caption := cpt;
end;

procedure TMainForm.AccSelectionCalc;
Var
  summ_in, summ_out: real;
  I, RowCnt: Integer;
  SavePlace: TBookmark;
begin
  RowCnt := TB_Accounting.SelectedRows.Count;

  if RowCnt > 1 then
  Begin
    TB_Accounting.DataSource.DataSet.DisableControls;
    SavePlace := TB_Accounting.DataSource.DataSet.GetBookmark;
    summ_in := 0;
    summ_out := 0;
    I := 0;
    while (I < RowCnt) do
    Begin
      TB_Accounting.DataSource.DataSet.GotoBookmark
        (TBookmark(TB_Accounting.SelectedRows.Items[I]));
      summ_out := summ_out + TB_Accounting.DataSource.DataSet.FieldByName
        ('SUMM_OUT').AsFloat;
      summ_in := summ_in + TB_Accounting.DataSource.DataSet.FieldByName
        ('SUMM_IN').AsFloat;
      inc(I);
    end;
    TB_Accounting.DataSource.DataSet.GotoBookmark(SavePlace);
    TB_Accounting.DataSource.DataSet.FreeBookmark(SavePlace);
    TB_Accounting.DataSource.DataSet.EnableControls;
    lbl_AccSelSumm.Font.Color := clWindowText;
    lbl_vzial.Font.Color := clWindowText;
    lbl_oplatil.Font.Color := clWindowText;
    lbl_AccSelSumm.Caption := FloatToStrF(summ_out + summ_in, ffFixed, 20, 2);
    lbl_vzial.Caption := FloatToStrF(summ_out, ffFixed, 20, 2);
    lbl_oplatil.Caption := FloatToStrF(summ_in, ffFixed, 20, 2);
  end
  else
  begin
    lbl_AccSelSumm.Font.Color := clWindowText;
    lbl_vzial.Font.Color := clWindowText;
    lbl_oplatil.Font.Color := clWindowText;
    lbl_AccSelSumm.Caption := FloatToStrF(client_summ, ffFixed, 20, 2);
    lbl_vzial.Caption := FloatToStrF(client_summ_out, ffFixed, 20, 2);
    lbl_oplatil.Caption := FloatToStrF(client_summ_in, ffFixed, 20, 2);
  end;
end;

procedure TMainForm.KassaSelectionCalc;
Var
  summ_uah: real;
  summ_usd: real;
  summ: real;
  I, RowCnt: Integer;
  SavePlace: TBookmark;
begin
  RowCnt := TB_KASSA.SelectedRows.Count;
  if RowCnt > 1 then
  begin
    SavePlace := Data.DS_KASSA.GetBookmark;
    Data.DS_KASSA.DisableControls;
    try
      summ := 0;
      summ_uah := 0;
      summ_usd := 0;
      if RowCnt > 20 then
      begin
        lbl_kassa_sum_usd.Font.Color := clSilver;
        Application.ProcessMessages;
      end;
      I := 0;
      while (I < RowCnt) do
      Begin
        Data.DS_KASSA.GotoBookmark(TBookmark(TB_KASSA.SelectedRows.Items[I]));
        if Data.DS_KASSA.FieldByName('IN_USE').AsInteger <> 0 then
        begin
          summ := summ + Data.DS_KASSA.FieldByName('SUMM').AsFloat;
          summ_usd := summ_usd + Data.DS_KASSA.FieldByName('SUMM_USD').AsFloat;
          summ_uah := summ_uah + Data.DS_KASSA.FieldByName('SUMM_UA').AsFloat;
        end;
        inc(I);
      end;
      lbl_kassa_sum_usd.Font.Color := clWindowText;
      lbl_kassa_sum_usd.Caption := FloatToStrF(summ_usd, ffFixed, 20, 2);
    finally
      Data.DS_KASSA.GotoBookmark(SavePlace);
      Data.DS_KASSA.FreeBookmark(SavePlace);
      Data.DS_KASSA.EnableControls;
    end;
  end
  else
  begin
    lbl_kassa_sum_usd.Font.Color := clWindowText;
    lbl_kassa_sum_usd.Caption := FloatToStrF(kassa_sum_usd, ffFixed, 20, 2);
  end;

end;

procedure TMainForm.TB_AccountingGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  A_TYPE: Integer;
  ENTERED: Integer;
begin
  A_TYPE := (Sender as TDBGridEh).DataSource.DataSet.FieldByName('A_TYPE')
    .AsInteger;
  ENTERED := (Sender as TDBGridEh).DataSource.DataSet.FieldByName('ENTERED')
    .AsInteger;
  if ENTERED = 1 then
  begin
    if A_TYPE = SL then
      Background := OptionsForm.ec_sale.Brush.Color
    else if (A_TYPE = RC) or (A_TYPE = RS) then
      Background := OptionsForm.ec_return_cust.Brush.Color
    else if A_TYPE = KS then
      Background := OptionsForm.ec_kassa.Brush.Color
    else if A_TYPE = DL then
      Background := OptionsForm.ec_dolg.Brush.Color;
  end
  else
  begin
    AFont.Color := clGray;
    AFont.Style := [fsItalic];
  end;
end;

procedure TMainForm.TB_AccountingKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.enabled := true;
  if Key = VK_Return then
    act_acc_showbill.Execute;
end;

procedure TMainForm.TB_AccountingCellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) and (Query.DS_QueryDolgi.RecordCount > 0) then
    popup_accounting.PopupFromCursorPos;

end;

procedure TMainForm.TB_AccountingColumns3GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  Params.Text := GetDocDescription(strtoint(Params.Text));
end;

function TMainForm.GetDocDescription(tp: Integer): string;
begin
  case tp of
    SL:
      Result := 'Расходная накладная';
    AR:
      Result := 'Приходная накладная';
    RC:
      Result := 'Возвратная от клиента';
    RS:
      Result := 'Возвратная поставщику';
    KS:
      Result := 'Оплата';
    DL:
      Result := 'Начальные остатки';
  end;

end;

procedure TMainForm.GotoSaleBill(nakl_id: Integer);
begin
  edit_sale_date.EditValue := Data.Database.QueryValue
    ('SELECT S_DATE FROM SALE_N WHERE ID =' + inttostr(nakl_id), 0);
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_sale_exec]);
  Data.DS_Sale_N.Locate('ID', nakl_id, []);
  act_sale_edit.Execute;
end;


procedure TMainForm.TB_ClientSelectDolgColumns2GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
var
  dolg: real;
  debt: real;
  delay: integer;
  ctype: integer;
begin
 { TODO : Переделать логику текущего долга во взаиморасчетах }
  delay := Query.DS_QueryClients.fbn('DELAY').AsInteger;
  dolg := RoundTo(Query.DS_QueryClients.fbn('DOLG').AsFloat, -2);
  debt := RoundTo(Query.DS_QueryClients.fbn('DEBT').AsFloat, -2);
  ctype := Query.DS_QueryClients.fbn('C_TYPE').AsInteger;
  if debt = 0 then exit;



  if ctype = 4 //поставщики
    then
      begin
        if (debt <= dolg) and (delay <> 0)
          then Params.Text := Params.Text + ' (' + FloatToStr(dolg) + ')';
//        Params.Font.Style := [fsBold];
//        if (dolg > 0) or (debt > 0)
//          then Params.Font.Color := clBlue
//          else Params.Font.Color := clRed;
      end
    else
      begin
        if (debt >= dolg) and (delay <> 0)
          then Params.Text := Params.Text + ' (' + FloatToStr(dolg) + ')';
//        Params.Font.Style := [fsBold];
//        if dolg < 0
//          then Params.Font.Color := clBlue
//          else Params.Font.Color := clRed;
      end



{
  delay := Query.DS_QueryClients.fbn('DELAY').AsInteger;
  if delay = 0 then exit;
  dolg := RoundTo(Query.DS_QueryClients.fbn('DOLG').AsFloat, -2);
  debt := RoundTo(Query.DS_QueryClients.fbn('DEBT').AsFloat, -2);
  ctype := Query.DS_QueryClients.fbn('C_TYPE').AsInteger;
//  if (ctype = 4) and (debt >= 0) then exit;
//  if (ctype <> 4) and (debt <=0) then exit;

  if (delay = 0) or (dolg = 0) then exit;
  if debt >= dolg
    then Params.Font.Color := clRed
    else Params.Font.Color := clBlue;
  Params.Font.Style := [fsBold];
  if ((ctype = 4) and (debt < 0)) or ((ctype <> 4) and (debt > 0))
    then Params.Text := Params.Text + ' (' + FloatToStr(dolg) + ')';
}
end;

procedure TMainForm.TB_ClientSelectDolgGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  debt: double;
begin
  if not(Query.DS_QueryClients.FBN('C_TYPE').AsInteger in [1..4]) then exit;

  debt := RoundTo(Query.DS_QueryClients.fbn('DEBT').AsFloat, -2);
  if debt = 0
    then AFont.Color := clGray
  else if debt > 0
    then Background := OptionsForm.ec_arrival.Brush.Color
    else Background := OptionsForm.ec_sale.Brush.Color
end;

procedure TMainForm.TB_CustomersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Delete:
      act_client_delete.Execute;
    VK_Return:
      act_client_edit.Execute;
    VK_Insert:
      act_client_new.Execute;
  end;
end;

procedure TMainForm.TB_KASSACellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) and (Data.DS_KASSA.RecordCount > 0) then
    popup_kassa.PopupFromCursorPos;
end;

procedure TMainForm.TB_KASSAColumns6GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  if Data.DS_KASSA.fbn('SUMM_UA').AsFloat = 0 then
    Params.Text := '';
end;

procedure TMainForm.TB_KASSADblClick(Sender: TObject);
begin
  act_kassa_edit.Execute;
end;

procedure TMainForm.edit_sale_customerPropertiesCloseUp(Sender: TObject);
begin
  SetSaleFilter;
  TB_Sale_N.SetFocus;
end;

procedure TMainForm.edit_sale_datePropertiesCloseUp(Sender: TObject);
begin
  SetSaleFilter;
  TB_Sale_N.SetFocus;
end;

procedure TMainForm.TB_ClientSelectDolgKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_END, VK_HOME, VK_PRIOR, VK_NEXT] then
    SetAccountingFilter;
end;

procedure TMainForm.TB_ClientSelectDolgCellClick(Column: TColumnEh);
begin
  SetAccountingFilter;
end;

procedure TMainForm.TB_ClientSelectDolgCellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    popup_dolgclientlist.PopupFromCursorPos;
  if (Button = mbLeft) and (ssDouble in Shift) then
  begin
    Data.DS_Customers.Locate('ID', Query.DS_QueryClients.fbn('ID')
      .AsInteger, []);
    ClientCardForm.ShowModal;
  end;
end;

procedure TMainForm.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
var
  cust_id: Integer;
begin
  if Msg.CharCode = VK_F8 then
    act_kassa_add.Execute;
  if Msg.CharCode = VK_F7 then
  begin
    if area_client.ActivePage = P_Arrival_N then
      cust_id := Data.DS_Arrival_N.fbn('CUST_ID').AsInteger
    else if area_client.ActivePage = P_Sale_N then
      cust_id := Data.DS_Sale_N.fbn('CUST_ID').AsInteger
    else if area_client.ActivePage = P_Return_Cust_N then
      cust_id := Data.DS_Return_Cust_N.fbn('CUST_ID').AsInteger
    else if area_client.ActivePage = P_ReturnSuppl_N then
      cust_id := Data.DS_Return_Suppl_N.fbn('CUST_ID').AsInteger
    else
      cust_id := -1;
    CustomerHistoryForm.ShowEx(cust_id);
  end;
end;

procedure TMainForm.AddPayment;
begin
  TB_KASSA.Selection.Clear;
  Data.DS_KASSA.Append;
  Data.DS_KASSA.fbn('CURS').AsFloat := Data.LastCurs;
  KassaForm.econtrol := true;
  KassaForm.new_paid := true;

  if area_client.ActivePage = P_Accounting then
  begin
    Data.DS_KASSA.fbn('CLIENT_ID').AsInteger := Query.DS_QueryClients.fbn('ID')
      .AsInteger;
    KassaForm.active_control := [summ];
  end
  else
    KassaForm.active_control := [client];

  if (KassaForm.ShowModal = mrOK) and (area_client.ActivePage = P_Accounting)
    and (area_tree.ActivePage = P_Reports) then
    act_acc_refresh.Execute;
end;

procedure TMainForm.ExportParfToExcel(filename: string; percent: real;
  where: string);
begin
  with Data.ExcelExport do
  begin
    Application.ProcessMessages;
    Data.DS_Defaults.Edit;
    Data.DS_Defaults.fbn('PRICE_EXPORT_DISCOUNT').AsFloat := percent;
    Data.DS_Defaults.Post;
    // Data.DS_Defaults.CloseOpen(true);
    Data.DS_PRICETOEXCEL.Close;
    Data.DS_PRICETOEXCEL.SelectSQL[1] := 'WHERE ' + where;
    Data.DS_PRICETOEXCEL.Open;
    Data.DS_PRICETOEXCEL.DisableControls;
    Template := OptionsForm.edit_ExcelSpecPriceTemplate.Text;
    DataSet := Data.DS_PRICETOEXCEL;
    Show(filename);
    Data.DS_PRICETOEXCEL.EnableControls;
  end;

end;

procedure TMainForm.N50Click(Sender: TObject);
var
  discount: real;
begin
  ProcentForm.c_Skidka.Checked := false;
  ProcentForm.ActiveControl := ProcentForm.btn_OK;
  if ProcentForm.ShowModal = mrOK then
  begin
    discount := 0;
    if ProcentForm.c_Skidka.Checked then
      discount := ProcentForm.edit_prc.Value;
    SysContainer.ExportExcelDialog.filename := 'Ниша.xls';
    if SysContainer.ExportExcelDialog.Execute then
      ExportParfToExcel(SysContainer.ExportExcelDialog.filename, discount,
        'PRICE_CATEGORY_ID = 3');
  end;
end;

procedure TMainForm.P_GoodsOnDepotsHide(Sender: TObject);
begin
  event_locked := false;
end;

procedure TMainForm.P_GoodsOnDepotsShow(Sender: TObject);
begin
  event_locked := true;
end;

procedure TMainForm.P_PriceHide(Sender: TObject);
begin
  event_locked := false;
end;

procedure TMainForm.P_PriceShow(Sender: TObject);
begin
  event_locked := true;
end;

procedure TMainForm.TB_KASSAGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if ((Data.DS_KASSA.fbn('SUMM_USD').AsInteger < 0) or
    (Data.DS_KASSA.fbn('SUMM_UA').AsInteger < 0)) and
    (Data.DS_KASSA.fbn('IN_USE').AsInteger <> 0) then
    Background := OptionsForm.ec_Minus.Brush.Color;

  if Data.DS_KASSA.fbn('CASHOUT').AsInteger = 1 then
  begin
    Background := OptionsForm.ec_Encashment.Brush.Color;
    AFont.Style := [fsBold];
  end;

  if Data.DS_KASSA.fbn('IN_USE').AsInteger = 0 then
  begin
    AFont.Color := clGray;
    AFont.Style := [fsItalic];
  end;
end;

procedure TMainForm.TB_KASSAMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Timer1.enabled := false;
  KassaSelectionCalc;
end;

procedure TMainForm.TB_KASSAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.enabled := false;
  KassaSelectionCalc;
end;

procedure TMainForm.TB_KASSAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.enabled := true;
end;

procedure TMainForm.TB_AccountingKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.enabled := false;
  AccSelectionCalc;
end;

procedure TMainForm.TB_AccountingMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Timer1.enabled := false;
  AccSelectionCalc;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  if ProgStarted then
  begin
    lbl_AccSelSumm.Font.Color := clSilver;
    lbl_vzial.Font.Color := clSilver;
    lbl_oplatil.Font.Color := clSilver;
    lbl_kassa_sum_usd.Font.Color := clSilver;
    Timer1.enabled := false;
  end;
end;

procedure TMainForm.TB_AccountingMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.enabled := true;
end;

procedure TMainForm.TB_KASSAMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Timer1.enabled := true;
end;

procedure TMainForm.SetDayReportFilter;
begin
  try
    Screen.Cursor := crHourGlass;
    Query.DS_DayReport.DisableControls;
    Query.DS_DayReport.Close;
    Query.DS_DayReport.SQLs.SelectSQL[9] := 'A_DATE > ''31.03.2013''';
    Query.DS_DayReport.Open;
  finally
    Query.DS_DayReport.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainForm.mbtn_DayReportClick(Sender: TObject);
begin
  area_tree.ActivePage := P_Reports;
  Tree_Reports.Select(Tree_Reports.Items[tr_DayReport]);
end;

procedure TMainForm.TB_CustomersCellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    popup_clients.PopupFromCursorPos;
end;

procedure TMainForm.TB_CustomersDblClick(Sender: TObject);
begin
  act_client_edit.Execute;
end;

procedure TMainForm.TB_CustomersGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Data.DS_Customers.fbn('USED').AsInteger = 0 then
    AFont.Color := clSilver;
end;

procedure TMainForm.TB_AccountingDblClick(Sender: TObject);
begin
  act_acc_showbill.Execute;
end;

procedure TMainForm.act_file_blacklistExecute(Sender: TObject);
begin
  BannedItemsForm.ShowModal;
end;

procedure TMainForm.act_file_changepassExecute(Sender: TObject);
begin
  if Data.DS_Users.Locate('ID', MainForm.user_id, []) then
    ChangePassForm.ShowModal
  else
    MessageBox(Application.Handle, PChar('Неверный идентификатор пользователя!'
      + #10#13 + 'Обратитесь к администратору'), PChar(MainForm.Caption),
      MB_OK + MB_ICONERROR);
end;

procedure TMainForm.act_file_emailExecute(Sender: TObject);
begin
  EmailSetupForm.ShowModal;
  if EmailSetupForm.ModalResult = mrOK then
    MailingProgressForm.DoMailing
  else if EmailSetupForm.ModalResult = mrYes then
    MailingProgressForm.DoExcelExport;

end;

procedure TMainForm.act_file_importpriceExecute(Sender: TObject);
begin
  if PriceImportForm.ShowModal = mrOK then
  begin
    SysContainer.ImportExcelDialog.Title := 'Выберите файл Excel для "' +
      Data.DS_ImportPrice.FieldValues['SUPPL_NAME'] + '"';
    if SysContainer.ImportExcelDialog.Execute then
    begin
      try
        Screen.Cursor := crHourGlass;
        Data.DS_Goods.DisableControls;
        SysContainer.exlSupplier.filename :=
          SysContainer.ImportExcelDialog.filename;
        SysContainer.FillExcelVariable;
        UnsortedItemsForm.TB_Unsorted.RowCount := 1;
        if PriceImportForm.check_ClearData.Checked then
          SysContainer.ClearAvailability;
        SysContainer.exlSupplier.Execute;
      finally
        Data.DS_Goods.EnableControls;
        SysContainer.ImportExcelDialog.Title := 'Открыть';
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;

procedure TMainForm.act_file_lastunsortedExecute(Sender: TObject);
begin
  UnsortedItemsForm.Show;
end;

procedure TMainForm.act_file_reportseditorExecute(Sender: TObject);
begin
  SysContainer.defReport.DesignReport(false, false);
end;

procedure TMainForm.act_arr_price_specExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Пересчитать входные цены по ''Прайс 2''?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;

  with Data.DS_Arrival do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      fbn('PRICE').AsFloat :=
        RoundTo(Data.DS_Goods.Lookup('ID', fbn('GOOD_ID').AsInteger,
        'PRICE2'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_arr_price_generalExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Пересчитать входные цены по ''Прайс 1''?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;

  with Data.DS_Arrival do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      fbn('PRICE').AsFloat :=
        RoundTo(Data.DS_Goods.Lookup('ID', fbn('GOOD_ID').AsInteger,
        'PRICE1'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_arr_price_shop1Execute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Пересчитать входные цены по ''Прайс 3''?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;

  with Data.DS_Arrival do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      fbn('PRICE').AsFloat :=
        RoundTo(Data.DS_Goods.Lookup('ID', fbn('GOOD_ID').AsInteger,
        'PRICE_SHOP'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_arr_price_shop2Execute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Пересчитать входные цены по ''Прайс 4''?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;

  Data.DS_Arrival_N.Edit;
  Data.DS_Arrival_N.fbn('CURR_ID').AsInteger := 1;
  Data.DS_Arrival_N.Post;
  with Data.DS_Arrival do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      fbn('PRICE').AsFloat :=
        RoundTo(Data.DS_Goods.Lookup('ID', fbn('GOOD_ID').AsInteger,
        'PRICE_SHOP2'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_arr_recalcpricesExecute(Sender: TObject);
var
  sp: TBookmark;
  t: real;
begin
  t := ArrivalForm.edit_percent.CurEditValue;
  if MessageBox(Application.Handle,
    PChar('Пересчитать данные с ' + floattostr(t) + '%'),
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    with Data.DS_Arrival do
    begin
      sp := GetBookmark;
      progressbar.Position := 0;
      progressbar.Max := RecordCount;
      DisableControls;
      First;
      while not(eof) do
      begin
        Edit;
        fbn('PRICE').AsFloat := RoundTo(fbn('PRICE').AsFloat + fbn('PRICE')
          .AsFloat * t / 100, -2);
        Next;
        progressbar.StepIt;
        Application.ProcessMessages;
      end;
      GotoBookmark(sp);
      FreeBookmark(sp);
      progressbar.Position := 0;
      EnableControls;
    end;
end;

procedure TMainForm.act_rc_itemcardExecute(Sender: TObject);
begin
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Locate('ID', Data.DS_Return_Cust.FieldValues['GOOD_ID'], []);
  if Data.DS_Goods.FieldValues['DELETED'] = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if Data.DS_Goods.State = dsEdit then
      begin
        Data.DS_Goods.Post;
        Data.DS_Goods.ReopenLocate('ID');
        Query.DS_Select.ReopenLocate('ID');
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
end;

procedure TMainForm.act_file_goods_fullExecute(Sender: TObject);
label
  AndAskPassAgain;
begin
  DebtReasonSelectForm.CommentsEdit.Properties.EchoMode := eemPassword;
  DebtReasonSelectForm.Label1.Caption := 'Введите пароль:';
  DebtReasonSelectForm.CommentsEdit.Text := '';
AndAskPassAgain:
  if DebtReasonSelectForm.ShowModal = mrOK then
    if DebtReasonSelectForm.CommentsEdit.Text = 'porosenok' then
      GoodsFullEditForm.ShowModal
    else
    begin
      MessageBox(Application.Handle, 'Неверный пароль.',
        PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
      goto AndAskPassAgain
    end;
end;

procedure TMainForm.act_acc_closedebtExecute(Sender: TObject);
var
  cid: variant;
  summ: real;
begin
  cid := Query.DS_QueryClients['ID'];
  if VarIsNull(cid) then
  begin
    MessageBox(Application.Handle, 'Не выбран клиент.', PChar(MainForm.Caption),
      MB_OK + MB_ICONINFORMATION);
    exit;
  end;
  summ := Query.DS_QueryClients['DEBT'];
  DebtReasonSelectForm.Label1.Caption := 'Причина закрытия долга (' +
    floattostr(summ) + '):';
  DebtReasonSelectForm.CommentsEdit.Text := 'Начальное закрытие накладных';
  DebtReasonSelectForm.CommentsEdit.Properties.EchoMode := eemNormal;
  if DebtReasonSelectForm.ShowModal = mrOK then
    with Data.DS_KASSA do
    begin
      Append;
      fbn('CLIENT_ID').AsInteger := cid;
      fbn('CURS').AsFloat := Data.Database.QueryValue
        ('SELECT CURS.CURS FROM CURS WHERE (CURR_ID = 0) ORDER BY CURS."DATE" DESC ROWS 1',
        0);
      fbn('SUMM').AsFloat := summ * -1;
      fbn('SUMM_USD').AsFloat := summ;
      fbn('SUMM_UA').AsFloat := 0;
      fbn('K_DATE').AsDateTime := Now;
      fbn('COMMENTS').AsString := DebtReasonSelectForm.CommentsEdit.Text;
      fbn('IN_USE').AsInteger := 0;
      Post;
      act_acc_refresh.Execute;
      SetAccountingFilter;
    end;
end;

procedure TMainForm.act_acc_date_allExecute(Sender: TObject);
begin
  edit_acc_dateto.EditValue := Null;
  edit_acc_datefrom.EditValue := Null;
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_date_monthExecute(Sender: TObject);
begin
  edit_acc_dateto.EditValue := Today;
  edit_acc_datefrom.EditValue := IncMonth(Today, -1);
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_date_todayExecute(Sender: TObject);
begin
  edit_acc_dateto.EditValue := Today;
  edit_acc_datefrom.EditValue := Today;
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_date_weekExecute(Sender: TObject);
begin
  edit_acc_dateto.EditValue := Today;
  edit_acc_datefrom.EditValue := IncWeek(Today, -1);
  SetAccountingFilter;
  TB_Accounting.SetFocus;
end;

procedure TMainForm.act_acc_date_yearExecute(Sender: TObject);
begin
  edit_acc_dateto.EditValue := Today;
  edit_acc_datefrom.EditValue := IncYear(Today, -1);
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_exportexcelExecute(Sender: TObject);
var
  s: variant;
begin
  s := Query.DS_QueryClients['PRINTNAME'];
  if VarIsNull(s) then
  begin
    MessageBox(Application.Handle, 'Не выбран клиент.', PChar(MainForm.Caption),
      MB_OK + MB_ICONINFORMATION);
    exit;
  end;
  SysContainer.ExportExcelDialog.filename := 'Баланс по ' + s + '.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Query.DS_QueryDolgi.DisableControls;
      try
        Template := OptionsForm.edit_AccountingTemplate.Text;
        TemplSheet := s;
        DataSet := Query.DS_QueryDolgi;
        Show(SysContainer.ExportExcelDialog.filename);
        Title := 'Отчет по клиенту';
      finally
        Query.DS_QueryDolgi.EnableControls;
      end;
    end;
end;

procedure TMainForm.act_acc_previewExecute(Sender: TObject);
begin
  if SysContainer.DolgiReport.LoadFromFile(OptionsForm.edit_DolgiReport.Text)
  then
    try
      Query.DS_QueryDolgi.DisableControls;
      SysContainer.DolgiReport.PrepareReport;
      SysContainer.DolgiReport.ShowPreparedReport;
    finally
      Query.DS_QueryDolgi.EnableControls;
    end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_acc_printExecute(Sender: TObject);
begin
  if SysContainer.DolgiReport.LoadFromFile(OptionsForm.edit_DolgiReport.Text)
  then
    try
      Query.DS_QueryDolgi.DisableControls;
      SysContainer.DolgiReport.PrepareReport;
      SysContainer.DolgiReport.PrintOptions.ShowDialog := false;
      SysContainer.DolgiReport.Print;
    finally
      Query.DS_QueryDolgi.EnableControls;
    end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_acc_refreshExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    Query.DS_QueryClients.ReopenLocate('ID');
    Query.DS_QueryDolgi.ReopenLocate('A_DATE');
    SetAccountingFilter;
    AccSelectionCalc;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainForm.act_acc_reset_allExecute(Sender: TObject);
begin
  edit_acc_datefrom.EditValue := Null;
  edit_acc_dateto.EditValue := Null;
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_reset_datefromExecute(Sender: TObject);
begin
  edit_acc_datefrom.EditValue := Null;
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_reset_datetoExecute(Sender: TObject);
begin
  edit_acc_dateto.EditValue := Null;
  SetAccountingFilter;
end;

procedure TMainForm.act_acc_showbillExecute(Sender: TObject);
var
  tp: Integer;
begin
  tp := Query.DS_QueryDolgi.fbn('A_TYPE').AsInteger;

  if not tp in [SL, RS, RC, KS] then
    exit;

  if tp = KS then
  begin
    Data.DS_KASSA.DisableControls;
    try
      Data.DS_KASSA.Close;
      Data.DS_KASSA.SQLs.SelectSQL[14] := 'WHERE C_TYPE >= 0';
      Data.DS_KASSA.Open;
      Data.DS_KASSA.Locate('ID', Query.DS_QueryDolgi['NAKL_ID'], []);
    finally
      Data.DS_KASSA.EnableControls;
    end;
    act_kassa_edit.Execute;
    exit;
  end;

  if tp = SL then
  begin
    Screen.Cursor := crHourGlass;
    Data.DS_Sale.Close;
    Data.DS_Sale_N.Close;
    Data.DS_Sale_N.SQLs.SelectSQL[14] := '(ID = ' +
      inttostr(Query.DS_QueryDolgi.fbn('NAKL_ID').AsInteger) + ')';
    Data.DS_Sale_N.Open;
    Data.DS_Sale.Open;
    Screen.Cursor := crDefault;
    SaleForm.Caption := 'Расходная накладная № ' +
      inttostr(Query.DS_QueryDolgi.fbn('NAKL_ID').AsInteger);
    SetSaleButtonsExec;
    SaleForm.Splitter.CloseSplitter;
    act_sale_return.enabled := false;
    SaleForm.ShowModal;
  end;

  if tp = RC then
  begin
    edit_rc_date.EditValue := Query.DS_QueryDolgi['A_DATE'];
    area_tree.ActivePage := P_Documents;
    Tree_Docs.Select(Tree_Docs.Items[tr_ret_cust_exec]);
    Data.DS_Return_Cust_N.Locate('ID', Query.DS_QueryDolgi['NAKL_ID'], []);
    act_rc_edit.Execute;
  end;

  if tp = RS then
  begin
    edit_rs_date.EditValue := Query.DS_QueryDolgi['A_DATE'];
    area_tree.ActivePage := P_Documents;
    Tree_Docs.Select(Tree_Docs.Items[tr_ret_suppl_exec]);
    Data.DS_Return_Suppl_N.Locate('ID', Query.DS_QueryDolgi['NAKL_ID'], []);
    act_rs_edit.Execute;
  end;

end;

procedure TMainForm.act_acc_totaldebtExecute(Sender: TObject);
var
  ttl: real;
  sa: string;
  dt: string;
begin
  if VarIsNull(edit_acc_dateto.EditValue) then
    dt := DateToStr(Now) + ' 23:59:59'
  else
    dt := DateToStr(edit_acc_dateto.EditValue) + ' 23:59:59';

  sa := 'select sum(' +
    'coalesce((SELECT SUM(SUM_TOTAL) FROM SALE_N WHERE (clientcards.ID = SALE_N.CUST_ID) and (S_DATE<='''
    + dt + ''')),0)+' +
    'coalesce((SELECT SUM(SUMM_TOTAL) FROM RETURN_SUPPL_N WHERE (clientcards.ID = RETURN_SUPPL_N.CUST_ID) and (R_DATE<='''
    + dt + ''')),0)-' +
    'coalesce((SELECT SUM(SUM_TOTAL) FROM ARRIVAL_N WHERE (clientcards.ID = ARRIVAL_N.CUST_ID) and (A_DATE<='''
    + dt + ''')),0)-' +
    'coalesce((SELECT SUM(SUMM_TOTAL) FROM RETURN_CUST_N WHERE (clientcards.ID = RETURN_CUST_N.CUST_ID) and (R_DATE<='''
    + dt + ''')),0)+' +
    'coalesce((SELECT SUM(SUMM) FROM KASSA WHERE (clientcards.ID = KASSA.CLIENT_ID) and (K_DATE<='''
    + dt + ''')),0)) ' + 'from clientcards where accounting = 1';

  ttl := Data.Database.QueryValue(sa, 0);
  MessageBox(Application.Handle,
    PChar('Общий долг по клиентам на ' + DateToStr(edit_acc_dateto.EditValue) +
    ' составляет: ' + FloatToStrF(ttl, ffFixed, 20, 2)),
    PChar(MainForm.Caption), MB_OK + MB_ICONINFORMATION);
end;

procedure TMainForm.act_arr_addExecute(Sender: TObject);
begin
  Data.DS_Arrival_N.Append;
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_arr_wait]);
  ArrivalForm.ShowModal;
end;

procedure TMainForm.act_arr_clear_naklExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Очистить накладную?',
    PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then
    exit;
  Data.Database.Execute('DELETE FROM ARRIVAL WHERE NAKL_ID = ' +
    inttostr(Data.DS_Arrival_N.fbn('ID').AsInteger));
  Data.DS_Arrival.CloseOpen(false);
end;

procedure TMainForm.act_arr_colprintExecute(Sender: TObject);
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  if SysContainer.ArrivalReport.LoadFromFile
    (OptionsForm.edit_ArrivalCheckReport.Text) then
  begin
    try
      Data.DS_Arrival.DisableControls;
      SysContainer.ArrivalReport.PrepareReport;
      SysContainer.ArrivalReport.PrintOptions.ShowDialog := false;
      SysContainer.ArrivalReport.Print;
    finally
      Data.DS_Arrival.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_arr_deleteExecute(Sender: TObject);
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить накладную?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  if ArrivalForm.Visible then
    ArrivalForm.Close;
  Data.SetUserActivity(AR);
  isMyApplyActivity := true;
  Data.DS_Arrival_N.Delete;
  Data.ClearUserActivity;
  Data.CanUpdateUser := true;
end;

procedure TMainForm.act_arr_editExecute(Sender: TObject);
begin
  if Data.DS_Arrival_N.VisibleRecordCount > 0 then
  begin
    if Data.BillOpened(AR) > 0 then
      exit;
    ArrivalForm.ShowModal;
  end;
end;

procedure TMainForm.act_arr_exportexcelExecute(Sender: TObject);
var
  s: string;
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  s := inttostr(Data.DS_Arrival_N['ID']);
  SysContainer.ExportExcelDialog.filename := 'arrivalBill_' + s + '.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      try
        Data.DS_Arrival.DisableControls;
        Data.DS_Arrival_N.DisableControls;
        Data.DS_Goods.DisableControls;
        Template := OptionsForm.edit_ExcelArrivalTemplate.Text;
        TemplSheet := s;
        DataSet := Data.DS_Arrival;
        Title := 'Приходная накладная';
        Show(SysContainer.ExportExcelDialog.filename);
      finally
        Data.DS_Arrival.EnableControls;
        Data.DS_Arrival_N.EnableControls;
        Data.DS_Goods.EnableControls;
      end;
    end;
end;

procedure TMainForm.act_arr_executeExecute(Sender: TObject);
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  if Data.DS_Arrival.State = dsEdit then
    Data.DS_Arrival.Post;

  if not Data.CanApplyBill('ARRIVAL', Data.DS_Arrival_N.fbn('id').AsInteger)
  then
  begin
    MessageBox(Application.Handle, 'Введены неверные данные.' + #13 +
      'Выполнение невозможно!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;

  if ArrivalForm.Visible then
    ArrivalForm.Close;
  isMyApplyActivity := true;
  Data.DS_Arrival_N.Edit;
  Data.DS_Arrival_N.fbn('ENTERED').AsBoolean := true;
  Data.DS_Arrival_N.Post;
end;

procedure TMainForm.act_arr_exportExecute(Sender: TObject);
var
  BS: TStringList;
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  SysContainer.SaveDialog.Filter := 'Приходные накладные|*.amn';
  SysContainer.SaveDialog.DefaultExt := 'amn';
  SysContainer.SaveDialog.filename := 'ARR_' +
    inttostr(Data.DS_Arrival_N.FieldValues['ID']);
  if SysContainer.SaveDialog.Execute then
  begin
    progressbar.Max := Data.DS_Arrival.VisibleRecordCount;
    progressbar.Position := 0;
    BS := TStringList.Create;
    BS.Add('Moscquito v3 ''Arrival File'' by RiFF');
    BS.Add('----------------');
    BS.Add(inttostr(Data.DS_Arrival_N['SUPPL_ID']));
    BS.Add(inttostr(Data.DS_Arrival_N['DEPOT_ID']));
    BS.Add(inttostr(Data.DS_Arrival_N['CURR_ID']));
    if Data.DS_Arrival_N['COMMENTS'] <> Null then
      BS.Add(Data.DS_Arrival_N['COMMENTS'])
    else
      BS.Add('');
    BS.Add('----------------');
    Data.DS_Arrival.First;
    while not(Data.DS_Arrival.eof) do
    begin
      BS.Add(inttostr(Data.DS_Arrival.FBN('GOOD_ID').AsInteger));
      BS.Add(floattostr(Data.DS_Arrival.FBN('CNT').AsFloat));
      BS.Add(floattostr(Data.DS_Arrival.FBN('PRICE').AsFloat));
      Data.DS_Arrival.Next;
      progressbar.StepIt;
      Application.ProcessMessages;
    end;
    BS.SaveToFile(SysContainer.SaveDialog.filename);
    progressbar.Position := 0;
    BS.Free;
  end;
end;

procedure TMainForm.act_arr_historyExecute(Sender: TObject);
begin
  HistoryForm.ShowEx(Data.DS_Arrival.fbn('GOOD_ID').AsInteger, all);
end;

procedure TMainForm.act_arr_importExecute(Sender: TObject);
var
  BS: TStringList;
  I, j, sa: Integer;
begin
  SysContainer.OpenDialog.Filter := 'Файлы закупки (*.amn)|*.amn';
  if SysContainer.OpenDialog.Execute then
  begin
    Data.DS_Arrival.DisableControls;
    Data.DS_Arrival_N.DisableControls;
    Tree_Docs.Select(Tree_Docs.Items[tr_arr_wait]);
    BS := TStringList.Create;
    BS.LoadFromFile(SysContainer.OpenDialog.filename);
    progressbar.Max := (BS.Count - 7) div 3;
    progressbar.Position := 0;
    if Pos('''Arrival File'' by RiFF', BS[0]) = 0 then
    begin
      MessageBox(Application.Handle, 'Неверный файл данных.',
        PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
      exit;
    end;
    with Data.DS_Arrival_N do
    begin
      Insert;
      FieldValues['ENTERED'] := false;
      FieldValues['A_DATE'] := Now;
      FieldValues['SUPPL_ID'] := strtoint(BS[2]);
      FieldValues['DEPOT_ID'] := strtoint(BS[3]);
      FieldValues['CURR_ID'] := strtoint(BS[4]);
      if BS[5] <> '' then
        FieldValues['COMMENTS'] := BS[5];
      Post;
    end;
    j := 7;
    sa := (BS.Count - 7) div 3;
    for I := 1 to sa do
    begin
      with Data.DS_Arrival do
      begin
        Insert;
        FBN('GOOD_ID').AsInteger := strtoint(BS[j]);
        FBN('CNT').AsFloat := strtofloat(BS[j + 1]);
        FBN('PRICE').AsFloat := strtofloat(BS[j + 2]);
        Post;
        inc(j, 3);
      end;
      progressbar.StepIt;
      Application.ProcessMessages;
    end;
    progressbar.Position := 0;
    SetArrivalFilter;
    SetArrivalTittle;
    Data.DS_Arrival.ReopenLocate('ID');
    Data.DS_Arrival.EnableControls;
    Data.DS_Arrival_N.EnableControls;
  end;
end;

procedure TMainForm.act_arr_shopcardExecute(Sender: TObject);
begin
  if Data.DS_Goods.Locate('ID', Data.DS_Arrival.FieldValues['GOOD_ID'], []) then
    act_price_shop_edit.Execute;
end;

procedure TMainForm.act_arr_itemcardExecute(Sender: TObject);
begin
  ItemEditorForm.isFromArrival := true;
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Locate('ID', Data.DS_Arrival.FieldValues['GOOD_ID'], []);
  if Data.DS_Goods.FieldValues['DELETED'] = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        try
          Screen.Cursor := crAppStart;
          Data.DS_Goods.Post;
          Data.DS_Goods.ReopenLocate('ID');
          Query.DS_Select.ReopenLocate('ID');
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
  ItemEditorForm.isFromArrival := false;
  Data.DS_Arrival.ReopenLocate('ID');

end;

procedure TMainForm.act_arr_nextdayExecute(Sender: TObject);
begin
  if edit_arr_date.EditValue = Null then
    exit;
  edit_arr_date.EditValue := IncDay(edit_arr_date.EditValue, 1);
  SetArrivalFilter;
end;

procedure TMainForm.act_arr_prevdayExecute(Sender: TObject);
begin
  if edit_arr_date.EditValue = Null then
    exit;
  edit_arr_date.EditValue := IncDay(edit_arr_date.EditValue, -1);
  SetArrivalFilter;
end;

procedure TMainForm.act_arr_previewExecute(Sender: TObject);
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  if SysContainer.ArrivalReport.LoadFromFile(OptionsForm.edit_ArrivalReport.Text)
  then
  begin
    try
      Data.DS_Arrival.DisableControls;
      SysContainer.ArrivalReport.PrepareReport;
      SysContainer.ArrivalReport.ShowPreparedReport;
    finally
      Data.DS_Arrival.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_arr_printExecute(Sender: TObject);
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  if SysContainer.ArrivalReport.LoadFromFile(OptionsForm.edit_ArrivalReport.Text)
  then
  begin
    try
      Data.DS_Arrival.DisableControls;
      SysContainer.ArrivalReport.PrepareReport;
      SysContainer.ArrivalReport.PrintOptions.ShowDialog := false;
      SysContainer.ArrivalReport.Print;
    finally
      Data.DS_Arrival.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_arr_resetExecute(Sender: TObject);
begin
  edit_arr_date.EditValue := Now;
  edit_arr_supplier.EditValue := Null;
  edit_arr_depot.KeyValue := Null;
  edit_arr_depot.Text := '';
  SetArrivalFilter;
end;

procedure TMainForm.act_arr_reset_dateExecute(Sender: TObject);
begin
  edit_arr_date.EditValue := Null;
  SetArrivalFilter;
end;

procedure TMainForm.act_arr_reset_depotExecute(Sender: TObject);
begin
  edit_arr_depot.KeyValue := Null;
  edit_arr_depot.Text := '';
  SetArrivalFilter;
end;

procedure TMainForm.act_arr_reset_supplierExecute(Sender: TObject);
begin
  edit_arr_supplier.EditValue := Null;
  SetArrivalFilter;
end;

procedure TMainForm.act_arr_returnExecute(Sender: TObject);
begin
  if Data.BillOpened(AR) > 0 then
    exit;
  // Нельзя вернуть накладные возрастом больше недели.
  if (Trunc(Now) - Trunc(Data.DS_Arrival_N.fbn('A_DATE').AsDateTime) > 7) and
    not SecKey then
  begin
    MessageBox(Application.Handle, 'Невозможно вернуть накладную!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    exit;
  end;

  if ArrivalForm.Visible then
    ArrivalForm.Close;
  isMyApplyActivity := true;
  Data.DS_Arrival_N.Edit;
  Data.DS_Arrival_N.fbn('ENTERED').AsBoolean := false;
  Data.DS_Arrival_N.Post;
end;

procedure TMainForm.act_arr_todayExecute(Sender: TObject);
begin
  edit_arr_date.EditValue := Now;
  SetArrivalFilter;
end;

procedure TMainForm.act_arep_updateExecute(Sender: TObject);
begin
  SetAccReportFilter;
end;

procedure TMainForm.SetAccReportFilter;
var
  sm: real;
  // dt, df: string;
  df_s, dt_s, df_e, dt_e: string;
  saled, arrived, begin_balance, end_balance: real;
  r_arenda, r_zarplata, r_office, rashodi: real;

begin
  WaitForm.Show;
  Application.ProcessMessages;
  df_s := DateToStr(edit_arep_from_date.EditValue) + ' 00:00:00';
  df_e := DateToStr(edit_arep_from_date.EditValue) + ' 23:23:59';
  dt_s := DateToStr(edit_arep_to_date.EditValue) + ' 00:00:00';
  dt_e := DateToStr(edit_arep_to_date.EditValue) + ' 23:23:59';
  Query.DS_AccReport.Params[0].AsString := dt_e;
  Query.DS_AccReport.CloseOpen(true);
  arrived := GetArrivalPeriod(df_s, dt_e);
  lbl_all_arrived.Caption := FloatToStrF(arrived, ffFixed, 20, 2);
  saled := GetSalePeriod(df_s, dt_e);
  lbl_all_saled.Caption := FloatToStrF(saled, ffFixed, 20, 2);
  begin_balance := GetMoneyInGoods(df_s);
  lbl_begin_money_in_goods.Caption := FloatToStrF(begin_balance,
    ffFixed, 20, 2);
  end_balance := GetMoneyInGoods(dt_e);
  lbl_end_money_in_goods.Caption := FloatToStrF(end_balance, ffFixed, 20, 2);
  // Дима
  lbl_dima_money.Caption := FloatToStrF(GetDolg(162, StrToDateTime(df_e)),
    ffFixed, 20, 2) + '  /  ' + FloatToStrF(GetDolg(162, StrToDateTime(dt_e)),
    ffFixed, 20, 2);
  // Саша
  lbl_sasha_money.Caption := FloatToStrF(GetDolg(161, StrToDateTime(dt_e)),
    ffFixed, 20, 2);
  // Офисные расходы
  sm := GetOfficeExpenses(df_s, dt_e);
  r_office := sm;
  lbl_rashodi.Caption := FloatToStrF(sm, ffFixed, 20, 2);
  // Аренда
  sm := GetRentExpenses(df_s, dt_e);
  r_arenda := sm;
  lbl_rent.Caption := FloatToStrF(sm, ffFixed, 20, 2);
  // Зарплата
  sm := GetSalaryExpenses(df_s, dt_e);
  r_zarplata := sm;
  lbl_salary.Caption := FloatToStrF(sm, ffFixed, 20, 2);
  // Долги клиентов
  sm := GetAllClientsDolg(df_s);
  lbl_dolgi.Caption := FloatToStrF(sm, ffFixed, 20, 2);
  sm := GetAllClientsDolg(dt_e);
  lbl_dolgi.Caption := lbl_dolgi.Caption + '  /  ' +
    FloatToStrF(sm, ffFixed, 20, 2);
  // Все расходы
  rashodi := r_arenda + r_zarplata + r_office;
  // Долги поставщиков
  sm := GetAllSuppliersDolg(df_s);
  lbl_suppl_dolg.Caption := FloatToStrF(sm, ffFixed, 20, 2);
  sm := GetAllSuppliersDolg(dt_e);
  lbl_suppl_dolg.Caption := lbl_suppl_dolg.Caption + '  /  ' +
    FloatToStrF(sm, ffFixed, 20, 2);
  // Чистый доход
  sm := saled + end_balance - begin_balance - arrived; // - rashodi;
  lbl_dohod.Caption := FloatToStrF(sm, ffFixed, 20, 2);
  WaitForm.Close;
end;

function TMainForm.GetOfficeExpenses(dt_from, dt_to: string): real;
var
  kassa_sum: variant;
begin
  kassa_sum := Data.Database.QueryValue
    ('SELECT SUM(SUMM_OUT + SUMM_IN) FROM CLIENT_ACC WHERE (CUST_ID = 160) AND (A_DATE >= '''
    + dt_from + ''') AND (A_DATE <= ''' + dt_to + ''')', 0);
  if VarIsNull(kassa_sum) then
    kassa_sum := 0;
  Result := kassa_sum;
end;

function TMainForm.GetRentExpenses(dt_from, dt_to: string): real;
var
  kassa_sum: variant;
begin
  kassa_sum := Data.Database.QueryValue
    ('SELECT SUM(SUMM_OUT + SUMM_IN) FROM CLIENT_ACC WHERE (CUST_ID = 295) AND (A_DATE >= '''
    + dt_from + ''') AND (A_DATE <= ''' + dt_to + ''')', 0);
  if VarIsNull(kassa_sum) then
    kassa_sum := 0;
  Result := kassa_sum;
end;

function TMainForm.GetSalaryExpenses(dt_from, dt_to: string): real;
var
  kassa_sum: variant;
begin
  kassa_sum := Data.Database.QueryValue
    ('SELECT SUM(SUMM_OUT + SUMM_IN) FROM CLIENT_ACC WHERE (CUST_ID = 296) AND (A_DATE >= '''
    + dt_from + ''') AND (A_DATE <= ''' + dt_to + ''')', 0);
  if VarIsNull(kassa_sum) then
    kassa_sum := 0;
  Result := kassa_sum;
end;

function TMainForm.GetMoneyInGoods(dt: String): real;
begin
  Query.MoneyInGoods.Params[0].AsString := dt;
  Query.MoneyInGoods.ExecQuery;
  Result := Query.MoneyInGoods.Fields[0].AsFloat;
end;

function TMainForm.GetArrivalPeriod(df, dt: String): real;
var
  sm: variant;
begin
  sm := Data.Database.QueryValue
    ('SELECT SUM(SUMM_IN) FROM SALED_ARRIVED WHERE (A_DATE >=''' + df +
    ''') AND (A_DATE <=''' + dt + ''')', 0);
  if VarIsNull(sm) then
    Result := 0
  else
    Result := sm;
end;

function TMainForm.GetSalePeriod(df, dt: string): real;
var
  sm: variant;
begin
  sm := Data.Database.QueryValue
    ('SELECT SUM(SUMM_OUT) FROM SALED_ARRIVED WHERE (A_DATE >=''' + df +
    ''') AND (A_DATE <=''' + dt + ''')', 0);
  if VarIsNull(sm) then
    Result := 0
  else
    Result := sm;
end;

procedure TMainForm.act_billsExecute(Sender: TObject);
begin
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[(Sender as TAction).Tag]);
end;

procedure TMainForm.act_client_deleteExecute(Sender: TObject);
var
  return_count: variant;
  sale_count: variant;
  kassa_count: variant;
begin
  With Data.Database do
  begin
    return_count :=
      QueryValue('SELECT COUNT(*) FROM RETURN_CUST_N WHERE CUST_ID = ' +
      inttostr(Data.DS_Customers['ID']), 0);
    sale_count := QueryValue('SELECT COUNT(*) FROM SALE_N WHERE CUST_ID = ' +
      inttostr(Data.DS_Customers['ID']), 0);
    kassa_count := QueryValue('SELECT COUNT(*) FROM KASSA WHERE CLIENT_ID = ' +
      inttostr(Data.DS_Customers['ID']), 0);
  end;
  if return_count + sale_count + kassa_count > 0 then
    MessageBox(Application.Handle, 'Выбранная карточка клиента используется.' +
      #10#13 + 'Удаление невозможно.', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION)
  else if MessageBox(Application.Handle, 'Удалить выбранную карточку клиента?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    Data.DS_Customers.Delete;
    Data.DS_Customers.ReopenLocate('ID');
  end;
end;

procedure TMainForm.act_client_editExecute(Sender: TObject);
begin
  ClientCardForm.ShowModal;
end;

procedure TMainForm.act_client_newExecute(Sender: TObject);
begin
  TB_Customers.Selection.Clear;
  Data.DS_Customers.Insert;
  ClientCardForm.ShowModal;
end;

procedure TMainForm.act_classifiersExecute(Sender: TObject);
begin
  area_tree.ActivePage := P_Classifiers;
  Tree_Classifiers.Select(Tree_Classifiers.Items[(Sender as TAction).Tag]);
end;

procedure TMainForm.act_rc_addExecute(Sender: TObject);
var
  nakl_id: integer;
begin
  Tree_Docs.Select(Tree_Docs.Items[tr_ret_cust_wait]);
  with Data.DS_Return_Cust_N do
  begin
    Append;
    Post;
    nakl_id := fbn('ID').AsInteger;
    SetRetCustFilter;
    SetRetCustTittle;
    Locate('ID', nakl_id, []);
  end;
  RetCustForm.ShowModal;
end;

procedure TMainForm.act_rc_deleteExecute(Sender: TObject);
var
  nakl_id: variant;
begin
  if Data.BillOpened(RC) > 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить накладную?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    Data.DS_Return_Cust_N.Delete;
    nakl_id := Data.DS_Return_Cust_N['ID'];
    SetRetCustFilter;
    Data.DS_Return_Cust_N.Locate('ID', nakl_id, []);
  end;
end;

procedure TMainForm.act_rc_editExecute(Sender: TObject);
begin
  if Data.DS_Return_Cust_N.VisibleRecordCount > 0 then
  begin
    if Data.BillOpened(RC) > 0 then
      exit;
    SetRetCustTittle;
    RetCustForm.ShowModal;
  end;
end;

procedure TMainForm.act_rc_executeExecute(Sender: TObject);
begin
  if Data.BillOpened(RC) > 0 then
    exit;
  if Data.DS_Return_Cust.State = dsEdit then
    Data.DS_Return_Cust.Post;

  if not Data.CanApplyBill('RETURN_CUST', Data.DS_Return_Cust_N.fbn('id')
    .AsInteger) then
  begin
    MessageBox(Application.Handle, 'Введены неверные данные.' + #13 +
      'Выполнение невозможно!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;

  if RetCustForm.Visible then
    RetCustForm.Close;
  isMyApplyActivity := true;
  Data.DS_Return_Cust_N.Edit;
  Data.DS_Return_Cust_N.fbn('ENTERED').AsBoolean := true;
  Data.DS_Return_Cust_N.Post;
end;

procedure TMainForm.act_rc_exportexcelExecute(Sender: TObject);
var
  s: string;
  sp: TBookmark;
begin
  if Data.BillOpened(RC) > 0 then
    exit;

  s := inttostr(Data.DS_Return_Cust_N['ID']);
  SysContainer.ExportExcelDialog.filename := 'ret_cust_' + s + '.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      sp := Data.DS_Return_Cust.GetBookmark;
      Data.DS_Return_Cust.DisableControls;
      Template := ApplicationPath + 'Reports\Возврат от покупателя.xls';
      TemplSheet := s;
      DataSet := Data.DS_Return_Cust;
      Title := 'Возвратная накладная';
      Show(SysContainer.ExportExcelDialog.filename);
      try
        Data.DS_Return_Cust.GotoBookmark(sp);
      finally
        Data.DS_Return_Cust.FreeBookmark(sp);
      end;
      Data.DS_Return_Cust.EnableControls;
    end;
end;

procedure TMainForm.act_rc_exportExecute(Sender: TObject);
begin
  if Data.BillOpened(RC) > 0 then
    exit;
end;

procedure TMainForm.act_rc_nextdayExecute(Sender: TObject);
begin
  edit_rc_date.EditValue := IncDay(edit_rc_date.EditValue, 1);
  SetRetCustFilter;
end;

procedure TMainForm.act_rc_prevdayExecute(Sender: TObject);
begin
  edit_rc_date.EditValue := IncDay(edit_rc_date.EditValue, -1);
  SetRetCustFilter;
end;

procedure TMainForm.act_rc_previewExecute(Sender: TObject);
begin
  if Data.BillOpened(RC) > 0 then
    exit;
  if SysContainer.RetCustReport.LoadFromFile(OptionsForm.edit_RetCustReport.Text)
  then
  begin
    SysContainer.RetCustReport.PrepareReport;
    SysContainer.RetCustReport.ShowPreparedReport;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_rc_price_generalExecute(Sender: TObject);
begin
  with Data.DS_Return_Cust do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      FieldValues['PRICE'] :=
        RoundTo(Data.DS_Goods.Lookup('ID', FieldValues['GOOD_ID'],
        'PRICE1'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_rc_price_lastExecute(Sender: TObject);
begin
  with Data.DS_Return_Cust do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      // Здесь нужен именно FieldValues чтобы была возможность вставить Null
      FieldValues['PRICE'] := Data.GetLastSalePrice(fbn('GOOD_ID').AsInteger,
        Data.DS_Return_Cust_N.fbn('CUST_ID').AsInteger);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_rc_price_shop1Execute(Sender: TObject);
begin
  with Data.DS_Return_Cust do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      FieldValues['PRICE'] :=
        RoundTo(Data.DS_Goods.Lookup('ID', FieldValues['GOOD_ID'],
        'PRICE_SHOP'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_rc_price_shop2Execute(Sender: TObject);
begin
  with Data.DS_Return_Cust do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      FieldValues['PRICE'] :=
        RoundTo(Data.DS_Goods.Lookup('ID', FieldValues['GOOD_ID'],
        'PRICE_SHOP2'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_rc_price_specExecute(Sender: TObject);
begin
  with Data.DS_Return_Cust do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      FieldValues['PRICE'] :=
        RoundTo(Data.DS_Goods.Lookup('ID', FieldValues['GOOD_ID'],
        'PRICE2'), -2);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_rc_printExecute(Sender: TObject);
begin
  if Data.BillOpened(RC) > 0 then
    exit;
  if SysContainer.RetCustReport.LoadFromFile(OptionsForm.edit_RetCustReport.Text)
  then
  begin
    SysContainer.RetCustReport.PrepareReport;
    SysContainer.RetCustReport.PrintOptions.ShowDialog := false;
    SysContainer.RetCustReport.Print;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_rc_percentExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle,
    PChar('Пересчитать данные с ' + floattostr(RetCustForm.edit_percent.Value) +
    '%'), PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    with Data.DS_Return_Cust do
    begin
      First;
      while not(eof) do
      begin
        Edit;
        FieldValues['PRICE'] :=
          RoundTo(FieldValues['PRICE'] + FieldValues['PRICE'] *
          RetCustForm.edit_percent.Value / 100, -2);
        Next;
      end;
    end;
end;

procedure TMainForm.act_rc_reset_allExecute(Sender: TObject);
begin
  edit_rc_date.EditValue := Null;
  edit_rc_customer.EditValue := Null;
  edit_rc_depot.KeyValue := Null;
  edit_rc_depot.Text := '';
  SetRetCustFilter;
  TB_Return_Cust_N.SetFocus;
end;

procedure TMainForm.act_rc_reset_customerExecute(Sender: TObject);
begin
  edit_rc_customer.EditValue := Null;
  SetRetCustFilter;
end;

procedure TMainForm.act_rc_reset_dateExecute(Sender: TObject);
begin
  edit_rc_date.EditValue := Null;
  SetRetCustFilter;
end;

procedure TMainForm.act_rc_reset_depotExecute(Sender: TObject);
begin
  edit_rc_depot.KeyValue := Null;
  edit_rc_depot.Text := '';
  SetRetCustFilter;
end;

procedure TMainForm.act_rc_returnExecute(Sender: TObject);
begin
  if Data.BillOpened(RC) > 0 then
    exit;
  // Нельзя вернуть накладные возрастом больше недели.
  if (Trunc(Now) - Trunc(Data.DS_Return_Cust_N.fbn('R_DATE').AsDateTime) > 7)
    and not SecKey then
  begin
    MessageBox(Application.Handle, 'Невозможно вернуть накладную!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    exit;
  end;

  if RetCustForm.Visible then
    RetCustForm.Close;
  isMyApplyActivity := true;
  Data.DS_Return_Cust_N.Edit;
  Data.DS_Return_Cust_N.fbn('ENTERED').AsBoolean := false;
  Data.DS_Return_Cust_N.Post;
end;

procedure TMainForm.act_rc_shopcardExecute(Sender: TObject);
begin
  if Data.DS_Goods.Locate('ID', Data.DS_Return_Cust.FieldValues['GOOD_ID'], [])
  then
    act_price_shop_edit.Execute;
end;

procedure TMainForm.act_rc_todayExecute(Sender: TObject);
begin
  edit_rc_date.EditValue := Now;
  SetRetCustFilter;
end;

procedure TMainForm.act_rep_accountingExecute(Sender: TObject);
begin
  area_tree.ActivePage := P_Reports;
  Tree_Reports.Select(Tree_Reports.Items[tr_DolgiKlienta]);
end;

procedure TMainForm.act_rep_acc_reportExecute(Sender: TObject);
begin
  Tree_Reports.Select(Tree_Reports.Items[tr_AccReport]);
end;

procedure TMainForm.act_rep_customer_historyExecute(Sender: TObject);
begin
  CustomerHistoryForm.ShowEx(7);
end;

procedure TMainForm.act_rep_dayreportExecute(Sender: TObject);
begin
  area_tree.ActivePage := P_Reports;
  Tree_Reports.Select(Tree_Reports.Items[tr_DayReport]);
end;

procedure TMainForm.act_rep_goodsondepotsExecute(Sender: TObject);
begin
  area_tree.ActivePage := P_Reports;
  Tree_Reports.Select(Tree_Reports.Items[tr_GoodsOnDepots]);
end;

procedure TMainForm.act_rep_historyExecute(Sender: TObject);
begin
  HistoryForm.ShowEx(-1, all);
end;

procedure TMainForm.act_rep_moneyingoodsExecute(Sender: TObject);
var
  sp_price: variant;
  gen_price: variant;
  shop1_price: variant;
  shop2_price: variant;
  depot: string;
  depot_id: Integer;
  I, j: Integer;
begin
  Screen.Cursor := crHourGlass;
  Query.DS_Depots.ReopenLocate('ID');
  Query.DS_Depots.First;

  for I := 0 to 20 do
    for j := 1 to 4 do
      MoneyInDepotsForm.prices[j, I] := 0;

  while not Query.DS_Depots.eof do
  begin
    depot_id := Query.DS_Depots.fbn('ID').AsInteger;
    depot := 'C' + inttostr(depot_id);
    sp_price := Data.Database.QueryValue('SELECT SUM(' + depot +
      '*PRICE2) FROM GOODS WHERE ' + depot + ' <> 0', 0);
    if sp_price = Null then
      sp_price := 0;
    gen_price := Data.Database.QueryValue('SELECT SUM(' + depot +
      '*PRICE1) FROM GOODS WHERE ' + depot + ' <> 0', 0);
    if gen_price = Null then
      gen_price := 0;
    shop1_price := Data.Database.QueryValue('SELECT SUM(' + depot +
      '*PRICE_SHOP2) FROM GOODS WHERE ' + depot + ' <> 0', 0);
    if shop1_price = Null then
      shop1_price := 0;
    shop2_price := Data.Database.QueryValue('SELECT SUM(' + depot +
      '*PRICE_SHOP) FROM GOODS WHERE ' + depot + ' <> 0', 0);
    if shop2_price = Null then
      shop2_price := 0;
    MoneyInDepotsForm.prices[1, depot_id] := sp_price;
    MoneyInDepotsForm.prices[2, depot_id] := gen_price;
    MoneyInDepotsForm.prices[3, depot_id] := shop2_price;
    MoneyInDepotsForm.prices[4, depot_id] := shop1_price;
    Query.DS_Depots.Next;
  end;
  Query.DS_Depots.First;
  Screen.Cursor := crDefault;
  MoneyInDepotsForm.ShowModal;
end;

procedure TMainForm.act_rep_top100Execute(Sender: TObject);
begin
  Top100Form.Show;
end;

procedure TMainForm.act_rep_valoviydohodExecute(Sender: TObject);
begin
  CalculateSalesForm.Show;
end;

procedure TMainForm.act_rs_addExecute(Sender: TObject);
var
  nakl_id: integer;
begin
  Tree_Docs.Select(Tree_Docs.Items[tr_ret_suppl_wait]);
  with Data.DS_Return_Suppl_N do
  begin
    Append;
    Post;
    nakl_id := fbn('ID').AsInteger;
    SetReturnSupplFilter;
    SetReturnSupplTittle;
    Locate('ID', nakl_id, []);
  end;
  RetSupplForm.ShowModal;
end;

procedure TMainForm.act_rs_deleteExecute(Sender: TObject);
var
  nakl_id: integer;
begin
  if Data.BillOpened(RS) > 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить накладную?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    Data.DS_Return_Suppl_N.Delete;
    nakl_id := Data.DS_Return_Suppl_N.fbn('ID').AsInteger;
    SetReturnSupplFilter;
    Data.DS_Return_Suppl_N.Locate('ID', nakl_id, []);
  end;
end;

procedure TMainForm.act_rs_editExecute(Sender: TObject);
begin
  if Data.DS_Return_Suppl_N.VisibleRecordCount > 0 then
  begin
    if Data.BillOpened(RS) > 0 then
      exit;
    SetReturnSupplTittle;
    RetSupplForm.ShowModal;
  end;
end;

procedure TMainForm.act_rs_executeExecute(Sender: TObject);
begin
  if Data.BillOpened(RS) > 0 then
    exit;
  if Data.DS_Return_Suppl.State = dsEdit then
    Data.DS_Return_Suppl.Post;

  if not Data.CanApplyBill('RETURN_SUPPL', Data.DS_Return_Suppl_N.fbn('id')
    .AsInteger) then
  begin
    MessageBox(Application.Handle, 'Введены неверные данные.' + #13 +
      'Выполнение невозможно!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;

  if RetSupplForm.Visible then
    RetSupplForm.Close;
  isMyApplyActivity := true;
  Data.DS_Return_Suppl_N.Edit;
  Data.DS_Return_Suppl_N.fbn('ENTERED').AsBoolean := true;
  Data.DS_Return_Suppl_N.Post;
end;

procedure TMainForm.act_rs_exportexcelExecute(Sender: TObject);
var
  s: string;
begin
  if Data.BillOpened(RS) > 0 then
    exit;
  s := inttostr(Data.DS_Return_Suppl_N['ID']);
  SysContainer.ExportExcelDialog.filename := 'ret_' + s + '.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      Template := OptionsForm.edit_ExcelRetSupplTemplate.Text;
      TemplSheet := s;
      DataSet := Data.DS_Return_Suppl;
      Title := 'Возврат поставщику';
      Show(SysContainer.ExportExcelDialog.filename);
    end;
end;

procedure TMainForm.act_rs_exportExecute(Sender: TObject);
begin
  if Data.BillOpened(RS) > 0 then
    exit;
end;

procedure TMainForm.act_rs_historyExecute(Sender: TObject);
begin
  HistoryForm.ShowEx(Data.DS_Return_Suppl.FieldByName('GOOD_ID')
    .AsInteger, all);
end;

procedure TMainForm.act_rs_itemcardExecute(Sender: TObject);
begin
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Locate('ID', Data.DS_Return_Suppl.FieldValues['GOOD_ID'], []);
  if Data.DS_Goods.FieldValues['DELETED'] = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if Data.DS_Goods.State = dsEdit then
      begin
        Data.DS_Goods.Post;
        Data.DS_Goods.ReopenLocate('ID');
        Query.DS_Select.ReopenLocate('ID');
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
end;

procedure TMainForm.act_rs_lastpricesExecute(Sender: TObject);
begin
  with Data.DS_Return_Suppl do
  begin
    DisableControls;
    First;
    while not(eof) do
    begin
      Edit;
      // Здесь нужен именно FieldValues чтобы была возможность вставить Null
      fbn('PRICE').AsFloat := Data.GetLastArrivalPrice(fbn('GOOD_ID').AsInteger,
        Data.DS_Return_Suppl_N.fbn('CUST_ID').AsInteger);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TMainForm.act_rs_nextdayExecute(Sender: TObject);
begin
  edit_rs_date.EditValue := IncDay(edit_rs_date.EditValue, 1);
  SetReturnSupplFilter;
end;

procedure TMainForm.act_rs_prevdayExecute(Sender: TObject);
begin
  edit_rs_date.EditValue := IncDay(edit_rs_date.EditValue, -1);
  SetReturnSupplFilter;
end;

procedure TMainForm.act_rs_previewExecute(Sender: TObject);
begin
  if Data.BillOpened(RS) > 0 then
    exit;
  if SysContainer.ReturnSupplReport.LoadFromFile
    (OptionsForm.edit_RetSupplReport.Text) then
  begin
    SysContainer.ReturnSupplReport.PrepareReport;
    SysContainer.ReturnSupplReport.ShowPreparedReport;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_rs_printExecute(Sender: TObject);
begin
  if Data.BillOpened(RS) > 0 then
    exit;
  if SysContainer.ReturnSupplReport.LoadFromFile
    (OptionsForm.edit_RetSupplReport.Text) then
  begin
    SysContainer.ReturnSupplReport.PrepareReport;
    SysContainer.ReturnSupplReport.PrintOptions.ShowDialog := false;
    SysContainer.ReturnSupplReport.Print;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_rs_reset_allExecute(Sender: TObject);
begin
  edit_rs_date.EditValue := Now;
  edit_rs_client.EditValue := Null;
  SetReturnSupplFilter;
end;

procedure TMainForm.act_rs_reset_clientExecute(Sender: TObject);
begin
  edit_rs_client.EditValue := Null;
  SetReturnSupplFilter;
end;

procedure TMainForm.act_rs_reset_dateExecute(Sender: TObject);
begin
  edit_rs_date.EditValue := Null;
  SetReturnSupplFilter;
end;

procedure TMainForm.act_rs_returnExecute(Sender: TObject);
begin
  if Data.BillOpened(RS) > 0 then
    exit;
  // Нельзя вернуть накладные возрастом больше недели.
  if (Trunc(Now) - Trunc(Data.DS_Return_Suppl_N.fbn('R_DATE').AsDateTime) > 7)
    and not SecKey then
  begin
    MessageBox(Application.Handle, 'Невозможно вернуть накладную!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    exit;
  end;

  if RetSupplForm.Visible then
    RetSupplForm.Close;
  isMyApplyActivity := true;
  Data.DS_Return_Suppl_N.Edit;
  Data.DS_Return_Suppl_N.fbn('ENTERED').AsBoolean := false;
  Data.DS_Return_Suppl_N.Post;
end;

procedure TMainForm.act_rs_shopcardExecute(Sender: TObject);
begin
  if Data.DS_Goods.Locate('ID', Data.DS_Return_Suppl.FieldValues['GOOD_ID'], [])
  then
    act_price_shop_edit.Execute;
end;

procedure TMainForm.act_rs_todayExecute(Sender: TObject);
begin
  edit_rs_date.EditValue := Now;
  SetReturnSupplFilter;
end;

procedure TMainForm.act_sale_addExecute(Sender: TObject);
begin
  Data.DS_Sale_N.Append;
  Data.DS_Sale_N.Post;
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_sale_wait]);
  SaleForm.ShowModal;
end;

procedure TMainForm.act_sale_checkExecute(Sender: TObject);
begin
 if Data.DS_Sale.RecordCount = 0 then
    exit;
  if MessageBox(Application.Handle,
    'Переместить товары, которых нет в наличии, в требования?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  
  Data.Database.Execute('execute procedure MOVE_MISSING_TO_REQUIREMENTS('+
                        inttostr(Data.DS_Sale_N.FBN('ID').AsInteger)+')');
  Data.DS_Sale.CloseOpen(true);
  Data.DS_Sale_N.ReopenLocate('ID');
  SaleForm.UpdateReqList;
  SaleForm.UpdateRequirementsFilter;
  SaleForm.SetCurrentRequirements;
  SaleForm.UpdateReqButtons;
end;

procedure TMainForm.act_sale_clearExecute(Sender: TObject);
begin
  if Data.DS_Sale.VisibleRecordCount = 0 then exit;
  
  if MessageBox(Application.Handle,
    'Очистить накладную?', PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  Data.Database.Execute('delete from sale where nakl_id = ' +
                        inttostr(Data.DS_Sale_N.FBN('ID').AsInteger));
  Data.DS_Sale.CloseOpen(true);
  SaleForm.UpdateReqButtons;
end;


procedure TMainForm.act_sale_colprintExecute(Sender: TObject);
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  if SysContainer.SaleReport.LoadFromFile(OptionsForm.edit_SaleReportSbor.Text)
  then
  begin
    Data.DS_Sale.DisableControls;
    SysContainer.SaleReport.PrepareReport;
    SysContainer.SaleReport.PrintOptions.ShowDialog := false;
    SysContainer.SaleReport.Print;
    Data.DS_Sale.EnableControls;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_sale_deleteExecute(Sender: TObject);
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить накладную?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  Data.DS_Sale_N.DisableControls;
  if SaleForm.Visible then
    SaleForm.Close;
  Data.SetUserActivity(SL);
  Data.DeleteFromRequirements(Data.DS_Sale_N.fbn('ID').AsInteger);
  isMyApplyActivity := true;
  Data.DS_Sale_N.Delete;
  Data.ClearUserActivity;
  Data.CanUpdateUser := true;
  Data.DS_Sale_N.EnableControls;
end;

procedure TMainForm.act_sale_editExecute(Sender: TObject);
begin
  if Data.DS_Sale_N.VisibleRecordCount > 0 then
  begin
    if Data.BillOpened(SL) > 0 then
      exit;
    SaleForm.ShowModal;
  end;
end;

procedure TMainForm.act_sale_excelexportExecute(Sender: TObject);
var
  s: string;
  sp: TBookmark;
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  s := inttostr(Data.DS_Sale_N['ID']);
  SysContainer.ExportExcelDialog.filename := 'saleBill_' + s + '.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      sp := Data.DS_Sale.GetBookmark;
      Data.DS_Sale.DisableControls;
      Template := OptionsForm.edit_ExcelSaleTemplate.Text;
      TemplSheet := s;
      DataSet := Query.DS_Sale;
      Title := 'Расходная накладная';
      Show(SysContainer.ExportExcelDialog.filename);
      try
        Data.DS_Sale.GotoBookmark(sp);
      finally
        Data.DS_Sale.FreeBookmark(sp);
      end;
      Data.DS_Sale.EnableControls;
    end;
end;

procedure TMainForm.act_sale_executeExecute(Sender: TObject);
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  if Data.DS_Sale.State = dsEdit then
    Data.DS_Sale.Post;

  if not Data.CanApplyBill('SALE', Data.DS_Sale_N.fbn('id').AsInteger) then
  begin
    MessageBox(Application.Handle, 'Введены неверные данные.' + #13 +
      'Выполнение невозможно!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;

  if SaleForm.Visible then
    SaleForm.Close;
  isMyApplyActivity := true;
  Data.DS_Sale_N.Edit;
  Data.DS_Sale_N.fbn('ENTERED').AsBoolean := true;
  Data.DS_Sale_N.Post;
end;

procedure TMainForm.act_sale_exportExecute(Sender: TObject);
var
  BS: TStringList;
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  SysContainer.SaveDialog.Filter := 'Расходные накладные|*.smn';
  SysContainer.SaveDialog.DefaultExt := 'smn';
  SysContainer.SaveDialog.filename := 'SALE_' +
    inttostr(Data.DS_Sale_N.FieldValues['ID']);
  if SysContainer.SaveDialog.Execute then
  begin

    Data.DS_Sale.DisableControls;
    Data.DS_Sale_N.DisableControls;
    Data.DS_Goods.DisableControls;

    progressbar.Max := Data.DS_Sale.VisibleRecordCount;
    progressbar.Position := 0;
    BS := TStringList.Create;
    BS.Add('Moscquito v2 ''SALE FILE'' by RiFF');
    BS.Add('----------------');
    BS.Add('---'); // тут был REALIZ_ID
    BS.Add(inttostr(Data.DS_Sale_N['CUST_ID']));
    BS.Add(inttostr(Data.DS_Sale_N['CURR_ID']));
    BS.Add(inttostr(Data.DS_Sale_N['PRICE_TYPE']));
    BS.Add(inttostr(Data.DS_Sale_N['DISCOUNT']));
    if Data.DS_Sale_N['COMMENTS'] <> Null then
      BS.Add(Data.DS_Sale_N['COMMENTS'])
    else
      BS.Add('');
    BS.Add('----------------');
    Data.DS_Sale.First;
    while not(Data.DS_Sale.eof) do
    begin
      BS.Add(inttostr(Data.DS_Sale['GOOD_ID']));
      BS.Add(floattostr(Data.DS_Sale['CNT']));
      BS.Add(floattostr(Data.DS_Sale['PRICE']));
      BS.Add(floattostr(Data.DS_Sale['DEPOT_ID']));
      Data.DS_Sale.Next;
      progressbar.StepIt;
      Application.ProcessMessages;
    end;
    BS.SaveToFile(SysContainer.SaveDialog.filename);
    progressbar.Position := 0;
    BS.Free;
    Data.DS_Sale.EnableControls;
    Data.DS_Sale_N.EnableControls;
    Data.DS_Goods.EnableControls;
  end;
end;

procedure TMainForm.act_sale_importExecute(Sender: TObject);
var
  BS: TStringList;
  I, j, sa: Integer;
begin
  SysContainer.OpenDialog.Filter := 'Расходные накладные(*.smn)|*.smn';
  if SysContainer.OpenDialog.Execute then
  begin
    Tree_Docs.Select(Tree_Docs.Items[tr_sale_wait]);
    BS := TStringList.Create;
    BS.LoadFromFile(SysContainer.OpenDialog.filename);
    progressbar.Max := (BS.Count - 8) div 4;
    progressbar.Position := 0;
    if Pos('''SALE FILE'' by RiFF', BS[0]) = 0 then
    begin
      MessageBox(Application.Handle, 'Неверный файл данных.',
        PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
      exit;
    end;
    Data.DS_Sale.DisableControls;
    Data.DS_Sale_N.DisableControls;
    Data.DS_Goods.DisableControls;
    with Data.DS_Sale_N do
    begin
      Insert;
      FieldValues['ENTERED'] := false;
      FieldValues['S_DATE'] := Now;
      FieldValues['CUST_ID'] := strtoint(BS[3]);
      FieldValues['CURR_ID'] := strtoint(BS[4]);
      FieldValues['PRICE_TYPE'] := strtoint(BS[5]);
      FieldValues['DISCOUNT'] := strtoint(BS[6]);
      if BS[6] <> '' then
        FieldValues['COMMENTS'] := BS[7];
      Post;
    end;
    j := 9;
    sa := (BS.Count - 9) div 4;
    for I := 1 to sa do
    begin
      with Data.DS_Sale do
      begin
        Insert;
        FieldValues['GOOD_ID'] := strtoint(BS[j]);
        FieldValues['CNT'] := strtofloat(BS[j + 1]);
        FieldValues['PRICE'] := strtofloat(BS[j + 2]);
        FieldValues['DEPOT_ID'] := strtofloat(BS[j + 3]);
        Post;
        inc(j, 4);
      end;
      progressbar.StepIt;
      Application.ProcessMessages;
    end;
    progressbar.Position := 0;
    Data.DS_Sale.ReopenLocate('ID');
    SetSaleFilter;
    SetSaleTittle;
    Data.DS_Sale.EnableControls;
    Data.DS_Sale_N.EnableControls;
    Data.DS_Goods.EnableControls;
  end;

end;

procedure TMainForm.act_sale_shop_cardExecute(Sender: TObject);
begin
  if Data.DS_Goods.Locate('ID', Data.DS_Sale.fbn('GOOD_ID').AsInteger, []) then
    act_price_shop_edit.Execute;
end;

procedure TMainForm.act_sale_item_cardExecute(Sender: TObject);
begin
  if not(SaleForm.TB_Requirements.Focused) and not(SaleForm.TB_Sale.Focused)
  then
    exit;

  Data.DS_Goods.Filtered := false;
  if SaleForm.TB_Requirements.Focused then
    Data.DS_Goods.Locate('ID', Data.DS_Requirements.fbn('GOOD_ID')
      .AsInteger, []);
  if SaleForm.TB_Sale.Focused then
    Data.DS_Goods.Locate('ID', Data.DS_Sale.fbn('GOOD_ID').AsInteger, []);

  if Data.DS_Goods.fbn('DELETED').AsInteger = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if Data.DS_Goods.State = dsEdit then
      begin
        Data.DS_Goods.Post;
        Data.DS_Goods.ReopenLocate('ID');
        Query.DS_Select.ReopenLocate('ID');
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
end;

procedure TMainForm.act_sale_item_historyExecute(Sender: TObject);
begin
  if not(SaleForm.TB_Requirements.Focused) and not(SaleForm.TB_Sale.Focused)
  then
    exit;

  Data.DS_Goods.Filtered := false;

  if SaleForm.TB_Requirements.Focused then
    HistoryForm.ShowEx(Data.DS_Requirements.fbn('GOOD_ID').AsInteger, all);
  if SaleForm.TB_Sale.Focused then
    HistoryForm.ShowEx(Data.DS_Sale.fbn('GOOD_ID').AsInteger, all);

end;

procedure TMainForm.act_sale_nextdayExecute(Sender: TObject);
begin
  if edit_sale_date.EditValue = Null then
    exit;
  edit_sale_date.EditValue := IncDay(edit_sale_date.EditValue, 1);
  SetSaleFilter;
end;

procedure TMainForm.act_sale_prevdayExecute(Sender: TObject);
begin
  if edit_sale_date.EditValue = Null then
    exit;
  edit_sale_date.EditValue := IncDay(edit_sale_date.EditValue, -1);
  SetSaleFilter;
end;

procedure TMainForm.act_sale_payExecute(Sender: TObject);
var
  nakl_summ: double;
  paid_summ: double;
  id: integer;
  cust_id: integer;
  s_date: TDateTime;
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  paid_summ := Data.DS_Sale_N.FBN('PAID').AsFloat;
  if paid_summ <> 0 then
    if MessageBox(Application.Handle,
      PChar('По выбранной накладной уже оплачено ' + FloatToStrF(paid_summ * -1, ffFixed,
      20, 2) + 'грн.' + #13#10 + 'Добавить еще оплату по данной накладной?'),
      PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) = IDNO then
      exit;
  TB_KASSA.Selection.Clear;
  Data.DS_KASSA.Append;
  id := Data.DS_Sale_N.fbn('ID').AsInteger;

  KassaForm.edit_paid.Value := paid_summ * - 1;
  nakl_summ := Data.DS_Sale_N.fbn('SUM_TOTAL').AsFloat;
  cust_id := Data.DS_Sale_N.fbn('CUST_ID').AsInteger;
  s_date := Data.DS_Sale_N.fbn('S_DATE').AsDateTime;

  Data.DS_KASSA.fbn('CLIENT_ID').AsInteger := cust_id;
  Data.DS_KASSA.fbn('COMMENTS').AsString :=
    'Оплата накладной №' + inttostr(id) + ' от ' + DateToStr(s_date);
  Data.DS_KASSA.fbn('SUMM_USD').AsFloat := nakl_summ + paid_summ;
  Data.DS_KASSA.fbn('NAKL_SUMM').AsFloat := nakl_summ;
  Data.DS_KASSA.fbn('NAKL_ID').AsInteger := id;

  Data.DS_KASSA.fbn('CURS').AsFloat := 1;
  KassaForm.active_control := [summ];
  KassaForm.econtrol := true;
  KassaForm.new_paid := true;
  KassaForm.ShowModal;
  Data.DS_Sale_N.Refresh;
end;

procedure TMainForm.act_sale_previewExecute(Sender: TObject);
var
  Template: string;
begin
  if Data.BillOpened(SL) > 0 then exit;

  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  Template := OptionsForm.edit_SaleReport.Text;
  if SysContainer.SaleReport.LoadFromFile(Template) then
  begin
    Data.DS_Sale.DisableControls;
    Query.DS_Sale.DisableControls;
    Query.DS_Sale.ReopenLocate('ID');
    Data.DS_Curs.First;
    SysContainer.SaleReport.PrepareReport;
    SysContainer.SaleReport.ShowPreparedReport;
    Query.DS_Sale.EnableControls;
    Data.DS_Sale.EnableControls;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_sale_printExecute(Sender: TObject);
var
  Template: string;
begin
  if Data.BillOpened(SL) > 0 then exit;

  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  Template := OptionsForm.edit_SaleReport.Text;
  if SysContainer.SaleReport.LoadFromFile(Template) then
  begin
    Data.DS_Sale.DisableControls;
    Query.DS_Sale.DisableControls;
    Query.DS_Sale.ReopenLocate('ID');
    Data.DS_Curs.First;
    SysContainer.SaleReport.PrepareReport;
    SysContainer.SaleReport.PrintOptions.ShowDialog := false;
    SysContainer.SaleReport.Print;
    Query.DS_Sale.EnableControls;
    Data.DS_Sale.EnableControls;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_sale_printperiodExecute(Sender: TObject);
var
  sp: TBookmark;
begin
  if SysContainer.SaleBillsReport.LoadFromFile
    (OptionsForm.edit_SaleBillsReport.Text) then
    try
      Screen.Cursor := crAppStart;
      sp := Data.DS_Sale_N.GetBookmark;
      Data.DS_Sale_N.DisableControls;
      SysContainer.SaleBillsReport.PrintOptions.ShowDialog := false;
      SysContainer.SaleBillsReport.PrepareReport;
      SysContainer.SaleBillsReport.Print;
    finally
      try
        Data.DS_Sale_N.GotoBookmark(sp);
      finally
        Data.DS_Sale_N.FreeBookmark(sp);
      end;
      Data.DS_Sale_N.EnableControls;
      Screen.Cursor := crDefault;
    end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_sale_profitExecute(Sender: TObject);
begin
  if btn_sale_profit.Down then
  begin
    TB_Sale_N.Columns[7].Visible := true;
    TB_Sale_N.Columns[7].Width := 100;
  end
  else
    TB_Sale_N.Columns[7].Visible := false;
end;

procedure TMainForm.act_sale_req_addExecute(Sender: TObject);
begin
  if not SaleForm.Visible or (Data.DS_Sale.RecordCount = 0) then
    exit;
  if MessageBox(Application.Handle,
    'Перенести выбранную позицию в список требований?', PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  Data.DS_Sale.DisableControls;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  Data.Database.Execute('execute procedure MOVE_TO_REQUIREMENTS(' +
                         inttostr(Data.DS_Sale.FBN('ID').AsInteger) + ')');
  SaleForm.TB_Sale.MoveBy(1);
  Data.DS_Sale.ReopenLocate('ID');
  Data.DS_Sale_N.ReopenLocate('ID');
  SaleForm.UpdateReqList;
  SaleForm.UpdateRequirementsFilter;
  SaleForm.SetCurrentRequirements;
  SaleForm.UpdateReqButtons;
  Data.DS_Sale.EnableControls;
end;

procedure TMainForm.act_sale_req_clearExecute(Sender: TObject);
var
  RowCnt: Integer;
  id: Integer;
  I: Integer;
begin
  if MessageBox(Application.Handle,
    'Очистить требования по выбранным накладным?', PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;

  Data.DS_ReqList.DisableControls;
  RowCnt := SaleForm.TB_ReqList.SelectedRows.Count;
  if RowCnt > 0 then
    for I := 0 to RowCnt - 1 do
    begin
      SaleForm.TB_ReqList.DataSource.DataSet.GotoBookmark
        (TBookmark(SaleForm.TB_ReqList.SelectedRows.Items[I]));
      id := SaleForm.TB_ReqList.DataSource.DataSet.FieldByName
        ('ORIGINAL_NAKL_ID').AsInteger;
      Data.DeleteFromRequirements(id);
    end
  else
  begin
    id := SaleForm.TB_ReqList.DataSource.DataSet.FieldByName('ORIGINAL_NAKL_ID')
      .AsInteger;
    Data.DeleteFromRequirements(id);
  end;
  SaleForm.UpdateReqList;
  SaleForm.UpdateRequirementsFilter;
  SaleForm.SetCurrentRequirements;
  SaleForm.UpdateReqButtons;
  Data.DS_ReqList.EnableControls;
end;

procedure TMainForm.act_sale_req_deleteExecute(Sender: TObject);
begin
  if Data.DS_Requirements.RecordCount = 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить товар из списка требований?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  SaleForm.TB_Requirements.Selection.Clear;
  Data.DS_Requirements.Delete;
  SaleForm.UpdateRequirementsFilter;
  SaleForm.UpdateReqList;
  SaleForm.SetCurrentRequirements;
  SaleForm.UpdateReqButtons;
end;

procedure TMainForm.act_sale_req_importExecute(Sender: TObject);
var
  reqID, saleID: Integer;
begin
  if SysContainer.ImportExcelDialog.Execute then
  begin
    SysContainer.exlSaleReq.filename := SysContainer.ImportExcelDialog.filename;
    SysContainer.exlSaleReq.Execute;
    SaleForm.UpdateReqList;
    SaleForm.UpdateRequirementsFilter;
    SaleForm.SetCurrentRequirements;

    reqID := Data.DS_ReqList.fbn('ORIGINAL_NAKL_ID').AsInteger;
    saleID := Data.DS_Sale_N.fbn('ID').AsInteger;
    if (reqID = saleID) and SaleForm.Visible then
      begin
        SaleForm.Splitter.OpenSplitter;
        SaleForm.UpdateSaleFromRequirements;
      end;
  end;
end;

procedure TMainForm.act_sale_req_printExecute(Sender: TObject);
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  if SysContainer.ReqReport.LoadFromFile(Settings.ApplicationPath + 'Reports\' +
    req_report_file) then
  begin
    Data.DS_Requirements.DisableControls;
    SaleForm.UpdateRequirementsFilter;
    SysContainer.ReqReport.PrepareReport;
    SysContainer.ReqReport.PrintOptions.ShowDialog := false;
    SysContainer.ReqReport.ShowPreparedReport;
    Data.DS_Requirements.EnableControls;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_sale_req_tosaleExecute(Sender: TObject);
begin
  SaleForm.UpdateSaleFromRequirements;
end;

procedure TMainForm.act_sale_resetExecute(Sender: TObject);
begin
  edit_sale_date.EditValue := Now;
  edit_sale_customer.EditValue := Null;
  SetSaleFilter;
end;

procedure TMainForm.act_sale_reset_customerExecute(Sender: TObject);
begin
  edit_sale_customer.EditValue := Null;
  SetSaleFilter;
end;

procedure TMainForm.act_sale_reset_dateExecute(Sender: TObject);
begin
  edit_sale_date.EditValue := Null;
  SetSaleFilter;
end;

procedure TMainForm.act_sale_returnExecute(Sender: TObject);
begin
  if Data.BillOpened(SL) > 0 then
    exit;
  // Нельзя вернуть накладные возрастом больше недели.
  if (Trunc(Now) - Trunc(Data.DS_Sale_N.fbn('S_DATE').AsDateTime) > 7) and not SecKey
  then
  begin
    MessageBox(Application.Handle, 'Невозможно вернуть накладную!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    exit;
  end;

  if SaleForm.Visible then
    SaleForm.Close;
  isMyApplyActivity := true;
  Data.DS_Sale_N.Edit;
  Data.DS_Sale_N.fbn('ENTERED').AsBoolean := false;
  Data.DS_Sale_N.Post;
end;

procedure TMainForm.act_sale_todayExecute(Sender: TObject);
begin
  edit_sale_date.EditValue := Now;
  SetSaleFilter;
end;

procedure TMainForm.act_sale_update_pricesExecute(Sender: TObject);
begin
  if not SaleForm.Visible or (Data.DS_Sale.VisibleRecordCount = 0) then exit;
  if Data.DS_Sale_N.State = dsEdit then Data.DS_Sale_N.Post;
  if Data.DS_Sale.State = dsEdit then Data.DS_Sale.Post;
  if MessageBox(Application.Handle,
    'Обновить цены в накладной?',
    PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) = IDOK
  then SaleForm.RecalculateSale(false);
  SaleForm.TB_Sale.SetFocus;
end;

procedure TMainForm.act_file_settingsExecute(Sender: TObject);
begin
  OptionsForm.ShowModal;
end;

procedure TMainForm.act_his_reset_allExecute(Sender: TObject);
begin
  HistoryForm.edit_datefrom.EditValue := Null;
  HistoryForm.edit_dateto.EditValue := Null;
  HistoryForm.edit_client.EditValue := Null;
  HistoryForm.edit_depot.EditValue := Null;
  HistoryForm.SetHistoryFilter;
end;

procedure TMainForm.act_his_reset_clientExecute(Sender: TObject);
begin
  HistoryForm.edit_client.EditValue := Null;
  HistoryForm.SetHistoryFilter;
end;

procedure TMainForm.act_his_reset_datefromExecute(Sender: TObject);
begin
  HistoryForm.edit_datefrom.EditValue := Null;
  HistoryForm.SetHistoryFilter;
end;

procedure TMainForm.act_his_reset_datetoExecute(Sender: TObject);
begin
  HistoryForm.edit_dateto.EditValue := Null;
  HistoryForm.SetHistoryFilter;
end;

procedure TMainForm.act_his_reset_depotExecute(Sender: TObject);
begin
  HistoryForm.edit_depot.EditValue := Null;
  HistoryForm.SetHistoryFilter;
end;

procedure TMainForm.act_kassa_addExecute(Sender: TObject);
begin
  AddPayment;
end;

procedure TMainForm.act_kassa_deleteExecute(Sender: TObject);
var
  dt: variant;
begin
  if Data.DS_KASSA.RecordCountFromSrv = 0 then
  begin
    MessageBox(Application.Handle, 'Нечего удалять!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;
  if not SecKey then
  begin
    dt := Data.Database.QueryValue
      ('SELECT MAX(K_DATE) FROM KASSA WHERE (CASHOUT = 1)', 0);
    if not VarIsNull(dt) then
      if Data.DS_KASSA.fbn('K_DATE').AsDateTime <= dt then
      begin
        MessageBox(Application.Handle,
          'Удаление невозможно! По данной накладной уже есть инкассация.',
          PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
        exit;
      end;
  end;
  if MessageBox(Application.Handle, 'Удалить оплату?', PChar(MainForm.Caption),
    MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    Data.DS_KASSA.Delete;
  end;
end;

procedure TMainForm.act_kassa_editExecute(Sender: TObject);
var
  dt: variant;
  nakl_id: integer;
begin
  if Data.DS_KASSA.RecordCountFromSrv = 0 then
    exit;
  dt := Data.Database.QueryValue
    ('SELECT MAX(K_DATE) FROM KASSA WHERE (CASHOUT = 1)', 0);

  if SecKey then
    KassaForm.canchange := true
  else
  begin
    KassaForm.canchange := false;
    if not VarIsNull(dt) then
      if Data.DS_KASSA.fbn('K_DATE').AsDateTime > dt then
        KassaForm.canchange := true;
  end;
  nakl_id := Data.DS_KASSA.FBN('NAKL_ID').AsInteger;
  if nakl_id <> 0 then
    begin
      KassaForm.edit_paid.Value := Data.Database.QueryValue(
        'SELECT SUM(SUMM) FROM KASSA WHERE NAKL_ID = ' +
        inttostr(nakl_id), 0);
    end
  else
    KassaForm.edit_paid.EditValue := Null;
  KassaForm.econtrol := false;
  KassaForm.active_control := [client];
  KassaForm.new_paid := false;
  KassaForm.ShowModal;
end;

procedure TMainForm.act_kassa_nextdayExecute(Sender: TObject);
var
  k: variant;
begin
  if VarIsNull(edit_kassa_date.EditValue) then
    exit;

  k := Data.Database.QueryValue
    ('SELECT MIN(K_DATE) FROM KASSA WHERE (CASHOUT = 1) AND (K_DATE>''' +
    DateToStr(edit_kassa_date.EditValue) + ' 23:59:59'')', 0);
  if not VarIsNull(k) then
  begin
    edit_kassa_date.EditValue := k;
  end;
  SetKassaFilter;
end;

procedure TMainForm.act_kassa_prevdayExecute(Sender: TObject);
var
  k: variant;
begin
  if VarIsNull(edit_kassa_date.EditValue) then
    exit;

  k := Data.Database.QueryValue
    ('SELECT MAX(K_DATE) FROM KASSA WHERE (CASHOUT = 1) AND (K_DATE<''' +
    DateTimeToStr(edit_kassa_date.EditValue) + ''')', 0);
  if not VarIsNull(k) then
    edit_kassa_date.EditValue := k;
  SetKassaFilter;
end;

procedure TMainForm.act_kassa_previewExecute(Sender: TObject);
begin
  if SysContainer.KassaReport.LoadFromFile(OptionsForm.edit_KassaReport.Text)
  then
    try
      Data.DS_KASSA.DisableControls;
      SysContainer.KassaReport.ShowReport;
    finally
      Data.DS_KASSA.EnableControls;
    end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_kassa_printExecute(Sender: TObject);
begin
  if SysContainer.KassaReport.LoadFromFile(OptionsForm.edit_KassaReport.Text)
  then
    try
      Data.DS_KASSA.DisableControls;
      SysContainer.KassaReport.PrepareReport(true);
      SysContainer.KassaReport.Print;
    finally
      Data.DS_KASSA.EnableControls;
    end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_kassa_refreshExecute(Sender: TObject);
begin
  Data.DS_KASSA.ReopenLocate('ID');
  SetKassaFilter;
end;

procedure TMainForm.act_kassa_reset_clientExecute(Sender: TObject);
begin
  edit_kassa_client.EditValue := Null;
  SetKassaFilter;
end;

procedure TMainForm.act_kassa_reset_dateExecute(Sender: TObject);
begin
  edit_kassa_date.EditValue := Null;
  // act_kassa_nextday.Enabled := false;
  // act_kassa_prevday.Enabled := false;
  SetKassaFilter;
end;

procedure TMainForm.act_kassa_todayExecute(Sender: TObject);
var
  k: variant;
begin
  k := Data.Database.QueryValue
    ('SELECT MAX(K_DATE) FROM KASSA WHERE (CASHOUT = 1)', 0);
  if not VarIsNull(k) then
    edit_kassa_date.EditValue := k;
  SetKassaFilter;
end;

procedure TMainForm.act_kass_gotobillExecute(Sender: TObject);
begin
  if VarIsNull(Data.DS_KASSA['NAKL_ID']) then
  begin
    MessageBox(Application.Handle,
      'Данная оплата не связана ни с одной накладной.', PChar(MainForm.Caption),
      MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if MessageBox(Application.Handle, 'Перейти к оплачиваемой накладной?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    GotoSaleBill(Data.DS_KASSA['NAKL_ID']);
end;

procedure TMainForm.act_moves_addExecute(Sender: TObject);
var
  nakl_id: integer;
begin
  Tree_Docs.Select(Tree_Docs.Items[tr_moves_wait]);
  with Data.DS_Moves_N do
  begin
    Append;
    Post;
    nakl_id := fbn('ID').AsInteger;
    SetMovesFilter;
    SetMovesTittle;
    Locate('ID', nakl_id, []);
  end;
  MovesForm.ShowModal;
end;

procedure TMainForm.act_moves_cennikExecute(Sender: TObject);
begin
  if Data.BillOpened(MV) > 0 then
    exit;
  try
    Data.DS_Moves_N.DisableControls;
    Data.DS_Moves.DisableControls;
    Data.DS_Goods.DisableControls;
    Data.DS_Moves.First;
    SysContainer.crs := Data.LastCurs;
    if SysContainer.CennikReport.LoadFromFile(OptionsForm.edit_Cenniki.Text)
    then
    begin
      Data.DS_Depots.Locate('ID', Data.DS_Moves_N['DEPOT_TO_ID'], []);
      case Data.DS_Depots.fbn('PRICE_TYPE').AsInteger of
        0:
          SysContainer.price_cennik_name := 'PRICE';
        1:
          SysContainer.price_cennik_name := 'PRICE1';
        2:
          SysContainer.price_cennik_name := 'PRICE_SHOP2';
        3:
          SysContainer.price_cennik_name := 'PRICE_SHOP';
      end;
      SysContainer.CennikReport.PrepareReport;
      SysContainer.CennikReport.PrintOptions.ShowDialog := false;
      SysContainer.CennikReport.ShowPreparedReport;
    end
    else
      ShowMessage('Ошибка открытия файла.');
  finally
    Data.DS_Moves_N.EnableControls;
    Data.DS_Moves.EnableControls;
    Data.DS_Goods.EnableControls;
  end;
end;

procedure TMainForm.act_moves_deleteExecute(Sender: TObject);
begin
  if Data.BillOpened(MV) > 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить накладную?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  if MovesForm.Visible then
    MovesForm.Close;
  Data.SetUserActivity(MV);
  isMyApplyActivity := true;
  Data.DS_Moves_N.Delete;
  Data.ClearUserActivity;
  Data.CanUpdateUser := true;
end;

procedure TMainForm.act_moves_editExecute(Sender: TObject);
begin
  if Data.DS_Moves_N.VisibleRecordCount > 0 then
  begin
    if Data.BillOpened(MV) > 0 then
      exit;
    SetMovesTittle;
    MovesForm.ShowModal;
  end;
end;

procedure TMainForm.act_moves_executeExecute(Sender: TObject);
begin
  if Data.BillOpened(MV) > 0 then
    exit;
  if Data.DS_Moves.State = dsEdit then
    Data.DS_Moves.Post;

  if not Data.CanApplyBill('DEPOT_MOVES', Data.DS_Moves_N.fbn('id').AsInteger)
  then
  begin
    MessageBox(Application.Handle, 'Введены неверные данные.' + #13 +
      'Выполнение невозможно!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;

  if MovesForm.Visible then
    MovesForm.Close;
  isMyApplyActivity := true;
  Data.DS_Moves_N.Edit;
  Data.DS_Moves_N.fbn('ENTERED').AsBoolean := true;
  Data.DS_Moves_N.Post;
end;

procedure TMainForm.act_moves_exportexcelExecute(Sender: TObject);
var
  s: string;
begin
  if Data.BillOpened(MV) > 0 then
    exit;
  s := inttostr(Data.DS_Moves_N['ID']);
  SysContainer.ExportExcelDialog.filename := 'movesBill_' + s + '.xls';
  if SysContainer.ExportExcelDialog.Execute then
    with Data.ExcelExport do
    begin
      try
        Data.DS_Moves.DisableControls;
        Data.DS_Moves_N.DisableControls;
        Data.DS_Goods.DisableControls;
        Template := OptionsForm.edit_ExcelMovesTemplate.Text;
        TemplSheet := s;
        DataSet := Data.DS_Moves;
        Title := 'Переходная накладная';
        Show(SysContainer.ExportExcelDialog.filename);
      finally
        Data.DS_Moves.EnableControls;
        Data.DS_Moves_N.EnableControls;
        Data.DS_Goods.EnableControls;
      end;
    end;
end;

procedure TMainForm.act_moves_exportExecute(Sender: TObject);
var
  BS: TStringList;
begin
  if Data.BillOpened(MV) > 0 then
    exit;
  SysContainer.SaveDialog.Filter := 'Переходные накладные|*.mmn';
  SysContainer.SaveDialog.DefaultExt := 'mmn';
  SysContainer.SaveDialog.filename := 'MOV_' +
    inttostr(Data.DS_Moves_N.FieldValues['ID']);
  if SysContainer.SaveDialog.Execute then
  begin
    progressbar.Max := Data.DS_Moves.VisibleRecordCount;
    progressbar.Position := 0;
    BS := TStringList.Create;
    BS.Add('Moscquito v2 ''MOVES FILE'' by RiFF');
    BS.Add('----------------');
    BS.Add(inttostr(Data.DS_Moves_N['DEPOT_FROM_ID']));
    BS.Add(inttostr(Data.DS_Moves_N['DEPOT_TO_ID']));
    if Data.DS_Moves_N['COMMENTS'] <> Null then
      BS.Add(Data.DS_Moves_N['COMMENTS'])
    else
      BS.Add('');
    BS.Add('----------------');
    Data.DS_Moves.First;
    while not(Data.DS_Moves.eof) do
    begin
      BS.Add(inttostr(Data.DS_Moves['GOOD_ID']));
      BS.Add(floattostr(Data.DS_Moves['CNT']));
      Data.DS_Moves.Next;
      progressbar.StepIt;
      Application.ProcessMessages;
    end;
    BS.SaveToFile(SysContainer.SaveDialog.filename);
    progressbar.Position := 0;
    BS.Free;
  end;
end;

procedure TMainForm.act_moves_historyExecute(Sender: TObject);
begin
  HistoryForm.ShowEx(Data.DS_Moves.FieldByName('GOOD_ID').AsInteger, all);
end;

procedure TMainForm.act_moves_importExecute(Sender: TObject);
var
  BS: TStringList;
  I, j, sa: Integer;
begin
  SysContainer.OpenDialog.Filter := 'Файлы перехода (*.mmn)|*.mmn';
  if SysContainer.OpenDialog.Execute then
  begin
    Data.DS_Moves.DisableControls;
    Data.DS_Moves_N.DisableControls;
    Tree_Docs.Select(Tree_Docs.Items[tr_moves_wait]);
    BS := TStringList.Create;
    BS.LoadFromFile(SysContainer.OpenDialog.filename);
    progressbar.Max := (BS.Count - 6) div 2;
    progressbar.Position := 0;
    if Pos('''MOVES FILE'' by RiFF', BS[0]) = 0 then
    begin
      MessageBox(Application.Handle, 'Неверный файл данных.',
        PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
      exit;
    end;
    with Data.DS_Moves_N do
    begin
      Insert;
      FieldValues['ENTERED'] := false;
      FieldValues['M_DATE'] := Now;
      FieldValues['DEPOT_FROM_ID'] := strtoint(BS[2]);
      FieldValues['DEPOT_TO_ID'] := strtoint(BS[3]);
      if BS[4] <> '' then
        FieldValues['COMMENTS'] := BS[4];
      Post;
    end;
    j := 6;
    sa := (BS.Count - 6) div 2;
    for I := 1 to sa do
    begin
      with Data.DS_Moves do
      begin
        Insert;
        FieldValues['GOOD_ID'] := strtoint(BS[j]);
        FieldValues['CNT'] := strtofloat(BS[j + 1]);
        Post;
        inc(j, 2);
      end;
      progressbar.StepIt;
      Application.ProcessMessages;
    end;
    progressbar.Position := 0;
    SetMovesFilter;
    SetMovesTittle;
    Data.DS_Moves.ReopenLocate('ID');
    Data.DS_Moves.EnableControls;
    Data.DS_Moves_N.EnableControls;
  end;
end;

procedure TMainForm.act_moves_itemcardExecute(Sender: TObject);
begin
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Locate('ID', Data.DS_Moves.FieldValues['GOOD_ID'], []);
  if Data.DS_Goods.FieldValues['DELETED'] = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if Data.DS_Goods.State = dsEdit then
      begin
        Data.DS_Goods.Post;
        Data.DS_Goods.ReopenLocate('ID');
        Query.DS_Select.ReopenLocate('ID');
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
end;

procedure TMainForm.act_moves_nextdayExecute(Sender: TObject);
begin
  if edit_moves_date.EditValue = Null then
    exit;
  edit_moves_date.EditValue := IncDay(edit_moves_date.EditValue, 1);
  SetMovesFilter;
end;

procedure TMainForm.act_moves_prevdayExecute(Sender: TObject);
begin
  if edit_moves_date.EditValue = Null then
    exit;
  edit_moves_date.EditValue := IncDay(edit_moves_date.EditValue, -1);
  SetMovesFilter;
end;

procedure TMainForm.act_moves_previewExecute(Sender: TObject);
begin
  if Data.BillOpened(MV) > 0 then exit;

  if SysContainer.MovesReport.LoadFromFile(OptionsForm.edit_MovesReport.Text) then
  begin
    try
      Data.DS_Moves.DisableControls;
      SysContainer.MovesReport.PrepareReport;
      SysContainer.MovesReport.ShowPreparedReport;
    finally
      Data.DS_Moves.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_moves_printExecute(Sender: TObject);
begin
  if Data.BillOpened(MV) > 0 then exit;

  if SysContainer.MovesReport.LoadFromFile(OptionsForm.edit_MovesReport.Text) then
  begin
    try
      Data.DS_Moves.DisableControls;
      SysContainer.MovesReport.PrepareReport;
      SysContainer.MovesReport.PrintOptions.ShowDialog := false;
      SysContainer.MovesReport.Print;
    finally
      Data.DS_Moves.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_moves_reset_allExecute(Sender: TObject);
begin
  edit_moves_date.EditValue := Now;
  edit_moves_from.KeyValue := Null;
  edit_moves_from.Text := '';
  edit_moves_to.KeyValue := Null;
  edit_moves_to.Text := '';
  SetMovesFilter;
end;

procedure TMainForm.act_moves_reset_dateExecute(Sender: TObject);
begin
  edit_moves_date.EditValue := Null;
  SetMovesFilter;
end;

procedure TMainForm.act_moves_reset_fromExecute(Sender: TObject);
begin
  edit_moves_from.KeyValue := Null;
  edit_moves_from.Text := '';
  SetMovesFilter;
end;

procedure TMainForm.act_moves_reset_toExecute(Sender: TObject);
begin
  edit_moves_to.KeyValue := Null;
  edit_moves_to.Text := '';
  SetMovesFilter;
end;

procedure TMainForm.act_moves_returnExecute(Sender: TObject);
begin
  if Data.BillOpened(MV) > 0 then
    exit;
  // Нельзя вернуть накладные возрастом больше недели.
  if (Trunc(Now) - Trunc(Data.DS_Moves_N.fbn('M_DATE').AsDateTime) > 7) and not SecKey
  then
  begin
    MessageBox(Application.Handle, 'Невозможно вернуть накладную!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    exit;
  end;

  if MovesForm.Visible then
    MovesForm.Close;
  isMyApplyActivity := true;
  Data.DS_Moves_N.Edit;
  Data.DS_Moves_N.fbn('ENTERED').AsBoolean := false;
  Data.DS_Moves_N.Post;
end;

procedure TMainForm.act_moves_shopcardExecute(Sender: TObject);
begin
  if Data.DS_Goods.Locate('ID', Data.DS_Moves.FieldValues['GOOD_ID'], []) then
    act_price_shop_edit.Execute;
end;

procedure TMainForm.act_moves_todayExecute(Sender: TObject);
begin
  edit_moves_date.EditValue := Now;
  SetMovesFilter;
end;

procedure TMainForm.act_ostatki_refreshExecute(Sender: TObject);
begin
  Data.DS_Goods.ReopenLocate('ID');
end;

procedure TMainForm.act_price_deleteExecute(Sender: TObject);
begin
  case Tree_Classifiers.Selected.AbsoluteIndex of
    tr_GenPrice:
      with Data.DS_Goods do
      begin
        if CountsNotNull then
        begin
          if MessageBox(Application.Handle, 'Удалить позицию?',
            PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
          begin
            Edit;
            FieldValues['DELETED'] := true;
            Post;
            Refresh;
            SetPriceButtons;
          end;
        end
        else
          MessageBox(Application.Handle,
            'Позицию удалить невозможно, т.к. она есть в наличии.',
            PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);

      end;
    tr_PriceTrash:
      with Data.DS_Goods do
      begin
        if (FieldValues['ALL_SALED'] = 0) and (FieldValues['ALL_ARRIVED'] = 0)
          and (FieldValues['CNT_ALL'] = 0) then
        begin
          if MessageBox(Application.Handle, 'Удалить позицию?' + #13 +
            'Восстановление будет невозможно...', PChar(MainForm.Caption),
            MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
            if MessageBox(Application.Handle,
              'Вы на самом деле хотите безвозвратно удалить эту позицию?',
              PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK
            then
              Delete;
        end
        else
          MessageBox(Application.Handle,
            'Позиция используется. Удаление невозможно.',
            PChar(MainForm.Caption), MB_OK + MB_ICONEXCLAMATION);
      end;
  end;
end;

procedure TMainForm.act_price_deselectExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Снять выбор с товаров?',
    PChar(Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then exit;

  Data.Database.Execute('UPDATE GOODS SET SELECTED = 0');
  Data.DS_Goods.ReopenLocate('ID');
end;

procedure TMainForm.act_price_editExecute(Sender: TObject);
begin
  if Tree_Classifiers.Selected.AbsoluteIndex = tr_GenPrice then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        try
          Screen.Cursor := crAppStart;
          Data.DS_Goods.Post;
          Data.DS_Goods.ReopenLocate('ID');
          Query.DS_Select.ReopenLocate('ID');
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end;
  if Tree_Classifiers.Selected.AbsoluteIndex = tr_PriceTrash then
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
end;

procedure TMainForm.act_price_findExecute(Sender: TObject);
begin
  FindDialog.Execute
end;

procedure TMainForm.act_price_newExecute(Sender: TObject);
var
  sp: TBookmark;
begin
  Tree_Classifiers.Select(Tree_Classifiers.Items[tr_GenPrice]);
  with Data.DS_Goods do
  begin
    Insert;
    FieldValues['DATE_ADDED'] := Now;
    FieldValues['DATE_CHANGED'] := Now;
    FieldValues['PRICE1'] := 0;
    FieldValues['PRICE2'] := 0;
    FieldValues['PRICE_SHOP'] := 0;
    FieldValues['PRICE_SHOP2'] := 0;
    FieldValues['C0'] := 0;
    FieldValues['C1'] := 0;
    FieldValues['C2'] := 0;
    FieldValues['C3'] := 0;
    FieldValues['C4'] := 0;
    FieldValues['C5'] := 0;
    FieldValues['C6'] := 0;
    FieldValues['C7'] := 0;
    FieldValues['C8'] := 0;
    FieldValues['C9'] := 0;
    FieldValues['C10'] := 0;
    FieldValues['C11'] := 0;
    FieldValues['C12'] := 0;
    FieldValues['C13'] := 0;
    FieldValues['C14'] := 0;
    FieldValues['C15'] := 0;
    FieldValues['C16'] := 0;
    FieldValues['C17'] := 0;
    FieldValues['C18'] := 0;
    FieldValues['C19'] := 0;
    FieldValues['C20'] := 0;
    FieldValues['CB1'] := 0;
    FieldValues['CB2'] := 0;
    FieldValues['CB3'] := 0;
    FieldValues['CB4'] := 0;
    FieldValues['CB5'] := 0;
    FieldValues['CB6'] := 0;
    FieldValues['CB7'] := 0;
    FieldValues['CB8'] := 0;
    FieldValues['CB9'] := 0;
    FieldValues['CB10'] := 0;
    FieldValues['CB11'] := 0;
    FieldValues['CB12'] := 0;
    FieldValues['CB13'] := 0;
    FieldValues['CB14'] := 0;
    FieldValues['CB15'] := 0;
    FieldValues['CB16'] := 0;
    FieldValues['CB17'] := 0;
    FieldValues['CB18'] := 0;
    FieldValues['CB19'] := 0;
    FieldValues['CB20'] := 0;
    FieldValues['PRICE_CATEGORY_ID'] := 0;
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
      try
        Screen.Cursor := crAppStart;
        Post;
        sp := Data.DS_Goods.GetBookmark;
        DisableControls;
        ReopenLocate('ID');
        try
          GotoBookmark(sp);
        finally
        end;
        Query.DS_Select.ReopenLocate('ID');
      finally
        EnableControls;
        Screen.Cursor := crDefault;
      end
    else
      Data.DS_Goods.Cancel;
  end;
end;

procedure TMainForm.act_price_newonExecute(Sender: TObject);
var
  fname, cname, gstate, volume: string;
  type_id, firm_id, pricecategory: Integer;
  sp: TBookmark;
begin
  with Data.DS_Goods do
  begin
    sp := GetBookmark;
    if FieldValues['FULLNAME'] <> Null then
      fname := FieldValues['FULLNAME']
    else
      fname := '';
    if FieldValues['NAME'] <> Null then
      cname := FieldValues['NAME']
    else
      cname := '';
    if FieldValues['STATE'] <> Null then
      gstate := FieldValues['STATE']
    else
      gstate := '';
    if FieldValues['TYPE_ID'] <> Null then
      type_id := FieldValues['TYPE_ID']
    else
      type_id := -1;
    if FieldValues['FIRM_ID'] <> Null then
      firm_id := FieldValues['FIRM_ID']
    else
      firm_id := -1;
    if FieldValues['ML'] <> Null then
      volume := FieldValues['ML']
    else
      volume := '';
    if FieldValues['PRICE_CATEGORY_ID'] <> Null then
      pricecategory := FieldValues['PRICE_CATEGORY_ID']
    else
      pricecategory := 1;
    Tree_Classifiers.Select(Tree_Classifiers.Items[tr_GenPrice]);
    Insert;
    FieldValues['FULLNAME'] := fname;
    FieldValues['NAME'] := cname;
    FieldValues['STATE'] := gstate;
    if type_id <> -1 then
      FieldValues['TYPE_ID'] := type_id;
    if firm_id <> -1 then
      FieldValues['FIRM_ID'] := firm_id;
    FieldValues['ML'] := volume;
    FieldValues['PRICE_CATEGORY_ID'] := pricecategory;
    FieldValues['DATE_ADDED'] := Now;
    FieldValues['DATE_CHANGED'] := Now;
    FieldValues['PRICE1'] := 0;
    FieldValues['PRICE2'] := 0;
    FieldValues['PRICE_SHOP'] := 0;
    FieldValues['PRICE_SHOP2'] := 0;
    FieldValues['C0'] := 0;
    FieldValues['C1'] := 0;
    FieldValues['C2'] := 0;
    FieldValues['C3'] := 0;
    FieldValues['C4'] := 0;
    FieldValues['C5'] := 0;
    FieldValues['C6'] := 0;
    FieldValues['C7'] := 0;
    FieldValues['C8'] := 0;
    FieldValues['C9'] := 0;
    FieldValues['C10'] := 0;
    FieldValues['C11'] := 0;
    FieldValues['C12'] := 0;
    FieldValues['C13'] := 0;
    FieldValues['C14'] := 0;
    FieldValues['C15'] := 0;
    FieldValues['C16'] := 0;
    FieldValues['C17'] := 0;
    FieldValues['C18'] := 0;
    FieldValues['C19'] := 0;
    FieldValues['C20'] := 0;
    FieldValues['CB1'] := 0;
    FieldValues['CB2'] := 0;
    FieldValues['CB3'] := 0;
    FieldValues['CB4'] := 0;
    FieldValues['CB5'] := 0;
    FieldValues['CB6'] := 0;
    FieldValues['CB7'] := 0;
    FieldValues['CB8'] := 0;
    FieldValues['CB9'] := 0;
    FieldValues['CB10'] := 0;
    FieldValues['CB11'] := 0;
    FieldValues['CB12'] := 0;
    FieldValues['CB13'] := 0;
    FieldValues['CB14'] := 0;
    FieldValues['CB15'] := 0;
    FieldValues['CB16'] := 0;
    FieldValues['CB17'] := 0;
    FieldValues['CB18'] := 0;
    FieldValues['CB19'] := 0;
    FieldValues['CB20'] := 0;
    ItemEditorForm.EnControl := true;

    if ItemEditorForm.ShowModal = mrOK then
      try
        Screen.Cursor := crAppStart;
        Post;
        DisableControls;
        ReopenLocate('ID');
        GotoBookmark(sp);
        Query.DS_Select.ReopenLocate('ID');
      finally
        EnableControls;
        Screen.Cursor := crDefault;
      end
    else
      Cancel;
  end;
end;

procedure TMainForm.act_price_recalc_ostatkiExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Пересчитать остатки?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    WaitForm.UpdateProductBalances;
end;

procedure TMainForm.act_price_refreshExecute(Sender: TObject);
begin
  Data.DS_Goods.ReopenLocate('ID');
end;

procedure TMainForm.act_price_restoreExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Восстановить позицию?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    with Data.DS_Goods do
    begin
      Edit;
      FieldValues['DELETED'] := false;
      Post;
      Refresh;
      act_price_delete.enabled := true;
      act_price_edit.enabled := true;
      SetPriceButtons;
    end;
end;

procedure TMainForm.act_print_biggerExecute(Sender: TObject);
begin
  preview_Report.Zoom := preview_Report.Zoom + 0.25;
  combo_print_scale.Text := floattostr(preview_Report.Zoom * 100) + '%';
end;

procedure TMainForm.act_print_editExecute(Sender: TObject);
begin
  preview_Report.Edit;
end;

procedure TMainForm.act_print_findExecute(Sender: TObject);
begin
  preview_Report.Find;
end;

procedure TMainForm.act_print_firstExecute(Sender: TObject);
begin
  preview_Report.First;
end;

procedure TMainForm.act_print_lastExecute(Sender: TObject);
begin
  preview_Report.Last;
end;

procedure TMainForm.act_print_nextExecute(Sender: TObject);
begin
  preview_Report.Next;
end;

procedure TMainForm.act_print_openExecute(Sender: TObject);
begin
  preview_Report.LoadFromFile;
end;

procedure TMainForm.act_print_prepareExecute(Sender: TObject);
var
  prc: string;
begin
  case Tree_Reports.Selected.AbsoluteIndex of

    tr_PriceReport:
      begin
        if check_print_ondepot.EditValue = true then
        begin
          if VarIsNull(combo_print_depot.KeyValue) then
            Data.DS_Goods.Filter :=
              '(DELETED=0) AND ((C1>0) or (C2>0) or (C3>0) or (C4>0) or (C5>0) or (C6>0)) and ((TYPE_ID=15) or (TYPE_ID=16))'
          else
            Data.DS_Goods.Filter := '(C' + inttostr(combo_print_depot.KeyValue)
              + '>0) and ((TYPE_ID=15) or (TYPE_ID=16))';
        end
        else
          Data.DS_Goods.Filter :=
            '(DELETED=0) and ((TYPE_ID=15) or (TYPE_ID=16))';
        Data.DS_Goods.Filtered := true;
        if SysContainer.PriceReport.LoadFromFile
          (OptionsForm.edit_SpecPriceReport.Text) then
        begin
          // SysContainer.PriceReport.DoublePass:=false;
          SysContainer.PriceReport.PrepareReport;
          SysContainer.PriceReport.ShowPreparedReport;
          act_print_edit.enabled := true;
        end
        else
        begin
          ShowMessage('Ошибка открытия файла.');
          act_print_edit.enabled := false;
        end;
      end;
    tr_CountReport_Depots:
      begin
        if not VarIsNull(combo_print_depot.KeyValue) then
        begin
          DepotOnPrint := combo_print_depot.KeyValue;
          if check_print_ondepot.EditValue = true then
            Data.DS_Goods.Filter := 'C' +
              inttostr(combo_print_depot.KeyValue) + '<>0'
          else
            Data.DS_Goods.Filter := 'DELETED=0';
        end
        else
        begin
          DepotOnPrint := -1;
          if check_print_ondepot.EditValue = true then
            Data.DS_Goods.Filter := 'CNT_ALL<>0'
          else
            Data.DS_Goods.Filter := 'DELETED=0';
        end;
        Data.DS_Goods.Filtered := true;
        if SysContainer.PriceReport.LoadFromFile
          (OptionsForm.edit_CountOnDepot_Report.Text) then
        begin
          // SysContainer.PriceReport.DoublePass:=false;
          SysContainer.PriceReport.PrepareReport;
          SysContainer.PriceReport.ShowPreparedReport;
          act_print_edit.enabled := true;
        end
        else
        begin
          ShowMessage('Ошибка открытия файла.');
          act_print_edit.enabled := false;
        end;
      end;
  end;
end;

procedure TMainForm.act_print_printExecute(Sender: TObject);
begin
  SysContainer.PriceReport.PrintOptions.ShowDialog := false;
  preview_Report.Print;
end;

procedure TMainForm.act_print_priorExecute(Sender: TObject);
begin
  preview_Report.Prior;
end;

procedure TMainForm.act_print_reset_depotExecute(Sender: TObject);
begin
  combo_print_depot.KeyValue := Null;
  combo_print_depot.Text := 'Все склады';
end;

procedure TMainForm.act_print_saveExecute(Sender: TObject);
begin
  preview_Report.SaveToFile;
end;

procedure TMainForm.act_print_settingsExecute(Sender: TObject);
begin
  SysContainer.PriceReport.PrintOptions.ShowDialog := true;
  preview_Report.Print;
end;

procedure TMainForm.act_print_smallerExecute(Sender: TObject);
begin
  if preview_Report.Zoom <= 0.25 then
    exit;

  preview_Report.Zoom := preview_Report.Zoom - 0.25;
  combo_print_scale.Text := floattostr(preview_Report.Zoom * 100) + '%';
end;

procedure TMainForm.act_prod_clear_naklExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Очистить список производимых товаров?',
    PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then
    exit;
  Data.Database.Execute('DELETE FROM PRODUCTION WHERE NAKL_ID = ' +
    inttostr(Data.DS_Production_N.fbn('ID').AsInteger));
  Data.DS_Production.CloseOpen(false);
  ProductionForm.UpdateSpecificationFilter;
end;

procedure TMainForm.act_prod_deleteExecute(Sender: TObject);
begin
  if Data.BillOpened(PR) > 0 then
    exit;
  if MessageBox(Application.Handle, 'Удалить накладную?',
    PChar(MainForm.Caption), MB_OKCANCEL + MB_ICONQUESTION) <> IDOK then
    exit;
  if ProductionForm.Visible then
    ProductionForm.Close;
  Data.SetUserActivity(PR);
  isMyApplyActivity := true;
  Data.DS_Production_N.Delete;
  Data.ClearUserActivity;
  Data.CanUpdateUser := true;
end;

procedure TMainForm.act_prod_editExecute(Sender: TObject);
begin
  if Data.DS_Production_N.VisibleRecordCount > 0 then
  begin
    if Data.BillOpened(PR) > 0 then
      exit;
    ProductionForm.ShowModal;
  end;
end;

procedure TMainForm.act_prod_executeExecute(Sender: TObject);
begin
  if Data.BillOpened(PR) > 0 then
    exit;
  if Data.DS_Production.State = dsEdit then
    Data.DS_Production.Post;
  if Data.DS_Production_SP.State = dsEdit then
    Data.DS_Production_SP.Post;

  if not Data.CanApplyBill('PRODUCTION', Data.DS_Production_N.fbn('id').AsInteger) then
  begin
    MessageBox(Application.Handle, 'Введены неверные данные.' + #13 +
      'Выполнение невозможно!', PChar(MainForm.Caption),
      MB_OK + MB_ICONEXCLAMATION);
    exit;
  end;

  if ProductionForm.Visible then
    ProductionForm.Close;
  isMyApplyActivity := true;
  Data.DS_Production_N.Edit;
  Data.DS_Production_N.fbn('ENTERED').AsBoolean := true;
  Data.DS_Production_N.Post;
end;

procedure TMainForm.act_prod_item_cardExecute(Sender: TObject);
begin
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Locate('ID', Data.DS_Production.FieldValues['GOOD_ID'], []);
  if Data.DS_Goods.FieldValues['DELETED'] = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        try
          Screen.Cursor := crAppStart;
          Data.DS_Goods.Post;
          Data.DS_Goods.ReopenLocate('ID');
          Query.DS_Select.ReopenLocate('ID');
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
  Data.DS_Production.ReopenLocate('ID');
end;

procedure TMainForm.act_prod_item_historyExecute(Sender: TObject);
begin
  HistoryForm.ShowEx(Data.DS_Production.fbn('GOOD_ID').AsInteger, all);
end;

procedure TMainForm.act_prod_newExecute(Sender: TObject);
begin
  area_tree.ActivePage := P_Documents;
  Tree_Docs.Select(Tree_Docs.Items[tr_production_wait]);
  Data.DS_Production_N.Append;
  Data.DS_Production_N.Post;
  ProductionForm.ShowModal;
end;

procedure TMainForm.act_prod_next_dayExecute(Sender: TObject);
begin
  if edit_prod_date.EditValue = Null then
    exit;
  edit_prod_date.EditValue := IncDay(edit_prod_date.EditValue, 1);
  SetProductionFilter;
end;

procedure TMainForm.act_prod_previewExecute(Sender: TObject);
begin
  if Data.BillOpened(PR) > 0 then
    exit;
  if SysContainer.ProductionReport.LoadFromFile(OptionsForm.edit_ProductionReport.Text)
  then
  begin
    try
      Data.DS_Production.DisableControls;
      Data.DS_Production_SP.DisableControls;
      SysContainer.ProductionReport.PrepareReport;
      SysContainer.ProductionReport.ShowPreparedReport;
    finally
      Data.DS_Production_SP.EnableControls;
      Data.DS_Production.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_prod_prev_dayExecute(Sender: TObject);
begin
  if edit_prod_date.EditValue = Null then
    exit;
  edit_prod_date.EditValue := IncDay(edit_prod_date.EditValue, -1);
  SetProductionFilter;
end;

procedure TMainForm.act_prod_printExecute(Sender: TObject);
begin
  if Data.BillOpened(PR) > 0 then
    exit;
  if SysContainer.ProductionReport.LoadFromFile(OptionsForm.edit_ProductionReport.Text)
  then
  begin
    try
      Data.DS_Production.DisableControls;
      Data.DS_Production_SP.DisableControls;
      SysContainer.ProductionReport.PrepareReport;
      SysContainer.ProductionReport.PrintOptions.ShowDialog := false;
      SysContainer.ProductionReport.Print;
    finally
      Data.DS_Production_SP.EnableControls;
      Data.DS_Production.EnableControls;
    end;
  end
  else
    ShowMessage('Ошибка открытия файла.');
end;

procedure TMainForm.act_prod_resetExecute(Sender: TObject);
begin
  edit_prod_date.EditValue := Now;
  edit_prod_depot.KeyValue := Null;
  edit_prod_depot.Text := '';
  SetProductionFilter;
end;

procedure TMainForm.act_prod_reset_dateExecute(Sender: TObject);
begin
  edit_prod_date.EditValue := Null;
  SetProductionFilter;
end;

procedure TMainForm.act_prod_reset_depotExecute(Sender: TObject);
begin
  edit_prod_depot.KeyValue := Null;
  edit_prod_depot.Text := '';
  SetProductionFilter;
end;

procedure TMainForm.act_prod_returnExecute(Sender: TObject);
begin
  if Data.BillOpened(PR) > 0 then
    exit;
  // Нельзя вернуть накладные возрастом больше недели.
  if (Trunc(Now) - Trunc(Data.DS_Production_N.fbn('P_DATE').AsDateTime) > 7) and not SecKey
  then
  begin
    MessageBox(Application.Handle, 'Невозможно вернуть накладную!',
      PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
    exit;
  end;

  if ProductionForm.Visible then
    ProductionForm.Close;
  isMyApplyActivity := true;
  Data.DS_Production_N.Edit;
  Data.DS_Production_N.fbn('ENTERED').AsBoolean := false;
  Data.DS_Production_N.Post;
end;

procedure TMainForm.act_prod_spec_clear_naklExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Очистить спецификацию товара?',
    PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then
    exit;
  Data.ClearSpecificationBill(Data.DS_Production.fbn('ID').AsInteger);
  Data.DS_Production_SP.CloseOpen(false);
end;

procedure TMainForm.act_prod_spec_item_cardExecute(Sender: TObject);
begin
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Locate('ID', Data.DS_Production_SP.FieldValues['GOOD_ID'], []);
  if Data.DS_Goods.FieldValues['DELETED'] = 0 then
  begin
    ItemEditorForm.EnControl := true;
    if ItemEditorForm.ShowModal = mrOK then
    begin
      if (Data.DS_Goods.State = dsEdit) or (Data.DS_Goods.State = dsInsert) then
      begin
        try
          Screen.Cursor := crAppStart;
          Data.DS_Goods.Post;
          Data.DS_Goods.ReopenLocate('ID');
          Query.DS_Select.ReopenLocate('ID');
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else
      Data.DS_Goods.Cancel;
  end
  else
  begin
    ItemEditorForm.EnControl := false;
    ItemEditorForm.ShowModal;
  end;
  Data.DS_Production_SP.ReopenLocate('ID');
end;

procedure TMainForm.act_prod_spec_item_historyExecute(Sender: TObject);
begin
  HistoryForm.ShowEx(Data.DS_Production_SP.fbn('GOOD_ID').AsInteger, all);
end;

procedure TMainForm.act_prod_spec_load_defaultsExecute(Sender: TObject);
var
  nakl_id: integer;
  origin_good_id: integer;
begin
  origin_good_id := Data.DS_Production.fbn('GOOD_ID').AsInteger;
  if not Data.DefaultSpecificationExists(origin_good_id) then
    begin
      MessageBox(0, 'Для этого товара нет спецификации по умолчанию!', 'Внимание!', MB_ICONEXCLAMATION or MB_OK);
      exit;
    end;

  if MessageBox(Application.Handle, PChar('Загрузить спецификацию по умолчанию для ' +
    Data.DS_Production.FBN('NAME').AsString + ' ?' + #13#10 +
    'Это удалит текущую спецификацию!'),
    PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then exit;
  nakl_id := Data.DS_Production.fbn('ID').AsInteger;
  Data.ClearSpecificationBill(nakl_id);
  Data.LoadDefaultSpecification(nakl_id, origin_good_id);
  Data.DS_Production_SP.CloseOpen(false);
end;

procedure TMainForm.act_prod_spec_save_defaultsExecute(Sender: TObject);
var
  nakl_id: integer;
  origin_good_id: integer;
begin
  if MessageBox(Application.Handle, PChar('Сохранить спецификацию по умолчанию для ' +
    Data.DS_Production.FBN('NAME').AsString + ' ?'),
    PChar(MainForm.Caption), MB_YESNO + MB_ICONQUESTION) <> IDYES then exit;
  nakl_id := Data.DS_Production.fbn('ID').AsInteger;
  origin_good_id := Data.DS_Production.fbn('GOOD_ID').AsInteger;
  Data.ClearDefaultSpecification(origin_good_id);
  Data.SaveDefaultSpecification(nakl_id, origin_good_id);
  Data.DS_Production_SP.CloseOpen(false);
end;

procedure TMainForm.act_prod_todayExecute(Sender: TObject);
begin
  edit_prod_date.EditValue := Now;
  SetProductionFilter;
end;

procedure TMainForm.IndicatorON;
begin
  TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle)
    .Indicators.Items[0].IndicatorType := sitBlue;
end;

procedure TMainForm.IndicatorOFF;
begin
  TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle)
    .Indicators.Items[0].IndicatorType := sitOff;
end;

procedure TMainForm.ForceUpdateTreeText;
begin
  r_arrival := Data.ArrivalRCount;
  r_sale := Data.SaleRCount;
  r_prod := Data.ProductionRCount;
  r_moves := Data.MovesRCount;
  r_rc := Data.RCRCount;
  r_rs := Data.RsRCount;
  Tree_Docs.Invalidate;
end;

procedure TMainForm.UpdateTreeText(EventName: String);
begin
  if (EventName = 'ARR_N') or (EventName = 'ENT_ARR_N') then
  begin
    r_arrival := Data.ArrivalRCount;
    Tree_Docs.Invalidate;
  end;
  if (EventName = 'SALE_N') or (EventName = 'ENT_SALE_N') then
  begin
    r_sale := Data.SaleRCount;
    Tree_Docs.Invalidate;
  end;
  if (EventName = 'PROD_N') or (EventName = 'ENT_PROD_N') then
  begin
    r_prod := Data.ProductionRCount;
    Tree_Docs.Invalidate;
  end;
  if (EventName = 'MOVES_N') or (EventName = 'ENT_MOVES_N') then
  begin
    r_moves := Data.MovesRCount;
    Tree_Docs.Invalidate;
  end;
  if (EventName = 'RETCUST_N') or (EventName = 'ENT_RETCUST_N') then
  begin
    r_rc := Data.RCRCount;
    Tree_Docs.Invalidate;
  end;
  if (EventName = 'RETSUPPL_N') or (EventName = 'ENT_RETSUPPL_N') then
  begin
    r_rs := Data.RsRCount;
    Tree_Docs.Invalidate;
  end;
end;

procedure TMainForm.Event_MOVES_N;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;
  Data.DS_Moves_N.ReopenLocate('ID');
  SetMovesButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('MOVES_N');
end;

procedure TMainForm.Event_ENT_MOVES_N;
var
  is_last: Boolean;
  id: Integer;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;

  Data.DS_Moves_N.DisableControls;
  is_last := false;
  if isMyApplyActivity then
  begin
    id := Data.DS_Moves_N.fbn('id').AsInteger;
    TB_Moves_N.MoveBy(1);
    if id = Data.DS_Moves_N.fbn('id').AsInteger then
      is_last := true;
  end;
  Data.DS_Moves_N.ReopenLocate('ID');
  if is_last then
    Data.DS_Moves_N.Last;
  isMyApplyActivity := false;
  Data.DS_Moves_N.EnableControls;

  Data.DS_Goods.ReopenLocate('ID');
  SetMovesButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ENT_MOVES_N');
end;

procedure TMainForm.Event_ARR_N;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;
  Data.DS_Arrival_N.ReopenLocate('ID');
  SetArrivalButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ARR_N');
end;

procedure TMainForm.Event_ENT_ARR_N;
var
  is_last: Boolean;
  id: Integer;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;

  Data.DS_Arrival_N.DisableControls;
  is_last := false;
  if isMyApplyActivity then
  begin
    id := Data.DS_Arrival_N.fbn('id').AsInteger;
    TB_Arrival_N.MoveBy(1);
    if id = Data.DS_Arrival_N.fbn('id').AsInteger then
      is_last := true;
  end;
  Data.DS_Arrival_N.ReopenLocate('ID');
  if is_last then
    Data.DS_Arrival_N.Last;
  isMyApplyActivity := false;
  Data.DS_Arrival_N.EnableControls;

  Data.DS_Goods.ReopenLocate('ID');
  SetArrivalButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ENT_ARR_N');
end;

procedure TMainForm.Event_SALE_N;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;
  Data.DS_Sale_N.ReopenLocate('ID');
  SetSaleButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('SALE_N');
end;

procedure TMainForm.Event_ENT_SALE_N;
var
  is_last: Boolean;
  id: Integer;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;

  Data.DS_Sale_N.DisableControls;
  is_last := false;
  if isMyApplyActivity then
  begin
    id := Data.DS_Sale_N.fbn('id').AsInteger;
    TB_Sale_N.MoveBy(1);
    if id = Data.DS_Sale_N.fbn('id').AsInteger then
      is_last := true;
  end;
  Data.DS_Sale_N.ReopenLocate('ID');
  if is_last then
    Data.DS_Sale_N.Last;
  isMyApplyActivity := false;
  Data.DS_Sale_N.EnableControls;

  Data.DS_Goods.ReopenLocate('ID');
  SetSaleButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ENT_SALE_N');
end;

procedure TMainForm.Event_PROD_N;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;
  Data.DS_Production_N.ReopenLocate('ID');
  SetProductionButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('PROD_N');
end;

procedure TMainForm.Event_ENT_PROD_N;
var
  is_last: Boolean;
  id: Integer;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;

  Data.DS_Production_N.DisableControls;
  is_last := false;
  if isMyApplyActivity then
  begin
    id := Data.DS_Production_N.fbn('id').AsInteger;
    TB_Production_N.MoveBy(1);
    if id = Data.DS_Production_N.fbn('id').AsInteger then
      is_last := true;
  end;
  Data.DS_Production_N.ReopenLocate('ID');
  if is_last then
    Data.DS_Production_N.Last;
  isMyApplyActivity := false;
  Data.DS_Production_N.EnableControls;

  Data.DS_Goods.ReopenLocate('ID');
  SetProductionButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ENT_PROD_N');
end;

procedure TMainForm.Event_RETCUST_N;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;
  Data.DS_Return_Cust_N.ReopenLocate('ID');
  SetRetCustButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('RETCUST_N');
end;

procedure TMainForm.Event_ENT_RETCUST_N;
var
  is_last: Boolean;
  id: Integer;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;

  Data.DS_Return_Cust_N.DisableControls;
  is_last := false;
  if isMyApplyActivity then
  begin
    id := Data.DS_Return_Cust_N.fbn('id').AsInteger;
    TB_Return_Cust_N.MoveBy(1);
    if id = Data.DS_Return_Cust_N.fbn('id').AsInteger then
      is_last := true;
  end;
  Data.DS_Return_Cust_N.ReopenLocate('ID');
  if is_last then
    Data.DS_Return_Cust_N.Last;
  isMyApplyActivity := false;
  Data.DS_Return_Cust_N.EnableControls;

  Data.DS_Goods.ReopenLocate('ID');
  SetRetCustButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ENT_RETCUST_N');
end;

procedure TMainForm.Event_RETSUPPL_N;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;
  Data.DS_Return_Suppl_N.ReopenLocate('ID');
  SetRetSupplButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('RET_SUPPL_N');
end;

procedure TMainForm.Event_ENT_RETSUPPL_N;
var
  is_last: Boolean;
  id: Integer;
begin
  event_locked := true;
  IndicatorON;
  Application.ProcessMessages;

  Data.DS_Return_Suppl_N.DisableControls;
  is_last := false;
  if isMyApplyActivity then
  begin
    id := Data.DS_Return_Suppl_N.fbn('id').AsInteger;
    TB_Return_Suppl_N.MoveBy(1);
    if id = Data.DS_Return_Suppl_N.fbn('id').AsInteger then
      is_last := true;
  end;
  Data.DS_Return_Suppl_N.ReopenLocate('ID');
  if is_last then
    Data.DS_Return_Suppl_N.Last;
  isMyApplyActivity := false;
  Data.DS_Return_Suppl_N.EnableControls;

  Data.DS_Goods.ReopenLocate('ID');
  SetRetSupplButtons;
  IndicatorOFF;
  event_locked := false;
  UpdateTreeText('ENT_RETSUPPL_N');
end;

procedure TMainForm.Event_ALL;
var
  bill: Integer;
begin
  bill := CurBill;
  case bill of
    tr_moves_wait, tr_moves_exec:
      Event_MOVES_N;
    tr_arr_wait, tr_arr_exec:
      Event_ARR_N;
    tr_production_wait, tr_production_exec:
      Event_PROD_N;
    tr_sale_wait, tr_sale_exec:
      Event_SALE_N;
    tr_ret_cust_wait, tr_ret_cust_exec:
      Event_RETCUST_N;
    tr_ret_suppl_wait, tr_ret_suppl_exec:
      Event_RETSUPPL_N;
  end;
end;

procedure TMainForm.EventAlerterEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer);
begin
  if event_locked or not ProgStarted then
    exit;
  if EventName = 'USERSCHANGED' then
    Event_ALL
  else if (EventName = 'MOVES_N') and (CurBill = tr_moves_wait) then
    Event_MOVES_N
  else if EventName = 'ENT_MOVES_N' then
    Event_ENT_MOVES_N
  else if (EventName = 'ARR_N') and (CurBill = tr_arr_wait) then
    Event_ARR_N
  else if EventName = 'ENT_ARR_N' then
    Event_ENT_ARR_N
  else if (EventName = 'PROD_N') and (CurBill = tr_production_wait) then
    Event_PROD_N
  else if EventName = 'ENT_PROD_N' then
    Event_ENT_PROD_N
  else if (EventName = 'SALE_N') and (CurBill = tr_sale_wait) then
    Event_SALE_N
  else if EventName = 'ENT_SALE_N' then
    Event_ENT_SALE_N
  else if (EventName = 'RETCUST_N') and (CurBill = tr_ret_cust_wait) then
    Event_RETCUST_N
  else if EventName = 'ENT_RETCUST_N' then
    Event_ENT_RETCUST_N
  else if (EventName = 'RETSUPPL_N') and (CurBill = tr_ret_suppl_wait) then
    Event_RETSUPPL_N
  else if EventName = 'ENT_RETSUPPL_N' then
    Event_ENT_RETSUPPL_N;

end;

function TMainForm.CurBill: Integer;
begin
  Result := -1;
  if (MainForm.area_client.ActivePage = P_Sale_N) or
    (MainForm.area_client.ActivePage = P_Arrival_N) or
    (MainForm.area_client.ActivePage = P_Moves_N) or
    (MainForm.area_client.ActivePage = P_Return_Cust_N) or
    (MainForm.area_client.ActivePage = P_ReturnSuppl_N) then
    Result := MainForm.Tree_Docs.Selected.AbsoluteIndex;
end;

procedure TMainForm.cxBarEditItem3PropertiesCloseUp(Sender: TObject);
begin
  SetProductionFilter;
  TB_Production_N.SetFocus;
end;

procedure TMainForm.cxGrid1DBTableView1CellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if AButton = mbLeft then
    act_sale_edit.Execute;
end;

procedure TMainForm.btnColorfulGridClick(Sender: TObject);
begin
  TB_Sale_N.Invalidate;
end;

procedure TMainForm.btn_price_exportexcelClick(Sender: TObject);
begin
  (Sender as TdxBarButton).DropDown;
end;

procedure TMainForm.FormActivate(Sender: TObject);
var
  k: variant;
begin
  if firstrun then
  begin
    firstrun := false;
    r_arrival := Data.ArrivalRCount;
    r_sale := Data.SaleRCount;
    r_prod := Data.ProductionRCount;
    r_moves := Data.MovesRCount;
    r_rc := Data.RCRCount;
    r_rs := Data.RsRCount;
    FillComboCustomers;
    k := Data.Database.QueryValue
      ('SELECT MAX(K_DATE) FROM KASSA WHERE CASHOUT = 1', 0);
    if not VarIsNull(k) then
      edit_kassa_date.EditValue := k
    else
      edit_kassa_date.EditValue := Null;
    // Если дата с момента последнего запуска уменьшилась на 1 день и больше - выход из программы

    if Trunc(Data.DS_Defaults.fbn('LAST_SYS_DATE').AsDateTime) - Trunc(Now) >= 1
    then
    begin
      MessageBox(Application.Handle, PChar('Изменена системная дата!' + #10#13 +
        'Программа будет закрыта.' + #10#13 +
        'Установите правильную дату и перезапустите программу.'),
        PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
      Hide;
      Close;
      exit;
    end;

    Data.DS_Defaults.Edit;
    Data.DS_Defaults.fbn('LAST_SYS_DATE').AsDateTime := Now;
    Data.DS_Defaults.Post;

    // if AuthoriseForm.ShowModal = mrOK then
    if 1 = 1 then

    begin
      if Data.DS_Users.Locate('ID', MainForm.user_id, []) then
      begin
        // if user_id = 1 then check_Superuser.Visible := ivAlways;
        Data.DS_Users.Edit;
        Data.DS_Users.fbn('CURRENT_DOC').Clear;
        Data.DS_Users.fbn('CURRENT_DOC_ID').Clear;
        Data.DS_Users.Post;
      end
      else
      begin
        MessageBox(Application.Handle,
          PChar('Неверный идентификатор пользователя!' + #10#13 +
          'Программа будет закрыта.' + #10#13 + 'Обратитесь к администратору.'),
          PChar(MainForm.Caption), MB_OK + MB_ICONERROR);
        Close;
        exit;
      end;
    end
    else
    begin
      Hide;
      Close;
      exit;
    end;
  end;
end;

procedure TMainForm.edit_kassa_clientPropertiesCloseUp(Sender: TObject);
begin
  SetKassaFilter;
  TB_KASSA.SetFocus;
end;

procedure TMainForm.edit_kassa_dateChange(Sender: TObject);
begin
  if VarIsNull(edit_kassa_date.EditValue) then
  begin
    act_kassa_nextday.enabled := false;
    act_kassa_prevday.enabled := false;
  end
  else
  begin
    act_kassa_nextday.enabled := true;
    act_kassa_prevday.enabled := true;
  end;
end;

procedure TMainForm.edit_kassa_datePropertiesCloseUp(Sender: TObject);
begin
  SetKassaFilter;
  TB_KASSA.SetFocus;
end;

procedure TMainForm.FillComboCustomers;
begin
  FillCustomers(edit_sale_customer);
  FillCustomers(edit_rc_customer);
  FillCustomers(edit_rs_client);
  FillCustomers(edit_arr_supplier);
  FillCustomers(edit_kassa_client);
  FillCustomers(HistoryForm.edit_client);
  FillCustomers(CustomerHistoryForm.edit_client);
  FillCustomers_edit(ArrivalForm.edit_client);
  FillCustomers_edit(SaleForm.edit_client);
  FillCustomers_edit(RetCustForm.edit_client);
  FillCustomers_edit(RetSupplForm.edit_client);
  FillCustomers_edit(KassaForm.edit_client);
end;

procedure TMainForm.FillCustomers_edit(combo: TcxDBImageComboBox);
var
  Items: TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
begin
  try
    Items := TcxImageComboBoxProperties((combo as TcxDBImageComboBox)
      .Properties).Items;
    Items.BeginUpdate;
    Items.Clear;
    with Query.DS_QueryClientsList do
    begin
      First;
      while not eof do
      begin
        Item := Items.Add as TcxImageComboBoxItem;
        Item.Value := fbn('ID').AsInteger;
        Item.Description := fbn('NAME').AsString;
        case fbn('C_TYPE').AsInteger of
          0:
            Item.ImageIndex := 53;
          1:
            Item.ImageIndex := 54;
          2:
            Item.ImageIndex := 55;
          3:
            Item.ImageIndex := 56;
          4:
            Item.ImageIndex := 66;
        end;
        Next;
      end;
    end;
  finally
    Items.EndUpdate;
    TcxImageComboBoxProperties((combo as TcxDBImageComboBox).Properties)
      .DropDownRows := 20;
  end;
end;

procedure TMainForm.FillCustomers(combo: TcxBarEditItem);
var
  Items: TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
begin
  try
    Items := TcxImageComboBoxProperties((combo as TcxBarEditItem)
      .Properties).Items;
    Items.BeginUpdate;
    Items.Clear;
    with Query.DS_QueryClientsList do
    begin
      First;
      while not eof do
      begin
        Item := Items.Add as TcxImageComboBoxItem;
        Item.Value := fbn('ID').AsInteger;
        Item.Description := fbn('NAME').AsString;
        case fbn('C_TYPE').AsInteger of
          0:
            Item.ImageIndex := 53;
          1:
            Item.ImageIndex := 54;
          2:
            Item.ImageIndex := 55;
          3:
            Item.ImageIndex := 56;
          4:
            Item.ImageIndex := 66;
        end;
        Next;
      end;
    end;
  finally
    Items.EndUpdate;
    TcxImageComboBoxProperties((combo as TcxBarEditItem).Properties)
      .DropDownRows := 20;
  end;
end;

end.
