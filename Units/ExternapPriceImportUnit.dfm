object ExternalPriceImportForm: TExternalPriceImportForm
  Left = 192
  Top = 116
  BorderStyle = bsDialog
  Caption = #1042#1085#1077#1096#1085#1080#1081' '#1087#1088#1072#1081#1089
  ClientHeight = 96
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
  end
  object cxButton1: TcxButton
    Left = 64
    Top = 61
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object cxButton2: TcxButton
    Left = 153
    Top = 61
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object edit_client: TcxLookupComboBox
    Left = 8
    Top = 26
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 13
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'SUPPL_NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = Data.S_ImportPrice
    TabOrder = 3
    Width = 220
  end
end
