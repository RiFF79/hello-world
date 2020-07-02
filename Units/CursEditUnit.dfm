object CursForm: TCursForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072
  ClientHeight = 105
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 54
    Width = 74
    Height = 13
    Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072':'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 30
    Height = 13
    Caption = #1044#1072#1090#1072':'
  end
  object edit_curs: TcxDBCurrencyEdit
    Left = 7
    Top = 73
    DataBinding.DataField = 'CURS'
    DataBinding.DataSource = Data.S_Curs
    TabOrder = 0
    Width = 113
  end
  object okBtn: TcxButton
    Left = 144
    Top = 25
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object cancelBtn: TcxButton
    Left = 144
    Top = 71
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 8
    Top = 27
    DataBinding.DataField = 'DATE'
    DataBinding.DataSource = Data.S_Curs
    TabOrder = 3
    Width = 113
  end
end
