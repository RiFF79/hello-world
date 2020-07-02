object MoneyInGoodsForm: TMoneyInGoodsForm
  Left = 462
  Top = 430
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1044#1077#1085#1100#1075#1080' '#1074' '#1090#1086#1074#1072#1088#1077
  ClientHeight = 146
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 89
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089':'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 89
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089':'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 89
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1056#1086#1079#1085#1094#1072':'
  end
  object gen_price: TLabel
    Left = 104
    Top = 8
    Width = 31
    Height = 13
    Caption = '0.00$'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spec_price: TLabel
    Left = 104
    Top = 32
    Width = 31
    Height = 13
    Caption = '0.00$'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object shop_price: TLabel
    Left = 104
    Top = 56
    Width = 47
    Height = 13
    Caption = '0.00'#1075#1088#1085'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar: TProgressBar
    Left = 8
    Top = 80
    Width = 185
    Height = 17
    TabOrder = 0
  end
  object btn_Cancel: TButton
    Left = 62
    Top = 112
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = btn_CancelClick
  end
end
