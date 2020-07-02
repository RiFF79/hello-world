object MoneyInDepotsForm: TMoneyInDepotsForm
  Left = 185
  Top = 272
  BorderStyle = bsDialog
  Caption = #1044#1077#1085#1100#1075#1080' '#1074' '#1090#1086#1074#1072#1088#1077
  ClientHeight = 432
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TB_Depots: TDBGridEh
    Left = 8
    Top = 112
    Width = 553
    Height = 310
    AllowedOperations = []
    AutoFitColWidths = True
    DataSource = Query.S_Depots
    DynProps = <>
    EditActions = [geaSelectAllEh]
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    IndicatorOptions = []
    OddRowColor = clBtnFace
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    VertScrollBar.VisibleMode = sbNeverShowEh
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Width = 140
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1072#1081#1089' 1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        OnGetCellParams = TB_DepotsColumnsGetCellParams
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1072#1081#1089' 2'
        Width = 100
        OnGetCellParams = TB_DepotsColumnsGetCellParams
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1072#1081#1089' 3'
        Width = 100
        OnGetCellParams = TB_DepotsColumnsGetCellParams
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1072#1081#1089' 4'
        Width = 100
        OnGetCellParams = TB_DepotsColumnsGetCellParams
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 553
    Height = 97
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 183
      Top = 8
      Width = 204
      Height = 13
      Caption = #1042#1089#1077#1075#1086' '#1090#1086#1074#1072#1088#1072' '#1085#1072' '#1074#1089#1077#1093' '#1089#1082#1083#1072#1076#1072#1093' '#1085#1072' '#1089#1091#1084#1084#1091':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 24
      Width = 120
      Height = 13
      AutoSize = False
      Caption = #1055#1088#1072#1081#1089' 1:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object label_spec: TLabel
      Left = 279
      Top = 24
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 183
      Top = 56
      Width = 120
      Height = 13
      AutoSize = False
      Caption = #1055#1088#1072#1081#1089' 3:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 183
      Top = 72
      Width = 120
      Height = 13
      AutoSize = False
      Caption = #1055#1088#1072#1081#1089' 4:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 183
      Top = 40
      Width = 120
      Height = 13
      AutoSize = False
      Caption = #1055#1088#1072#1081#1089' 2:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object label_general: TLabel
      Left = 279
      Top = 40
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object label_shop1: TLabel
      Left = 279
      Top = 56
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object label_shop2: TLabel
      Left = 279
      Top = 72
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
