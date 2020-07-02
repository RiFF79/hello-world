object SupplReportForm: TSupplReportForm
  Left = 288
  Top = 150
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 90
  ClientWidth = 180
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
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = #1050#1083#1080#1077#1085#1090':'
  end
  object Button1: TButton
    Left = 8
    Top = 56
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 96
    Top = 56
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object edit_ClientName: TComboBox
    Left = 8
    Top = 24
    Width = 161
    Height = 21
    TabOrder = 2
    Text = 'edit_ClientName'
  end
end
