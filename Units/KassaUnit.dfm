object KassaForm: TKassaForm
  Left = 385
  Top = 439
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderStyle = bsDialog
  Caption = #1055#1088#1080#1093#1086#1076' '#1076#1077#1085#1077#1075
  ClientHeight = 411
  ClientWidth = 379
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  GlassFrame.Left = 4
  GlassFrame.Top = 8
  GlassFrame.Right = 4
  GlassFrame.Bottom = 8
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxBevel1: TdxBevel
    Left = 17
    Top = 249
    Width = 345
    Height = 12
    Shape = dxbsLineCenteredVert
  end
  object dxBevel2: TdxBevel
    Left = 16
    Top = 296
    Width = 345
    Height = 5
    Shape = dxbsLineCenteredVert
  end
  object Label1: TLabel
    Left = 16
    Top = 240
    Width = 72
    Height = 13
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1076#1086#1083#1075
  end
  object Label2: TLabel
    Left = 191
    Top = 240
    Width = 98
    Height = 13
    Caption = #1044#1086#1083#1075' '#1087#1086#1089#1083#1077' '#1086#1087#1083#1072#1090#1099
  end
  object btn_MakeChanges: TcxButton
    Left = 16
    Top = 368
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 6
    OnClick = btn_MakeChangesClick
  end
  object btn_OK: TcxButton
    Left = 191
    Top = 368
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 7
  end
  object btn_Cancel: TcxButton
    Left = 286
    Top = 369
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 9
  end
  object check_in_use: TcxDBCheckBox
    Left = 16
    Top = 307
    Caption = #1053#1077' '#1074#1085#1086#1089#1080#1090#1100' '#1074' '#1082#1072#1089#1089#1091
    DataBinding.DataField = 'IN_USE'
    DataBinding.DataSource = Data.S_KASSA
    Properties.Alignment = taLeftJustify
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 0
    Properties.ValueUnchecked = 1
    TabOrder = 5
    Transparent = True
  end
  object label_Dolg: TcxLabel
    Left = 191
    Top = 259
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 31
    Width = 169
    AnchorX = 276
    AnchorY = 275
  end
  object check_cashout: TcxDBCheckBox
    Left = 16
    Top = 332
    Caption = #1048#1085#1082#1072#1089#1089#1072#1094#1080#1103
    DataBinding.DataField = 'CASHOUT'
    DataBinding.DataSource = Data.S_KASSA
    Properties.Alignment = taLeftJustify
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 1
    Properties.ValueUnchecked = 0
    TabOrder = 4
    Transparent = True
  end
  object edit_SUMM_USD: TcxDBCurrencyEdit
    Left = 16
    Top = 185
    DataBinding.DataField = 'SUMM_USD'
    DataBinding.DataSource = Data.S_KASSA
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.DecimalPlaces = 2
    Properties.DisplayFormat = '0.00#.##'
    Properties.OnChange = edit_SUMM_USDChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    OnKeyDown = edit_SUMM_USDKeyDown
    Width = 346
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 164
    Caption = #1042#1085#1086#1089#1080#1084#1072#1103' '#1089#1091#1084#1084#1072
    Transparent = True
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 114
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080':'
    Transparent = True
  end
  object cxLabel6: TcxLabel
    Left = 16
    Top = 64
    Caption = #1057#1091#1084#1084#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    Transparent = True
  end
  object cxLabel7: TcxLabel
    Left = 16
    Top = 14
    Caption = #1050#1083#1080#1077#1085#1090
    Transparent = True
  end
  object cxLabel8: TcxLabel
    Left = 191
    Top = 14
    Caption = #1044#1072#1090#1072
    Transparent = True
  end
  object edit_date: TcxDBDateEdit
    Left = 191
    Top = 37
    DataBinding.DataField = 'K_DATE'
    DataBinding.DataSource = Data.S_KASSA
    Properties.ImmediatePost = True
    Properties.OnCloseUp = cxDBDateEdit1PropertiesCloseUp
    TabOrder = 0
    Width = 170
  end
  object edit_NAKL_SUMM: TcxDBCurrencyEdit
    Left = 16
    Top = 87
    DataBinding.DataField = 'NAKL_SUMM'
    DataBinding.DataSource = Data.S_KASSA
    Properties.DisplayFormat = '0.00#.##'
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 170
  end
  object edit_comments: TcxDBComboBox
    Left = 16
    Top = 137
    DataBinding.DataField = 'COMMENTS'
    DataBinding.DataSource = Data.S_KASSA
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      #1052#1077#1083#1086#1095#1100' '#1076#1083#1103' '#1089#1076#1072#1095#1080
      #1054#1073#1084#1077#1085' '#1074#1072#1083#1102#1090
      #1057#1072#1096#1072' '#1079#1072#1073#1088#1072#1083
      #1057#1072#1096#1072' '#1087#1086#1083#1086#1078#1080#1083
      #1044#1080#1084#1072' '#1079#1072#1073#1088#1072#1083
      #1044#1080#1084#1072' '#1087#1086#1083#1086#1078#1080#1083)
    TabOrder = 2
    Width = 345
  end
  object edit_client: TcxDBImageComboBox
    Left = 16
    Top = 37
    DataBinding.DataField = 'CLIENT_ID'
    DataBinding.DataSource = Data.S_KASSA
    Properties.Images = SysContainer.SmallImages
    Properties.ImmediatePost = True
    Properties.Items = <>
    Properties.OnChange = edit_clientPropertiesChange
    Properties.OnCloseUp = edit_clientPropertiesCloseUp
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 15
    Width = 170
  end
  object cxLabel10: TcxLabel
    Left = 192
    Top = 64
    Caption = #1054#1087#1083#1072#1095#1077#1085#1086
    Transparent = True
  end
  object edit_paid: TcxCurrencyEdit
    Left = 192
    Top = 87
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '0.00#.##'
    Properties.ReadOnly = True
    Style.Color = clBtnFace
    TabOrder = 17
    Width = 169
  end
  object label_olddolg: TcxLabel
    Left = 16
    Top = 259
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 31
    Width = 169
    AnchorX = 101
    AnchorY = 275
  end
end
