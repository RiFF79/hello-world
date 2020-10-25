unit SystemContainerUnit;

interface

uses
  SysUtils, Classes, ImgList, Controls, Dialogs,
  EXLReport, Variants, Math, Forms, StrUtils, cxGraphics, frxClass,
  QImport3, QImport3XLS, frxDBSet, frxDesgn, frxExportImage, frxExportPDF,
  frxExportXLS, DateUtils, frxExportCSV, QExport4, QExport4ASCII,
  QImport3Xlsx, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, QImport3ScriptEngine, QImport3JScriptEngine,
  frxExportBaseDialog, cxImageList, System.ImageList, QImport3Wizard,
  MainUnit, Settings, SaleUnit, ImportExcelSale,
  UnsortedItems, ProgressUnit, ArrivalUnit, QueryDataContainer,
  ExternapPriceImportUnit;

type
  TSysContainer = class(TDataModule)
    CurrImageList: TImageList;
    ArrivalReport: TfrxReport;
    FDS_Arrival: TfrxDBDataset;
    FDS_ReturnSuppl: TfrxDBDataset;
    ReturnSupplReport: TfrxReport;
    FDS_Sale: TfrxDBDataset;
    SaleReport: TfrxReport;
    FDS_Moves: TfrxDBDataset;
    MovesReport: TfrxReport;
    FDS_Goods: TfrxDBDataset;
    PriceReport: TfrxReport;
    SelectReport: TOpenDialog;
    SelectTemplate: TOpenDialog;
    SupplSummReport: TfrxReport;
    CennikReport: TfrxReport;
    OpenDialog: TOpenDialog;
    exlSale: tqimport3XLS;
    SaleBillsReport: TfrxReport;
    FDS_SaleBillsReport: TfrxDBDataset;
    exlSupplier: tqimport3XLS;
    FSpecReport: TfrxUserDataSet;
    exlArrival: tqimport3XLS;
    RetCustReport: TfrxReport;
    FDS_RetCust: TfrxDBDataset;
    exlGoods: tqimport3XLS;
    ColorDialog: TColorDialog;
    ImportExcelDialog: TOpenDialog;
    ExportExcelDialog: TSaveDialog;
    SaveDialog: TSaveDialog;
    DolgiReport: TfrxReport;
    FDS_Dolgi: TfrxDBDataset;
    BigImages: TcxImageList;
    FDS_Sale_Order: TfrxDBDataset;
    EditImages: TcxImageList;
    KassaReport: TfrxReport;
    fds_kassa: TfrxDBDataset;
    FDS_Depots: TfrxDBDataset;
    FDS_Sale_N: TfrxDBDataset;
    FDS_Curs: TfrxDBDataset;
    FDS_Arrival_N: TfrxDBDataset;
    FDS_Moves_N: TfrxDBDataset;
    FDS_ReturnSuppl_N: TfrxDBDataset;
    FDS_RetCust_N: TfrxDBDataset;
    FDS_Defaults: TfrxDBDataset;
    SmallImages: TcxImageList;
    ReportDesigner: TfrxDesigner;
    defReport: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    AccReport: TfrxReport;
    ReqReport: TfrxReport;
    FDS_Requirements: TfrxDBDataset;
    FDS_ReqList: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCSVExport1: TfrxCSVExport;
    xlsShopProduct: tqimport3XLS;
    IL_Customers: TcxImageList;
    IL_Accounting: TcxImageList;
    exlSaleReq: TQImport3XLS;
    FDS_Production: TfrxDBDataset;
    FDS_Production_N: TfrxDBDataset;
    FDS_Production_SP: TfrxDBDataset;
    ProductionReport: TfrxReport;
    procedure DataModuleCreate(Sender: TObject);
    procedure PriceReportUserFunction(const Name: String; p1, p2, p3: Variant;
      var Val: Variant);
    procedure PriceReportGetValue(const ParName: String; var ParValue: Variant);
    procedure MovesReportGetValue(const ParName: String; var ParValue: Variant);
    procedure ArrivalReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure exlSaleBeforeImport(Sender: TObject);
    procedure exlSaleUserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure SaleBillsReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure exlSupplierUserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure exlSupplierAfterImport(Sender: TObject);
    procedure exlSupplierBeforeImport(Sender: TObject);
    procedure exlArrivalBeforeImport(Sender: TObject);
    procedure exlArrivalUserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure exlGoodsUserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure CennikReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure DolgiReportGetValue(const ParName: String; var ParValue: Variant);
    procedure exlSaleAfterImport(Sender: TObject);
    procedure MovesReportEndDoc(Sender: TObject);
    procedure KassaReportGetValue(const VarName: string; var Value: Variant);
    procedure DolgiReportBeginDoc(Sender: TObject);
    procedure ReqReportGetValue(const VarName: string; var Value: Variant);
    procedure SaleReportEndDoc(Sender: TObject);
    procedure exlSaleReqBeforeImport(Sender: TObject);
    procedure exlSaleReqAfterImport(Sender: TObject);
    procedure exlSaleReqUserDefinedImport(Sender: TObject; Row: TQImportRow);
  private
    pre_summ: Real;
    first_row: boolean;
    hasBarcode: boolean;
    IMPORT_PERC: double;
    IMPORT_ARR_PERC: double;
    temp_filter: string;
    temp_filtered: boolean;
    import_sale_n_id: integer;
    import_sale_n_cust: integer;
    function checkAttribute(str: String): String;
    function CheckMin(Value: Real): boolean;
    function GetColName(col_id: Integer): string;
    function isNumeric(p: string): boolean;
    function isInteger(p: string): boolean;
    function GetMinSupplierName: string;
    function GetMinSupplierPrice: Real;
    function SupplPrice(good_id: Integer; suppl_nid: Integer): Real;
    function ToNaturalLook(str: string): string;
    function RemoveTextFromEnd(Text: string; RemoveText: string): string;
  public
    art_field: Integer;
    price_cennik_name: string;
    crs: Real;
    function NormalizeBarCode(barcode: string): string;
    function FinalCheck(str: String): String;
    procedure FillExcelVariable;
    function GetPrice(Value: String): String;
    procedure ClearAvailability;
    function strok(s: string): string;
    function NormalizeFirms(str: string): string;
    function FirmInVariants(str: string; Variants: string;
      firm: string): string;
    function RemoveWasteSpaces(str: string): string;
    function FirstCapitals(str: string): string;
  end;

