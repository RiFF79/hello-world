object CalculateSalesForm: TCalculateSalesForm
  Left = 364
  Top = 268
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1072#1083#1086#1074#1099#1081' '#1076#1086#1093#1086#1076' '#1079#1072' '#1087#1077#1088#1080#1086#1076
  ClientHeight = 200
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 24
    Top = 139
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object edit_customer: TcxLookupComboBox
    Left = 24
    Top = 153
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = Query.S_QueryClientsList
    TabOrder = 1
    Width = 167
  end
  object cxButton1: TcxButton
    Left = 237
    Top = 152
    Width = 178
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    Default = True
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object edit_date_from: TcxDateEdit
    Left = 24
    Top = 70
    EditValue = 0d
    TabOrder = 3
    Width = 187
  end
  object edit_date_to: TcxDateEdit
    Left = 24
    Top = 112
    EditValue = 0d
    TabOrder = 4
    Width = 187
  end
  object cxLabel2: TcxLabel
    Left = 26
    Top = 55
    Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
  end
  object cxLabel3: TcxLabel
    Left = 26
    Top = 97
    Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
  end
  object cxLabel4: TcxLabel
    Left = 237
    Top = 71
    Caption = #1056#1072#1089#1093#1086#1076':'
  end
  object cxLabel5: TcxLabel
    Left = 237
    Top = 94
    Caption = #1055#1088#1080#1093#1086#1076':'
  end
  object cxLabel6: TcxLabel
    Left = 237
    Top = 117
    Caption = #1044#1086#1093#1086#1076':'
  end
  object l_rashod: TcxLabel
    Left = 287
    Top = 71
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object l_prihod: TcxLabel
    Left = 287
    Top = 94
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object l_dohod: TcxLabel
    Left = 287
    Top = 117
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton2: TcxButton
    Left = 24
    Top = 24
    Width = 60
    Height = 25
    Caption = #1044#1077#1085#1100
    TabOrder = 13
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 90
    Top = 24
    Width = 60
    Height = 25
    Caption = #1053#1077#1076#1077#1083#1103
    TabOrder = 14
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 156
    Top = 24
    Width = 60
    Height = 25
    Caption = #1052#1077#1089#1103#1094
    TabOrder = 15
    OnClick = cxButton4Click
  end
  object cxButton5: TcxButton
    Left = 222
    Top = 24
    Width = 60
    Height = 25
    Caption = '2 '#1084#1077#1089#1103#1094#1072
    TabOrder = 16
    OnClick = cxButton5Click
  end
  object cxButton6: TcxButton
    Left = 288
    Top = 24
    Width = 60
    Height = 25
    Caption = #1055#1086#1083#1075#1086#1076#1072
    TabOrder = 17
    OnClick = cxButton6Click
  end
  object cxButton7: TcxButton
    Left = 355
    Top = 24
    Width = 60
    Height = 25
    Caption = #1043#1086#1076
    TabOrder = 18
    OnClick = cxButton7Click
  end
  object cxButton8: TcxButton
    Left = 190
    Top = 154
    Width = 21
    Height = 21
    Hint = #1042#1089#1077' '#1082#1083#1080#1077#1085#1090#1099
    OptionsImage.ImageIndex = 59
    OptionsImage.Images = SysContainer.SmallImages
    TabOrder = 19
    OnClick = cxButton8Click
  end
  object btn_PrevDay: TcxButton
    Left = 178
    Top = 91
    Width = 16
    Height = 20
    Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
    Caption = '<'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    OnClick = btn_PrevDayClick
  end
  object btn_NextDay: TcxButton
    Left = 195
    Top = 91
    Width = 16
    Height = 20
    Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
    Caption = '>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = btn_NextDayClick
  end
end
