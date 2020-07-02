unit OptionsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxPC, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBGridEh, DBCtrlsEh, Vcl.Mask, DBLookupEh, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxScrollBox, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxSpinEdit, db,
  dxSkinsCore, dxSkinDarkSide, dxSkinscxPCPainter, dxSkinSilver,
  dxBarBuiltInMenu, cxClasses, dxSkinDevExpressStyle;

type
  TOptionsForm = class(TForm)
    aaa: TcxPageControl;
    P_Defaults: TcxTabSheet;
    P_Colors: TcxTabSheet;
    P_Reports: TcxTabSheet;
    P_Reports_excel: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    edit_ArrivalReport: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edit_SaleReport: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edit_SaleReportSbor: TcxButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    edit_MovesReport: TcxButtonEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edit_RetSupplReport: TcxButtonEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    edit_RetCustReport: TcxButtonEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edit_PriceReport: TcxButtonEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    edit_SpecPriceReport: TcxButtonEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edit_RetPriceReport: TcxButtonEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    edit_CountOnDepot_Report: TcxButtonEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    edit_SaleBillsReport: TcxButtonEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    edit_KassaReport: TcxButtonEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    edit_DolgiReport: TcxButtonEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    edit_ExcelArrivalTemplate: TcxButtonEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    edit_ExcelSaleTemplate: TcxButtonEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    edit_ExcelMovesTemplate: TcxButtonEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    edit_ExcelRetSupplTemplate: TcxButtonEdit;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item5: TdxLayoutItem;
    edit_ExcelPriceTemplate: TcxButtonEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    edit_ExcelSpecPriceTemplate: TcxButtonEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    edit_ExcelRetPriceTemplate: TcxButtonEdit;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item8: TdxLayoutItem;
    edit_AccountingTemplate: TcxButtonEdit;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    ec_arrival: TShape;
    dxLayoutControl4Item2: TdxLayoutItem;
    ec_sale: TShape;
    dxLayoutControl4Item3: TdxLayoutItem;
    ec_move: TShape;
    dxLayoutControl4Item4: TdxLayoutItem;
    ec_return_cust: TShape;
    dxLayoutControl4Item5: TdxLayoutItem;
    ec_return_suppl: TShape;
    dxLayoutControl4Item6: TdxLayoutItem;
    ec_dolg: TShape;
    dxLayoutControl4Item7: TdxLayoutItem;
    ec_kassa: TShape;
    dxLayoutControl4Item8: TdxLayoutItem;
    ec_Encashment: TShape;
    dxLayoutControl4Item9: TdxLayoutItem;
    ec_Minus: TShape;
    dxLayoutControl4Group1: TdxLayoutGroup;
    edit_ArrivalCheckReport: TcxButtonEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    edit_Cenniki: TcxButtonEdit;
    cap_edit_Cenniki: TdxLayoutItem;
    ec_production: TShape;
    dxLayoutItem2: TdxLayoutItem;
    ec_specification: TShape;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edit_ExcelProductionTemplate: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    edit_ProductionReport: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    procedure ColorPickMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ReportSelectButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ReportExcelButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OptionsForm: TOptionsForm;

implementation

{$R *.dfm}

uses DataConteiner, SystemContainerUnit, MainUnit;

procedure TOptionsForm.ColorPickMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    SysContainer.ColorDialog.Color := (Sender as TShape).Brush.Color;
    if SysContainer.ColorDialog.Execute then
      (Sender as TShape).Brush.Color := SysContainer.ColorDialog.Color;
  end;
end;

procedure TOptionsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data.DS_Defaults.State = dsEdit then
    Data.DS_Defaults.Post;
end;

procedure TOptionsForm.ReportExcelButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if SysContainer.SelectTemplate.Execute then
    (Sender as TcxButtonEdit).Text := SysContainer.SelectTemplate.FileName;
end;

procedure TOptionsForm.ReportSelectButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if SysContainer.SelectReport.Execute then
    (Sender as TcxButtonEdit).Text := SysContainer.SelectReport.FileName;
end;

end.