var
  SysContainer: TSysContainer;

implementation

uses DataConteiner;

{$R *.dfm}


function TSysContainer.FirstCapitals(str: string): string;
var
  SLen, I: Cardinal;
  WordDelims: TSysCharSet;
begin
  WordDelims := [' ', '(', ')', '[', ']', '0', '1', '2', '3', '4', '5', '6',
    '7', '8', '9', '0', '.', ',', ';', ':', '/', '\', '{', '}', '-', '+', '=',
    '_', '!', '?', '`', '~'];
  Result := AnsiLowerCase(str);
  I := 1;
  SLen := Length(Result);
  while I <= SLen do
  begin
    while (I <= SLen) and (Result[I] in WordDelims) do
      Inc(I);
    if I <= SLen then
      Result[I] := AnsiUpperCase(Result[I])[1];
    while (I <= SLen) and not(Result[I] in WordDelims) do
      Inc(I);
  end;
end;

procedure TSysContainer.DataModuleCreate(Sender: TObject);
begin
  SelectReport.InitialDir := Settings.ApplicationPath + 'Reports';
  SelectTemplate.InitialDir := Settings.ApplicationPath + 'Reports';
end;

procedure TSysContainer.ClearAvailability;
begin
  Data.Database.Execute('update GOODS set AVAILABLE_' + inttostr(art_field)
    + '=NULL');
  Data.DS_Goods.ReopenLocate('ID');
end;

