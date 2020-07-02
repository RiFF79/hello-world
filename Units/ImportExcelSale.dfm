object ImportExcelSaleForm: TImportExcelSaleForm
  Left = 330
  Top = 240
  BorderStyle = bsDialog
  Caption = #1048#1084#1087#1086#1088#1090' Microsoft Excel'
  ClientHeight = 329
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 59
    Height = 13
    Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090':'
  end
  object Label4: TLabel
    Left = 280
    Top = 272
    Width = 28
    Height = 13
    Caption = #1042#1099#1096#1077
  end
  object Label5: TLabel
    Left = 280
    Top = 294
    Width = 27
    Height = 13
    Caption = #1053#1080#1078#1077
  end
  object btn_ok: TcxButton
    Left = 248
    Top = 32
    Width = 98
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object btn_cancel: TcxButton
    Left = 248
    Top = 72
    Width = 98
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object price_selector: TcxRadioGroup
    Left = 248
    Top = 112
    Caption = #1062#1077#1085#1099
    Properties.Items = <
      item
        Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      end
      item
        Caption = #1047#1072#1082#1072#1079
      end>
    ItemIndex = 0
    TabOrder = 2
    Height = 65
    Width = 97
  end
  object TB_SaleImportDepots: TDBGridEh
    Left = 16
    Top = 35
    Width = 217
    Height = 276
    AllowedOperations = [alopUpdateEh]
    AllowedSelections = []
    AutoFitColWidths = True
    DataSource = Data.S_SaleImportDepots
    DynProps = <>
    EditActions = [geaCopyEh]
    IndicatorOptions = []
    Options = [dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghRecordMoving, dghExtendVertLines]
    SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
    TabOrder = 3
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SALE_IMPORT_USE'
        Footers = <>
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        ReadOnly = True
        Width = 180
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UpDown: TSpinButton
    Left = 248
    Top = 270
    Width = 25
    Height = 41
    DownGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    TabOrder = 4
    UpGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000080
      8000008080000080800000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000000000000000000000000000080
      8000008080000080800000808000008080000080800000808000000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    OnDownClick = UpDownDownClick
    OnUpClick = UpDownUpClick
  end
end
