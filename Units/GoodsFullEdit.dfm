object GoodsFullEditForm: TGoodsFullEditForm
  Left = 192
  Top = 116
  Caption = #1058#1072#1073#1083#1080#1094#1072' "Goods"'
  ClientHeight = 529
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 732
    Height = 464
    Align = alClient
    DataSource = Data.S_Goods
    DynProps = <>
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = DBGridEh1KeyDown
    Columns = <
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FULLNAME'
        Footers = <>
        Title.Alignment = taCenter
        Width = 272
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WEIGHT'
        Footers = <>
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SET_DESCRIPTION'
        Footers = <>
        Width = 200
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ML'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TYPE_ID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FIRM_ID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATE'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_SHOP'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_SHOP_LAST'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_SHOP2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_SHOP2_LAST'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE1_LAST'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE2_LAST'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_LAST_ARRIVAL'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_ADDED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_CHANGED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_ARRIVED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LAST_SUPPLIER_ID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P21'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P22'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P23'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P24'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P25'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P26'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P27'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P28'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P29'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P30'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P31'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P32'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P33'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P34'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P35'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P36'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P37'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P38'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P39'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P40'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SELECTED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DELETED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C0'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CB20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNT_ALL'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_SALED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ALL_SALED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ALL_ARRIVED'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LAST_ARRIVAL_CURR_ID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNT_BAZAR'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNT_LAST_ARRIVAL'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ART_20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPL_PRICE_20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_3'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_4'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_5'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_6'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_7'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_8'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_9'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_10'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_11'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_12'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_13'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_14'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_15'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_16'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_17'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_18'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_19'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_DATE_20'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_CATEGORY_ID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 58
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 472
      Top = 8
      Width = 25
      Height = 13
      Caption = #1055#1086#1083#1077
    end
    object Label2: TLabel
      Left = 600
      Top = 8
      Width = 48
      Height = 13
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Caption = #1060#1080#1083#1100#1090#1088
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object ComboEdit1: TcxButtonEdit
      Left = 8
      Top = 24
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      TabOrder = 1
      Text = 'ComboEdit1'
      OnKeyDown = ComboEdit1KeyDown
      Width = 449
    end
    object edit_field: TcxTextEdit
      Left = 472
      Top = 24
      TabOrder = 2
      Text = 'edit_field'
      Width = 121
    end
    object edit_value: TcxTextEdit
      Left = 600
      Top = 24
      TabOrder = 3
      Text = 'edit_field'
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 736
      Top = 20
      Width = 75
      Height = 25
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 4
      OnClick = cxButton1Click
    end
  end
end