function TSysContainer.strok(s: string): string;
begin
  Result := ansireplacestr(s, '''', '''''');
end;

function TSysContainer.RemoveWasteSpaces(str: string): string;
begin
  Result := str;
  while pos('  ', Result) <> 0 do
    Result := StringReplace(Result, '  ', ' ', [rfreplaceall]);
  if Result = '' then
    exit;
  if Result[1] = ' ' then
    Result := copy(Result, 2, Length(Result) - 1);
  if Result = '' then
    exit;
  if Result[Length(Result)] = ' ' then
    Result := copy(Result, 0, Length(Result) - 1);
end;

function TSysContainer.RemoveTextFromEnd(Text: string;
  RemoveText: string): string;
begin
  if AnsiLowerCase(copy(Text, Length(Text) - Length(RemoveText) + 1))
    = AnsiLowerCase(RemoveText) then
    Result := copy(Text, 0, Length(Text) - Length(RemoveText))
  else
    Result := Text;
end;

function TSysContainer.FirmInVariants(str: string; Variants: string;
  firm: string): string;
var
  v: array [1 .. 20] of string;
  I: Integer;
  j: Integer;
  p: Integer;
  wrd: string;
begin
  Result := '';
  if str = '' then
    exit;

  // Заполняем массив вариантами
  j := 0;
  wrd := '';
  for I := 1 to Length(Variants) do
  begin
    if Variants[I] <> ';' then
      wrd := wrd + Variants[I]
    else
    begin
      Inc(j);
      v[j] := wrd;
      wrd := '';
    end;
  end;
  if wrd <> '' then
  begin
    Inc(j);
    v[j] := wrd;
  end;
  // Перебираем варианты
  for I := 1 to j do
  begin
    p := pos(AnsiLowerCase(v[I]), AnsiLowerCase(str));
    if p = 1 then
    begin
      Result := v[I];
      exit;
    end;
  end;
end;

function TSysContainer.NormalizeFirms(str: string): string;
var
  Variant: string;
  firm: string;
begin
  with Data.DS_Firms do
  begin
    first;
    Variant := '';
    while (not eof) and (Variant = '') do
    begin
      firm := FBN('NAME').AsString;
      Variant := FirmInVariants(str, FBN('VARIANTS').AsString, firm);
      next;
    end;
    if Variant <> '' then
      Result := StringReplace(str, copy(str, 0, Length(Variant)), firm, [])
    else
      Result := str;
  end;
end;

function TSysContainer.ToNaturalLook(str: string): string;
begin
  Result := FirstCapitals(str);
  Result := RemoveWasteSpaces(Result);
  Result := NormalizeFirms(Result);
  Result := ansireplacestr(Result, '-Tester', ' тестер ');
  Result := ansireplacestr(Result, '-tester', ' тестер ');
  Result := ansireplacestr(Result, 'tester', ' тестер ');
  Result := ansireplacestr(Result, 'Tester', ' тестер ');
  Result := ansireplacestr(Result, 'Test', ' тестер');
  Result := ansireplacestr(Result, 'Тестер', ' тестер');
  Result := ansireplacestr(Result, 'Refil ', ' refill ');
  Result := ansireplacestr(Result, '(L)', ' lady ');
  Result := ansireplacestr(Result, '(M)', ' men ');
  Result := ansireplacestr(Result, ' Man ', ' men ');
  Result := ansireplacestr(Result, ' Men ', ' men ');
  Result := ansireplacestr(Result, ' Lady ', ' lady ');
  Result := ansireplacestr(Result, '(U)', ' unisex ');
  Result := ansireplacestr(Result, 'Unisex', ' unisex ');
  Result := ansireplacestr(Result, 'Edp', ' edp ');
  Result := ansireplacestr(Result, 'Edр', ' edp'); //русская буква р (В днепре)
  Result := ansireplacestr(Result, 'Edt', ' edt ');
  Result := ansireplacestr(Result, 'Edc', ' edc ');
  Result := ansireplacestr(Result, ' Ml ', 'ml ');
  Result := ansireplacestr(Result, ' ml ', 'ml ');
  Result := ansireplacestr(Result, 'Ml ', 'ml ');
  Result := ansireplacestr(Result, ' Vial', ' vial');
  Result := ansireplacestr(Result, ' Mini', ' mini');
  Result := ansireplacestr(Result, 'Set ', ' набор ');
  Result := ansireplacestr(Result, ' Spray ', ' ');
  Result := ansireplacestr(Result, ' Pen ', ' ручка ');
  Result := ansireplacestr(Result, '(L\M)', ' unisex ');
  if Result.EndsWith('Ml')
    then Result := copy(Result, 0, Result.Length - 2) + 'ml';
  Result := RemoveWasteSpaces(Result);
  Result := RemoveTextFromEnd(Result, 'new');
  Result := RemoveWasteSpaces(Result); // Еще раз после RemoveTextFromEnd
end;

function TSysContainer.CheckMin(Value: Real): boolean;
var
  Mas: array [1 .. 10] of double;
begin
  With Data.DS_Goods do
  begin
    if FieldValues['P8'] <> null then
      Mas[1] := FieldValues['P8']
    else
      Mas[1] := 9999999;
    if FieldValues['P6'] <> null then
      Mas[2] := FieldValues['P6']
    else
      Mas[2] := 9999999;
    if FieldValues['P19'] <> null then
      Mas[3] := FieldValues['P19']
    else
      Mas[3] := 9999999;
    if FieldValues['P12'] <> null then
      Mas[4] := FieldValues['P12']
    else
      Mas[4] := 9999999;
    if FieldValues['P9'] <> null then
      Mas[5] := FieldValues['P9']
    else
      Mas[5] := 9999999;
    if FieldValues['P14'] <> null then
      Mas[6] := FieldValues['P14']
    else
      Mas[6] := 9999999;
    if FieldValues['P5'] <> null then
      Mas[7] := FieldValues['P5']
    else
      Mas[7] := 9999999;
    if FieldValues['P3'] <> null then
      Mas[8] := FieldValues['P3']
    else
      Mas[8] := 9999999;
    if FieldValues['P2'] <> null then
      Mas[9] := FieldValues['P2']
    else
      Mas[9] := 9999999;
    if FieldValues['P11'] <> null then
      Mas[10] := FieldValues['P11']
    else
      Mas[10] := 9999999;
  end;
  if Value = MinValue(Mas) then
    Result := true
  else
    Result := false;
end;

procedure TSysContainer.PriceReportUserFunction(const Name: String;
  p1, p2, p3: Variant; var Val: Variant);
begin
  if Name = 'IsMinimum' then
  begin
    if CheckMin(p1) then
      Val := true
    else
      Val := false;
  end;
end;

procedure TSysContainer.ReqReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'SUPPLIER' then
    Value := GetMinSupplierName;
  if VarName = 'SUPPLIER_PRICE' then
    Value := GetMinSupplierPrice;
end;

procedure TSysContainer.PriceReportGetValue(const ParName: String;
  var ParValue: Variant);
var
  pr, pl: Real;
begin
  if ParName = 'DEPOT_NAME' then
    ParValue := MainForm.combo_print_depot.Text;
  if ParName = 'DEPOT_COUNT' then
  begin
    if MainForm.DepotOnPrint = -1 then
      ParValue := Data.DS_Goods.FBN('CNT_ALL').AsFloat
    else
      ParValue := Data.DS_Goods.FBN('C' + inttostr(MainForm.DepotOnPrint))
        .AsFloat;
  end;

  if ParName = 'P_CHANGES' then
  begin
    ParValue := '';
    if now - Data.DS_Goods.FBN('DATE_CHANGED').AsDateTime >
      Data.DS_Defaults.FBN('NEW_DAYS').AsInteger then
      exit;

    pr := Data.DS_Goods.FBN('PRICE1').AsFloat;
    pl := Data.DS_Goods.FBN('PRICE1_LAST').AsFloat;
    if pr > pl then
      ParValue := '­'
    else
      ParValue := '¯';
    if (pl > 1000) or (pl = 0) then
      ParValue := 'Å';
  end;
end;

procedure TSysContainer.MovesReportEndDoc(Sender: TObject);
begin
  MainForm.UpdatePrintedStatus_Move;
end;

procedure TSysContainer.MovesReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  if ParName = 'PPRICE2' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Moves['GOOD_ID'], 'PRICE2');
  if ParName = 'PPRICE1' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Moves['GOOD_ID'], 'PRICE1');
end;

procedure TSysContainer.ArrivalReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  if ParName = 'ArrPrice1' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Arrival['GOOD_ID'],
      'PRICE1');
  if ParName = 'ArrPrice2' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Arrival['GOOD_ID'],
      'PRICE2');
  if ParName = 'ArrPrice_SHOP1' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Arrival['GOOD_ID'],
      'PRICE_SHOP');
  if ParName = 'ArrPrice_SHOP2' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Arrival['GOOD_ID'],
      'PRICE_SHOP2');
  if ParName = 'ArrPrice_CNT_BAZAR' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Arrival['GOOD_ID'],
      'CNT_BAZAR');
end;

procedure TSysContainer.exlSaleAfterImport(Sender: TObject);
begin
  MainForm.progressbar.Position := 0;
  Data.DS_Sale.ReopenLocate('ID');
  SaleForm.UpdateRequirementsFilter;
  Data.DS_Goods.EnableControls;
  Data.DS_Sale_N.EnableControls;
  Data.DS_Sale.EnableControls;
  Data.DS_Requirements.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TSysContainer.exlSaleBeforeImport(Sender: TObject);
var
  I: Integer;
begin
  Data.DS_Sale.DisableControls;
  Data.DS_Sale_N.DisableControls;
  Data.DS_Goods.DisableControls;
  Data.DS_Requirements.DisableControls;

  Screen.Cursor := crHourGlass;
  Data.DS_Sale_N.Refresh;
  Data.DS_Sale.Last;
  MainForm.progressbar.Max := exlSale.TotalRecCount;
  MainForm.progressbar.Position := 0;
  {
  pricetype := Data.DS_Sale_N.FBN('PRICE_TYPE').AsInteger;
  XLSDepots_Count := 0;
  for I := 0 to 20 do
    if ImportExcelSaleForm.clbDepots.Checked[I] then
    begin
      XLSDepots[XLSDepots_Count] := Settings.XLSDepotsOrder[I];
      Inc(XLSDepots_Count);
    end;
  }
end;

procedure TSysContainer.exlSaleReqAfterImport(Sender: TObject);
begin
  MainForm.progressbar.Position := 0;
  if (Data.DS_Requirements.State = dsEdit) or
     (Data.DS_Requirements.State = dsInsert)
    then Data.DS_Requirements.Post;
  SaleForm.UpdateRequirementsFilter;
  SaleForm.UpdateReqList;
  SaleForm.UpdateReqButtons;
  Data.DS_Requirements.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TSysContainer.exlSaleReqBeforeImport(Sender: TObject);
var
  I: Integer;
begin
  Data.DS_Requirements.DisableControls;
  import_sale_n_id := Data.DS_Sale_N.FBN('ID').AsInteger;
  import_sale_n_cust := Data.DS_Sale_N.FBN('CUST_ID').AsInteger;
  Screen.Cursor := crHourGlass;
  Data.DS_Requirements.Last;
end;

procedure TSysContainer.exlSaleReqUserDefinedImport(Sender: TObject;
  Row: TQImportRow);
const
  c_id = 0;
  c_price = 1;
  c_cnt = 2;
var
  price: double;
  cnt: double;
  id: Integer;
begin
  if not TryStrToInt(Row[c_id].Value, id) or
     not TryStrToFloat(Row[c_cnt].Value, cnt) or
     not TryStrToFloat(Row[c_price].Value, price) then exit;
  if cnt < 1 then exit;
  Data.DS_Requirements.Append;
  Data.DS_Requirements.FBN('GOOD_ID').AsInteger := id;
  Data.DS_Requirements.FBN('CLIENT_ID').AsInteger := import_sale_n_cust;
  Data.DS_Requirements.FBN('CNT').AsFloat := cnt;
  Data.DS_Requirements.FBN('ORIGINAL_PRICE').AsFloat := price;
  Data.DS_Requirements.FBN('ORIGINAL_NAKL_ID').AsInteger := import_sale_n_id;
end;

function TSysContainer.isInteger(p: string): boolean;
var
  i: Integer;
begin
  Result := true;
  for i := 1 to p.length do
    begin
      if p[i] in ['0' .. '9'] then continue;
       Result := false;
       break;
    end;
end;

function TSysContainer.isNumeric(p: string): boolean;
var
  I: Integer;
begin
  Result := true;
  for i := 1 to p.length do
    begin
      if p[i] in ['0' .. '9', '.'] then continue;
       Result := false;
       break;
    end;
end;

procedure TSysContainer.exlSaleUserDefinedImport(Sender: TObject;
  Row: TQImportRow);
var
  price: Real;
  zprice: Real;
  cnt: real;
  dcnt: real;
  id: Integer;
  j: Integer;
  depot_cnt: real;

  procedure AddToInvoice(id: Integer; cnt: real; price: Real;
    depot: Integer);
  begin
    Data.DS_Sale.Append;
    Data.DS_Sale.fbn('GOOD_ID').AsInteger := id;
    Data.DS_Sale.fbn('CNT').AsFloat := cnt;
    Data.DS_Sale.fbn('PRICE').AsFloat := price;
    Data.DS_Sale.fbn('DEPOT_ID').AsInteger := depot;
    Data.DS_Sale.Post;
  end;

begin
  if Row[2].Value <> '' then
  begin
    id := strtoint(Row[0].Value);
    if isNumeric(Row[1].Value) then
      zprice := strtofloat(Row[1].Value)
    else
      zprice := 0;
    cnt := strtofloat(Row[2].Value);
    if Data.DS_Goods.Locate('ID', id, []) then
    begin
      j := 0;
      price := 0;
      if ImportExcelSaleForm.price_selector.ItemIndex = 0 then
      begin
      {
        case pricetype of
          1:
            price := Data.DS_Goods.fbn('PRICE1').AsFloat;
          2:
            price := Data.DS_Goods.fbn('PRICE2').AsFloat;
          3:
            price := Data.DS_Goods.fbn('PRICE_SHOP').AsFloat;
          4:
            price := Data.DS_Goods.fbn('PRICE_SHOP2').AsFloat;
        end;
      }
        price := RoundTo(price + price * SaleForm.edit_Procent.Value / 100, -2);
      end
      else
        price := zprice;

      dcnt := cnt;
      {
      while cnt > 0 do
      begin
        depot_cnt := Data.DS_Goods.FieldValues['C' + inttostr(XLSDepots[j])];
        if depot_cnt >= cnt then
        begin
          AddToInvoice(id, cnt, price, XLSDepots[j]);
          dcnt := 0;
          cnt := 0;
        end
        else
        begin
          if depot_cnt > 0 then
          begin
            AddToInvoice(id, depot_cnt, price, XLSDepots[j]);
            cnt := cnt - depot_cnt;
          end;
          Inc(j);
          if j = XLSDepots_Count then
          begin
            dcnt := cnt;
            cnt := 0;
          end;
        end;

      end;
      }
      if dcnt > 0 then
      begin
        Data.DS_Requirements.Insert;
        Data.DS_Requirements.FBN('GOOD_ID').AsInteger := id;
        Data.DS_Requirements.FBN('CLIENT_ID').AsInteger :=
          Data.DS_Sale_N.FBN('CUST_ID').AsInteger;
        Data.DS_Requirements.FBN('CNT').AsFloat := dcnt;
        Data.DS_Requirements.FBN('ORIGINAL_PRICE').AsFloat := zprice;
        Data.DS_Requirements.FBN('ORIGINAL_NAKL_ID').AsInteger :=
          Data.DS_Sale_N.FBN('ID').AsInteger;
        Data.DS_Requirements.Post;
      end;

    end
    else
      ShowMessage('Товар с артикулом №' + inttostr(id) + ' не существует.');
  end;
  MainForm.progressbar.StepIt;
  Application.ProcessMessages;
end;


procedure TSysContainer.SaleBillsReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  if ParName = 'PRICE_TYPE' then
    case Data.DS_Sale_N.FBN('PRICE_TYPE').AsInteger of
      1:
        ParValue := 'обычый';
      2:
        ParValue := 'спец.';
      3:
        ParValue := 'город';
      4:
        ParValue := 'базар';
    else
      ParValue := '';
    end;

end;

procedure TSysContainer.SaleReportEndDoc(Sender: TObject);
begin
  MainForm.UpdatePrintedStatus_Sale;
end;

function TSysContainer.NormalizeBarCode(barcode: string): string;
begin
  Result := ReplaceStr(barcode, '''', '');
  Result := ReplaceStr(Result, ' ', '');
  if Length(Result) = 11 then
    Result := '00' + Result
  else if Length(Result) = 12 then
    Result := '0' + Result;
end;

procedure TSysContainer.FillExcelVariable;
var
  I: Integer;
  s: string;
  articul_col: Integer;
  price_col: Integer;
  first_row: Integer;
  tag_col: Integer;
  name_cols: array [1 .. 20] of Integer;
  name_cols_count: Integer;
  name_cols_string: string;
  barcode_col: Integer;
begin
  with Data.DS_ImportPrice do
  begin
    articul_col := FieldValues['COL_ART'];
    price_col := FieldValues['COL_PRICE'];
    first_row := FieldValues['ROW_START'];
    tag_col := FieldValues['COL_ONDEPOT'];
    if FBN('BARCODE').IsNull then
      barcode_col := -1
    else
      barcode_col := FBN('BARCODE').AsInteger;
    name_cols_count := 1;
    name_cols_string := FieldValues['COL_NAME'] + ';';
    s := '';
    for I := 1 to Length(name_cols_string) do
    begin
      if (name_cols_string[I] <> ';') then
        s := s + name_cols_string[I]
      else
      begin
        name_cols[name_cols_count] := strtoint(s);
        s := '';
        Inc(name_cols_count);
      end;
    end;
    dec(name_cols_count);
    exlSupplier.Map.Clear;
    exlSupplier.Map.Add('ARTICUL=' + GetColName(articul_col) +
      inttostr(first_row) + '-COLFINISH');
    exlSupplier.Map.Add('PRICE=' + GetColName(price_col) + inttostr(first_row) +
      '-COLFINISH');
    exlSupplier.Map.Add('TAG=' + GetColName(tag_col) + inttostr(first_row) +
      '-COLFINISH');
    if barcode_col > 0 then
      exlSupplier.Map.Add('BARCODE=' + GetColName(barcode_col) +
        inttostr(first_row) + '-COLFINISH')
    else
      exlSupplier.Map.Add('BARCODE=' + GetColName(1) + inttostr(first_row) +
        '-COLFINISH');
    for I := 1 to name_cols_count do
      exlSupplier.Map.Add('NAME' + inttostr(I) + '=' + GetColName(name_cols[I])
        + inttostr(first_row) + '-COLFINISH');
    art_field := Data.DS_ImportPrice.FieldValues['ID'];
  end;
end;

function TSysContainer.GetPrice(Value: String): string;
var
  pr: Real;
begin
  pr := strtofloat(Value);
  pr := pr + pr * IMPORT_PERC;
  pr := pr + pr * IMPORT_ARR_PERC;
  Result := FloatToStrF(pr, ffFixed, 20, 2);
end;

procedure TSysContainer.KassaReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'SUMM_USD' then
    Value := Data.Database.QueryValue('SELECT SUM(SUMM_USD) FROM KASSA ' +
      Data.DS_KASSA.SQLs.SelectSQL[14] + 'AND IN_USE = 1', 0);
  if VarName = 'SUMM_UA' then
    Value := Data.Database.QueryValue('SELECT SUM(SUMM_UA) FROM KASSA ' +
      Data.DS_KASSA.SQLs.SelectSQL[14] + 'AND IN_USE = 1', 0);
  if VarName = 'DATE_RANGE' then
    Value := datetostr(MainForm.kassaFromDate) + ' - ' +
      datetostr(MainForm.kassaToDate);
  if VarName = 'SUMM_TOTAL' then
    Value := Data.Database.QueryValue('SELECT SUM(SUMM) FROM KASSA ' +
      Data.DS_KASSA.SQLs.SelectSQL[14] + 'AND IN_USE = 1', 0);
end;


function TSysContainer.checkAttribute(str: String): String;
var
  s: String;
begin
  Result := str;
  s := str.Replace('ml','',[rfIgnoreCase])
          .Replace('мл','',[rfIgnoreCase])
          .Trim;
  if isNumeric(s) then
    begin
      Result := s + 'ml';
      Exit;
    end;
  s := AnsiLowerCase(str);
  if (s = 'm') or (s = 'м') then Result := 'men'
  else if (s='u') or (s='lm') then Result := 'unisex'
  else if (s='l') or (s='ж') or (s='f') or (s='w') then Result := 'lady'
  else if (s='test') or (s='tester') then Result := 'тестер'
  else if s='b/l' then Result := 'Лосьон для тела'
  else if s='s/g' then Result := 'Гель для душа'
  else if s='cream' then Result := 'Крем'
  else if s='soap' then Result := 'Мыло'
  else if s='stik' then Result := 'deostick'
  else if s='deo spray' then Result := 'deo'
  else if s='big candle' then Result := 'Свеча'
  else if (s='рефил') or (s='рефилл') then Result := 'refill'
  else if s='sample' then Result := 'vial'
  else if s='set'then Result := 'набор';
end;

function TSysContainer.FinalCheck(str: String): String;
begin
  str := str.Replace(' ml ', ' ', [rfIgnoreCase])
            .Replace(' мл ', ' ', [rfIgnoreCase])
            .Replace(' fem ', ' ', [rfIgnoreCase])
            .Replace(' vapo ', ' ', [rfIgnoreCase])
            .Replace('Парфумована вода','edp', [rfIgnoreCase])
            .Replace(' 5 ', ' ', [rfIgnoreCase])
            .Replace(' 10 ', ' ', [rfIgnoreCase])
            .Replace(' 15 ', ' ', [rfIgnoreCase])
            .Replace(' 20 ', ' ', [rfIgnoreCase])
            .Replace(' 25 ', ' ', [rfIgnoreCase])
            .Replace(' 30 ', ' ', [rfIgnoreCase])
            .Replace(' 35 ', ' ', [rfIgnoreCase])
            .Replace(' 40 ', ' ', [rfIgnoreCase])
            .Replace(' 45 ', ' ', [rfIgnoreCase])
            .Replace(' 50 ', ' ', [rfIgnoreCase])
            .Replace(' 60 ', ' ', [rfIgnoreCase])
            .Replace(' 65 ', ' ', [rfIgnoreCase])
            .Replace(' 70 ', ' ', [rfIgnoreCase])
            .Replace(' 75 ', ' ', [rfIgnoreCase])
            .Replace(' 80 ', ' ', [rfIgnoreCase])
            .Replace(' 85 ', ' ', [rfIgnoreCase])
            .Replace(' 90 ', ' ', [rfIgnoreCase])
            .Replace(' 95 ', ' ', [rfIgnoreCase])
            .Replace(' 100 ', ' ', [rfIgnoreCase])
            .Replace(' 105 ', ' ', [rfIgnoreCase])
            .Replace(' 110 ', ' ', [rfIgnoreCase])
            .Replace(' 115 ', ' ', [rfIgnoreCase])
            .Replace(' 120 ', ' ', [rfIgnoreCase])
            .Replace(' 125 ', ' ', [rfIgnoreCase])
            .Replace(' 130 ', ' ', [rfIgnoreCase])
            .Replace(' 135 ', ' ', [rfIgnoreCase])
            .Replace(' 140 ', ' ', [rfIgnoreCase])
            .Replace(' 145 ', ' ', [rfIgnoreCase])
            .Replace(' 150 ', ' ', [rfIgnoreCase])
            .Replace(' 160 ', ' ', [rfIgnoreCase])
            .Replace(' 170 ', ' ', [rfIgnoreCase])
            .Replace(' 175 ', ' ', [rfIgnoreCase])
            .Replace(' 180 ', ' ', [rfIgnoreCase])
            .Replace(' 200 ', ' ', [rfIgnoreCase])
            .Replace(' 250 ', ' ', [rfIgnoreCase])
            .Replace(' 500 ', ' ', [rfIgnoreCase]);

  if AnsiLowerCase(str).Contains('edp') then
    str := str.Replace('edp',' ',[rfIgnoreCase, rfReplaceAll]) + ' edp';
  if AnsiLowerCase(str).Contains('edt') then
    str := str.Replace('edt',' ',[rfIgnoreCase, rfReplaceAll]) + ' edt';
  if AnsiLowerCase(str).Contains('edc') then
    str := str.Replace('edc',' ',[rfIgnoreCase, rfReplaceAll]) + ' edс';

  if AnsiLowerCase(str).Contains('lady') then
    str := str.Replace('lady',' ',[rfIgnoreCase, rfReplaceAll]) + ' lady';
  if AnsiLowerCase(str).Contains('men') then
    str := str.Replace('men',' ',[rfIgnoreCase, rfReplaceAll]) + ' men';
  if AnsiLowerCase(str).Contains('unisex') then
    str := str.Replace('unisex',' ',[rfIgnoreCase, rfReplaceAll]) + ' unisex';


  if AnsiLowerCase(str).Contains('refill') then
    str := str.Replace('refill',' ',[rfIgnoreCase, rfReplaceAll]) + ' refill';
  if AnsiLowerCase(str).Contains('mini') then
    str := str.Replace('mini',' ',[rfIgnoreCase, rfReplaceAll]) + ' mini';
  if AnsiLowerCase(str).Contains('vial') then
    str := str.Replace('vial',' ',[rfIgnoreCase, rfReplaceAll]) + ' vial';
  if AnsiLowerCase(str).Contains('тестер') then
    str := str.Replace('тестер',' ',[rfIgnoreCase, rfReplaceAll]) + ' тестер';

  Result := RemoveWasteSpaces(str);
end;

procedure TSysContainer.exlSupplierUserDefinedImport(Sender: TObject;
  Row: TQImportRow);
var
  tmp: string;
  tag: string;
  articul: string;
  barcode: string;
  price: string;
  item_prefix: string;
  item_postfix: string;
  item_name: string;
  art_found: boolean;
  barcode_found: boolean;
  I: Integer;
  p: extended;
begin
  articul := trim(Row[0].Value);

  if hasBarcode then
    barcode := NormalizeBarCode(Row[3].Value)
  else
    barcode := '';
  price := AnsiLowerCase(Row[1].Value);
  price := ReplaceStr(price, '$', '');
  price := ReplaceStr(price, ',', '.');

  if TryStrToFloat(price, p) then
  begin
    price := GetPrice(price);
    tag := Row[2].Value;
  end
  else
  begin
    price := '';
    tag := '';
  end;

  if articul = '39398' then
     beep;

  item_prefix := Row[4].Value;
  item_postfix := '';
  for I := 5 to (Row.Count - 1) do
    begin
      tmp := checkAttribute(Trim(Row[I].Value));
      if (pos(AnsiLowerCase(tmp), AnsiLowerCase(item_prefix)) = 0) or (tmp.Length = 1)
        then item_postfix := item_postfix + tmp + ' ';
    end;

  item_postfix := item_postfix.Trim;
  item_name := ToNaturalLook(item_prefix) + ' ' + item_postfix;
  if item_postfix <> '' then item_name := FinalCheck(item_name);

  if price <> '' then
  begin
    art_found := Data.DS_Goods.Locate('ART_' + inttostr(art_field),
      articul, []);
    barcode_found := false;
    if not(art_found) and hasBarcode and (barcode <> '') then
      barcode_found := Data.DS_Goods.Locate('BARCODE', barcode, []);
    if barcode_found or art_found then
    begin
      Data.DS_Goods.Edit;
      if barcode_found then
      begin
        Data.DS_Goods.FBN('ART_' + inttostr(art_field)).AsString := articul;
      end;

      if Data.DS_Goods.FBN('SUPL_PRICE_' + inttostr(art_field)).AsFloat <>
        strtofloat(price) then
      begin
        Data.DS_Goods.FBN('SUPL_PRICE_' + inttostr(art_field)).AsFloat :=
          strtofloat(price);
        Data.DS_Goods.FBN('SUPPL_DATE_' + inttostr(art_field))
          .AsDateTime := now;
      end;
      if tag <> '' then
      begin
        Data.DS_Goods.FBN('AVAILABLE_' + inttostr(art_field)).AsInteger := 1;
      end;
      if barcode <> '' then
      begin
        Data.DS_Goods.FBN('BARCODE').AsString := barcode;
      end;
      Data.DS_Goods.Post;
    end
    else if Data.Database.QueryValue
      ('SELECT COUNT(ART) from UNSORTED where (SUPPL_ID=' + inttostr(art_field)
      + ') and (ART=''' + '' + strok(articul) + ''')', 0) = 0 then
    begin
      UnsortedItemsForm.TB_Unsorted.RowCount :=
        UnsortedItemsForm.TB_Unsorted.RowCount + 1;
      UnsortedItemsForm.TB_Unsorted.Cells
        [0, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := articul;
      UnsortedItemsForm.TB_Unsorted.Cells
        [1, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := '';
      UnsortedItemsForm.TB_Unsorted.Cells
        [2, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := item_name;
      UnsortedItemsForm.TB_Unsorted.Cells
        [3, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := '';
      UnsortedItemsForm.TB_Unsorted.Cells
        [4, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := price;
      UnsortedItemsForm.TB_Unsorted.Cells
        [5, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := tag;
      UnsortedItemsForm.TB_Unsorted.Cells
        [6, UnsortedItemsForm.TB_Unsorted.RowCount - 1] := barcode;
    end;
  end;
  ProgressForm.progressbar.StepIt;
  ProgressForm.lbl1.caption := 'Позиция ' +
    inttostr(ProgressForm.progressbar.Position) + ' из ' +
    inttostr(exlSupplier.TotalRecCount);
  Application.ProcessMessages;
end;

function TSysContainer.GetColName(col_id: Integer): string;
begin
  case col_id of
    1:
      Result := 'A';
    2:
      Result := 'B';
    3:
      Result := 'C';
    4:
      Result := 'D';
    5:
      Result := 'E';
    6:
      Result := 'F';
    7:
      Result := 'G';
    8:
      Result := 'H';
    9:
      Result := 'I';
    10:
      Result := 'J';
    11:
      Result := 'K';
    12:
      Result := 'L';
    13:
      Result := 'M';
    14:
      Result := 'N';
    15:
      Result := 'O';
    16:
      Result := 'P';
    17:
      Result := 'Q';
    18:
      Result := 'R';
    19:
      Result := 'S';
    20:
      Result := 'T';
    21:
      Result := 'U';
    22:
      Result := 'V';
    23:
      Result := 'X';
    24:
      Result := 'Y';
    25:
      Result := 'Z';
    26:
      Result := 'AA';
    27:
      Result := 'AB';
    28:
      Result := 'AC';
    29:
      Result := 'AD';
    30:
      Result := 'AE';
  else
    Result := '';
  end;
end;

procedure TSysContainer.exlSupplierAfterImport(Sender: TObject);
begin
  ProgressForm.Close;
  Data.DS_ImportPrice.Locate('ID', SysContainer.art_field, []);
  Data.DS_ImportPrice.Edit;
  Data.DS_ImportPrice.FBN('LAST_DATE').AsDateTime := now;
  Data.DS_ImportPrice.Post;
  Data.DS_Goods.Filter := temp_filter;
  Data.DS_Goods.Filtered := temp_filtered;
  Data.DS_Goods.EnableControls;
  Data.DS_Goods.ReopenLocate('ID');
  if UnsortedItemsForm.TB_Unsorted.RowCount > 1 then
  begin
    UnsortedItemsForm.TB_Unsorted.FixedRows := 1;
    MainForm.act_file_lastunsorted.Enabled := true;
    UnsortedItemsForm.Show;
    // в методе TUnsortedItemsForm.FormClose выполняется тоже что и в else тут
  end
  else
  begin
    Data.Database.Execute('EXECUTE PROCEDURE UPDATE_PRICES_FROM_SUPPLIERS');
    Data.DS_Goods.ReopenLocate('ID');
  end;
end;

procedure TSysContainer.exlSupplierBeforeImport(Sender: TObject);
begin
  temp_filter := Data.DS_Goods.Filter;
  temp_filtered := Data.DS_Goods.Filtered;
  Data.DS_Goods.Filter := '';
  Data.DS_Goods.Filtered := true;
  Data.DS_Goods.Filtered := false;
  Data.DS_Goods.Last;
  Data.DS_Goods.first;
  Data.DS_Goods.DisableControls;
  Application.ProcessMessages;
  if Data.DS_ImportPrice.FBN('BARCODE').IsNull then
    hasBarcode := false
  else
    hasBarcode := true;
  IMPORT_PERC := Data.DS_ImportPrice.FBN('PERC').AsFloat / 100;
  IMPORT_ARR_PERC := Data.DS_ImportPrice.FBN('ARRIVAL_PERCENT').AsFloat / 100;

  ProgressForm.progressbar.Min := 0;
  ProgressForm.progressbar.Max := exlSupplier.TotalRecCount;
  ProgressForm.progressbar.Max := exlSupplier.TotalRecCount;
  ProgressForm.caption := 'Обновление цен из внешнего прайса.';
  ProgressForm.lbl1.caption := 'Позиция 0 из ' +
    inttostr(exlSupplier.TotalRecCount);
  ProgressForm.progressbar.Position := 0;
  ProgressForm.progressbar.Step := 1;
  ProgressForm.Show;
end;

procedure TSysContainer.exlArrivalBeforeImport(Sender: TObject);
begin
  Data.DS_Arrival_N.Refresh;
  Data.DS_Arrival.Last;
  MainForm.progressbar.Position := 0;
  MainForm.progressbar.Max := exlArrival.TotalRecCount;
end;

procedure TSysContainer.exlArrivalUserDefinedImport(Sender: TObject;
  Row: TQImportRow);
var
  price: double;
  cnt: real;
  v: Variant;
  id: Integer;
begin
  v := Data.DS_Goods.Lookup
    ('ART_' + inttostr(ExternalPriceImportForm.edit_client.EditValue),
    Row[0].Value, 'ID');
  if not VarIsNull(v) then
    id := v
  else
    id := 38977;
  price := strtofloat(Row[1].Value);
  cnt := strtofloat(Row[2].Value);
  Data.DS_Arrival.Append;
  Data.DS_Arrival.fbn('GOOD_ID').AsInteger := id;
  Data.DS_Arrival.fbn('CNT').AsFloat := cnt;
  Data.DS_Arrival.fbn('PRICE').AsFloat := price;
  Data.DS_Arrival.Post;
  MainForm.progressbar.StepIt;
  Application.ProcessMessages;
end;

procedure TSysContainer.exlGoodsUserDefinedImport(Sender: TObject;
  Row: TQImportRow);
begin
  with Data.DS_Goods do
  begin
    Append;
    FieldValues['NAME'] := Row[0].Value;
    FieldValues['FULLNAME'] := Row[0].Value;
    FieldValues['ML'] := '-';
    FieldValues['STATE'] := 'Ж';
    FieldValues['TYPE_ID'] := 11;
    FieldValues['FIRM_ID'] := 64;
    FieldValues['PRICE1'] := 0;
    FieldValues['PRICE2'] := 0;
    FieldValues['PRICE_SHOP'] := 0;
    FieldValues['PRICE_SHOP2'] := 0;
    FieldValues['ART_1'] := Row[1].Value;
    FieldValues['PRICE_CATEGORY_ID'] := 1;
    Post;
  end;
end;

procedure TSysContainer.CennikReportGetValue(const ParName: String;
  var ParValue: Variant);
var
  prf: string;
begin

  if ParName = 'PRICE' then
  begin
    if (price_cennik_name = 'PRICE_SHOP') or (price_cennik_name = 'PRICE_SHOP2')
    then
      prf := ' грн.'
    else
      prf := ' грн.';
    ParValue := FloatToStrF(Data.DS_Goods.Lookup('ID',
      Data.DS_Moves.FieldByName('GOOD_ID').AsInteger, price_cennik_name),
      ffFixed, 20, 0) + prf;
  end;
  if price_cennik_name = 'PRICE1' then
    ParValue := FloatToStrF(0.75 * Data.DS_Goods.Lookup('ID',
      Data.DS_Moves.FieldByName('GOOD_ID').AsInteger, 'PRICE_SHOP'),
      ffFixed, 20, 0);
  if price_cennik_name = 'PRICE2' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Moves.FieldByName('GOOD_ID')
      .AsInteger, 'PRICE2');
  if price_cennik_name = 'PRICE_SHOP' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Moves.FieldByName('GOOD_ID')
      .AsInteger, 'PRICE_SHOP');
  if price_cennik_name = 'PRICE_SHOP2' then
    ParValue := Data.DS_Goods.Lookup('ID', Data.DS_Moves.FieldByName('GOOD_ID')
      .AsInteger, 'PRICE_SHOP2');
end;

procedure TSysContainer.DolgiReportBeginDoc(Sender: TObject);
begin
  first_row := true;
end;

procedure TSysContainer.DolgiReportGetValue(const ParName: String;
  var ParValue: Variant);
var
  d1, d2: string;
begin
  if AnsiCompareStr(ParName, 'DOC_DESC') = 0 then
    ParValue := MainForm.GetDocDescription(Query.DS_QueryDolgi.FBN('A_TYPE')
      .AsInteger);

  if AnsiCompareStr(ParName, 'BALANCE') = 0 then
    ParValue := MainForm.client_summ;

  if AnsiCompareStr(ParName, 'REST') = 0 then
  begin
    if first_row then
    begin
      pre_summ := Query.DS_QueryDolgi.FieldByName('SUMM_OUT').AsFloat +
        Query.DS_QueryDolgi.FieldByName('SUMM_IN').AsFloat;
      ParValue := pre_summ;
      first_row := false;
    end
    else
    begin
      ParValue := pre_summ + Query.DS_QueryDolgi.FieldByName('SUMM_OUT').AsFloat
        + Query.DS_QueryDolgi.FieldByName('SUMM_IN').AsFloat;
      pre_summ := ParValue;
    end;
  end;

  if AnsiCompareStr(ParName, 'DATE_RANGE') = 0 then
  begin
    d1 := '';
    d2 := '';
    if not VarIsNull(MainForm.edit_acc_datefrom.EditValue) then
      d1 := datetostr(MainForm.edit_acc_datefrom.EditValue);
    if not VarIsNull(MainForm.edit_acc_dateto.EditValue) then
      d2 := datetostr(MainForm.edit_acc_dateto.EditValue);
    if (d1 = '') and (d2 = '') then
      ParValue := 'Отчет по клиенту за весь период'
    else if d1 = '' then
      ParValue := 'Отчет по клиенту до ' + d2
    else if d2 = '' then
      ParValue := 'Отчет по клиенту с ' + d1 + ' до ' + datetostr(now)
    else
      ParValue := 'Отчет по клиенту с ' + d1 + ' до ' + d2;
  end;

  if AnsiCompareStr(ParName, 'CLIENT_ACC') = 0 then
    ParValue := Query.DS_QueryClients['PRINTNAME'];

end;

function TSysContainer.SupplPrice(good_id: Integer; suppl_nid: Integer): Real;
begin
  Data.DS_Goods.Locate('ID', good_id, []);
  if Data.DS_Goods.FBN('AVAILABLE_' + inttostr(suppl_nid)).AsInteger = 1 then
    Result := Data.DS_Goods.FBN('SUPL_PRICE_' + inttostr(suppl_nid)).AsFloat
  else
    Result := 999999;
end;

function TSysContainer.GetMinSupplierPrice: Real;
var
  spl: array [1 .. 7] of double;
  min_price: Real;
begin
  spl[1] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 1); // Дед
  spl[2] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 3);
  // Вова
  spl[3] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 6);
  // Днепр
  spl[4] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 9);
  // Парфекс
  spl[5] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 4);
  // Флакон
  spl[6] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 14);
  // Олег Косметика
  spl[7] := SupplPrice(Data.DS_Requirements.FBN('GOOD_ID').AsInteger, 8);
  // ВВ
  min_price := MinValue(spl);
  if min_price >= 999999 then
    Result := 0
  else
    Result := min_price;
end;

function TSysContainer.GetMinSupplierName: string;
var
  spl: array [1 .. 7] of double;
  min_place: Integer;
  I: Integer;
  min_price: Real;
  good_id: Integer;
begin
  good_id := Data.DS_Requirements.FBN('GOOD_ID').AsInteger;
  spl[1] := SupplPrice(good_id, 1); // Дед
  spl[2] := SupplPrice(good_id, 3); // Вова
  spl[3] := SupplPrice(good_id, 6); // Днепр
  spl[4] := SupplPrice(good_id, 9); // Парфекс
  spl[5] := SupplPrice(good_id, 4); // Флакон
  spl[6] := SupplPrice(good_id, 14); // Олег Косметика
  spl[7] := SupplPrice(good_id, 8); //ВВ

  min_price := MinValue(spl);

  if min_price >= 999999 then
    min_place := 0
  else
  begin
    min_place := 1;
    for I := 2 to 7 do
      if spl[I] < spl[min_place] then
        min_place := I;
  end;
  case min_place of
    0:
      Result := '----';
    1:
      Result := 'К';
    2:
      Result := 'В';
    3:
      Result := 'Д';
    4:
      Result := 'П';
    5:
      Result := 'Ф';
    6:
      Result := 'О';
    7:
      Result := 'ВВ';
  end;
end;

end.
