object PricePercentForm: TPricePercentForm
  Left = 220
  Top = 144
  BorderStyle = bsDialog
  ClientHeight = 162
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 26
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072' '#1086#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089':'
  end
  object Label2: TLabel
    Left = 24
    Top = 74
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072' '#1089#1087#1077#1094'. '#1087#1088#1072#1081#1089':'
  end
  object edit_generalprice: TDBNumberEditEh
    Left = 200
    Top = 24
    Width = 137
    Height = 19
    DataField = 'PRICE1_DISCOUNT'
    DataSource = Data.S_Defaults
    DynProps = <>
    EditButtons = <>
    Flat = True
    TabOrder = 0
    Visible = True
    OnKeyDown = edit_generalpriceKeyDown
  end
  object edit_specprice: TDBNumberEditEh
    Left = 200
    Top = 72
    Width = 137
    Height = 19
    DataField = 'PRICE2_DISCOUNT'
    DataSource = Data.S_Defaults
    DynProps = <>
    EditButtons = <>
    Flat = True
    TabOrder = 1
    Visible = True
    OnKeyDown = edit_specpriceKeyDown
  end
  object btn_OK: TBitBtn
    Left = 91
    Top = 114
    Width = 86
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 2
  end
  object btn_Cancel: TBitBtn
    Left = 195
    Top = 114
    Width = 86
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
end
