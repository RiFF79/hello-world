object DebtReasonSelectForm: TDebtReasonSelectForm
  Left = 290
  Top = 158
  BorderStyle = bsDialog
  Caption = 'Mosquito'
  ClientHeight = 99
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 132
    Height = 13
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1076#1086#1083#1075#1072':'
  end
  object CommentsEdit: TcxTextEdit
    Left = 16
    Top = 35
    TabOrder = 0
    Text = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1079#1072#1082#1088#1099#1090#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
    Width = 251
  end
  object cxButton1: TcxButton
    Left = 104
    Top = 62
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object cxButton2: TcxButton
    Left = 192
    Top = 62
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
