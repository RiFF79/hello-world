object LimitDateForm: TLimitDateForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'LimitDateForm'
  ClientHeight = 207
  ClientWidth = 469
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
    Left = 24
    Top = 16
    Width = 148
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1077#1076#1077#1083#1100#1085#1091#1102' '#1076#1072#1090#1091' '
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 200
    Top = 40
    Width = 239
    Height = 52
    Caption = 
      #1044#1072#1085#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103' '#1076#1086#1073#1072#1074#1083#1103#1077#1090' '#1074' '#1087#1077#1088#1077#1093#1086#1076#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1074#1089#1077' '#1090#1086#1074#1072#1088#1099', '#1080#1084#1077#1102 +
      #1097#1080#1077#1089#1103' '#1085#1072' '#1089#1082#1083#1072#1076#1077' "'#1057#1086' '#1089#1082#1083#1072#1076#1072'", '#1082#1086#1090#1086#1088#1099#1077' '#1073#1099#1083#1080' '#1087#1077#1088#1077#1074#1077#1076#1077#1085#1099' '#1085#1072' '#1101#1090#1086#1090' '#1089#1082#1083 +
      #1072#1076' '#1076#1086' '#1087#1088#1077#1076#1077#1083#1100#1085#1086#1081' '#1076#1072#1090#1099
    WordWrap = True
  end
  object LimitDate: TcxDateNavigator
    Left = 24
    Top = 40
    Width = 170
    Height = 139
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 0
  end
  object btn_OK: TcxButton
    Left = 280
    Top = 154
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btn_Cancel: TcxButton
    Left = 366
    Top = 154
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object check_cosm: TCheckBox
    Left = 200
    Top = 104
    Width = 137
    Height = 17
    Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1082#1086#1089#1084#1077#1090#1080#1082#1091
    TabOrder = 3
  end
end
