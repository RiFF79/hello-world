object ExportToInternetForm: TExportToInternetForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1069#1082#1089#1087#1086#1088#1090' CSV'
  ClientHeight = 102
  ClientWidth = 242
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
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 145
    Height = 13
    Caption = #1050#1086#1084#1087#1077#1085#1089#1080#1088#1086#1074#1072#1090#1100' '#1089#1082#1080#1076#1082#1091' (%)'
  end
  object edit_prc: TcxSpinEdit
    Left = 171
    Top = 16
    Properties.AssignedValues.DisplayFormat = True
    Properties.AssignedValues.EditFormat = True
    Properties.ImmediatePost = True
    Properties.ValueType = vtFloat
    TabOrder = 0
    Width = 56
  end
  object cxButton1: TcxButton
    Left = 33
    Top = 56
    Width = 81
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object cxButton2: TcxButton
    Left = 120
    Top = 56
    Width = 81
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
