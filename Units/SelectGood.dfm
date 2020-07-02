object SelectGoodForm: TSelectGoodForm
  Left = 240
  Top = 233
  BorderIcons = [biSystemMenu]
  Caption = #1042#1099#1073#1086#1088' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 502
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_Space: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 49
    Align = alTop
    Alignment = taRightJustify
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 90
      Height = 13
      Caption = #1041#1099#1089#1090#1088#1099#1081' '#1092#1080#1083#1100#1090#1088':'
    end
    object Label2: TLabel
      Left = 344
      Top = 5
      Width = 47
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1086':'
    end
    object SelectFilter: TDBLookupComboboxEh
      Left = 344
      Top = 22
      Width = 217
      Height = 19
      AlwaysShowBorder = True
      DynProps = <>
      DataField = ''
      DropDownBox.Columns = <
        item
          FieldName = 'NAME'
        end>
      DropDownBox.Rows = 15
      EditButton.Width = 16
      EditButtons = <
        item
          ShortCut = 0
          Style = ebsEllipsisEh
          Width = 16
          OnClick = SelectFilterEditButtons0Click
        end>
      Flat = True
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = Data.S_Filters
      TabOrder = 0
      Visible = True
      OnChange = SelectFilterChange
      OnCloseUp = SelectFilterCloseUp
      OnDropDownBoxGetCellParams = SelectFilterDropDownBoxGetCellParams
    end
    object GoodsEdit: TDBEditEh
      Left = 8
      Top = 22
      Width = 329
      Height = 19
      DynProps = <>
      EditButtons = <>
      Flat = True
      TabOrder = 1
      Visible = True
      OnChange = GoodsEditChange
      OnKeyDown = GoodsEditKeyDown
    end
    object check_firstletters: TCheckBox
      Left = 568
      Top = 22
      Width = 169
      Height = 17
      Caption = #1048#1089#1082#1072#1090#1100' '#1087#1086' '#1087#1077#1088#1074#1099#1084' '#1073#1091#1082#1074#1072#1084
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = check_firstlettersClick
    end
  end
  object TB_GoodsSelect: TDBGridEh
    Left = 0
    Top = 49
    Width = 904
    Height = 453
    Align = alClient
    AutoFitColWidths = True
    DataSource = Query.S_Select
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    IndicatorOptions = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    OnCellClick = TB_GoodsSelectCellClick
    OnDblClick = TB_GoodsSelectDblClick
    OnKeyDown = TB_GoodsSelectKeyDown
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FULLNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 232
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C1'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C2'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C3'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C4'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C5'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C6'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C7'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C8'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C9'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C10'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C11'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C12'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C13'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C14'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C15'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C16'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C17'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C18'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C19'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C20'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        OnGetCellParams = TB_GoodsSelectColumnsGetCellParams
      end
      item
        CellButtons = <>
        Color = clMenuBar
        DisplayFormat = '0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'C0'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1041#1088#1072#1082
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVAILABLE_SUPPL'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 16
        OnGetCellParams = TB_GoodsSelectColumns22GetCellParams
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
