object IncassationForm: TIncassationForm
  Left = 136
  Top = 217
  Caption = #1048#1085#1082#1072#1089#1089#1072#1094#1080#1103
  ClientHeight = 200
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 81
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080':'
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 71
    Height = 13
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080':'
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 90
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1074' '#1076#1086#1083#1083#1072#1088#1077':'
  end
  object Label8: TLabel
    Left = 192
    Top = 96
    Width = 82
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1074' '#1075#1088#1080#1074#1085#1077':'
  end
  object edit_date: TDBDateTimeEditEh
    Left = 16
    Top = 32
    Width = 163
    Height = 19
    DataField = 'K_DATE'
    DataSource = Data.S_KASSA
    DynProps = <>
    EditButtons = <>
    Flat = True
    Kind = dtkDateTimeEh
    TabOrder = 0
    Visible = True
  end
  object edit_SUMM_USD: TDBNumberEditEh
    Left = 16
    Top = 112
    Width = 169
    Height = 31
    Alignment = taCenter
    currency = False
    DataField = 'SUMM_USD'
    DataSource = Data.S_KASSA
    DynProps = <>
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Flat = True
    ParentFont = False
    TabOrder = 1
    Visible = True
  end
  object btn_OK: TButton
    Left = 192
    Top = 160
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
  end
  object btn_Cancel: TButton
    Left = 280
    Top = 160
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object edit_SUMM_UA: TDBNumberEditEh
    Left = 192
    Top = 112
    Width = 169
    Height = 31
    Alignment = taCenter
    currency = False
    DataField = 'SUMM_UA'
    DataSource = Data.S_KASSA
    DynProps = <>
    EditButton.Hint = #1042#1089#1103' '#1089#1091#1084#1084#1072
    EditButton.ShortCut = 0
    EditButton.Style = ebsGlyphEh
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Flat = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Visible = True
  end
  object edit_comments: TDBComboBoxEh
    Left = 16
    Top = 72
    Width = 345
    Height = 19
    DataField = 'COMMENTS'
    DataSource = Data.S_KASSA
    DynProps = <>
    EditButtons = <>
    Flat = True
    Items.Strings = (
      #1052#1077#1083#1086#1095#1100' '#1076#1083#1103' '#1089#1076#1072#1095#1080
      #1054#1073#1084#1077#1085' '#1074#1072#1083#1102#1090
      #1057#1072#1096#1072' '#1079#1072#1073#1088#1072#1083
      #1057#1072#1096#1072' '#1087#1086#1083#1086#1078#1080#1083
      #1044#1080#1084#1072' '#1079#1072#1073#1088#1072#1083
      #1044#1080#1084#1072' '#1087#1086#1083#1086#1078#1080#1083)
    TabOrder = 5
    Visible = True
  end
  object btn_MakeChanges: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 6
  end
end
