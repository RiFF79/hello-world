object PriceImportForm: TPriceImportForm
  Left = 187
  Top = 144
  BorderStyle = bsDialog
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082' / '#1082#1083#1080#1077#1085#1090
  ClientHeight = 418
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 8
    Width = 235
    Height = 26
    Alignment = taCenter
    Caption = 
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072' '#1080#1083#1080' '#1082#1083#1080#1077#1085#1090#1072' '#1076#1083#1103' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1085#1077#1086#1073#1093#1086#1076#1080#1084 +
      #1086' '#1086#1073#1085#1086#1074#1080#1090#1100' '#1094#1077#1085#1099'.'
    FocusControl = TB_ImportPrices
    WordWrap = True
  end
  object TB_ImportPrices: TDBGridEh
    Left = 8
    Top = 40
    Width = 401
    Height = 338
    AllowedOperations = []
    AutoFitColWidths = True
    DataSource = Data.S_ImportPrice
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    OnDblClick = TB_ImportPricesDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPL_NAME'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082' / '#1050#1083#1080#1077#1085#1090
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LAST_DATE'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 200
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object btn_Cancel: TButton
    Left = 336
    Top = 384
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object btn_OK: TButton
    Left = 248
    Top = 384
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object check_ClearData: TCheckBox
    Left = 8
    Top = 388
    Width = 217
    Height = 17
    Caption = #1054#1095#1080#1097#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1077#1088#1077#1076' '#1080#1084#1087#1086#1088#1090#1086#1084
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
end
