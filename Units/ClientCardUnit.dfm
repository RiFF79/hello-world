object ClientCardForm: TClientCardForm
  Left = 397
  Top = 326
  ActiveControl = edit_clientgroup
  BorderStyle = bsDialog
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 628
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 472
    Height = 585
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 471
    object edit_clientgroup: TcxDBImageComboBox
      Left = 219
      Top = 28
      DataBinding.DataField = 'C_TYPE'
      DataBinding.DataSource = Data.S_Customers
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <
        item
          Description = #1044#1083#1103' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103
          ImageIndex = 53
          Value = 0
        end
        item
          Description = #1054#1089#1085#1086#1074#1085#1086#1081' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1100
          ImageIndex = 54
          Value = 1
        end
        item
          Description = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
          ImageIndex = 55
          Value = 2
        end
        item
          Description = #1057#1074#1086#1080
          ImageIndex = 56
          Value = 3
        end
        item
          Description = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          ImageIndex = 27
          Value = 4
        end
        item
          Description = #1041#1086#1089#1089
          ImageIndex = 66
          Value = 5
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 229
    end
    object edit_name: TcxDBTextEdit
      Left = 219
      Top = 55
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = Data.S_Customers
      Properties.OnChange = cxDBTextEdit1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 229
    end
    object edit_printname: TcxDBTextEdit
      Left = 219
      Top = 82
      DataBinding.DataField = 'PRINTNAME'
      DataBinding.DataSource = Data.S_Customers
      Properties.OnChange = cxDBTextEdit2PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 229
    end
    object edit_price: TcxDBImageComboBox
      Left = 219
      Top = 109
      DataBinding.DataField = 'PRICETYPE'
      DataBinding.DataSource = Data.S_Customers
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <
        item
          Description = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
          ImageIndex = 58
          Value = 1
        end
        item
          Description = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
          ImageIndex = 58
          Value = 2
        end
        item
          Description = #1056#1086#1079#1085#1080#1094#1072' ('#1075#1086#1088#1086#1076')'
          ImageIndex = 57
          Value = 3
        end
        item
          Description = #1056#1086#1079#1085#1080#1094#1072' ('#1088#1099#1085#1086#1082')'
          ImageIndex = 57
          Value = 4
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 229
    end
    object edit_credit: TcxDBCurrencyEdit
      Left = 219
      Top = 181
      DataBinding.DataField = 'CREDIT'
      DataBinding.DataSource = Data.S_Customers
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 229
    end
    object edit_delay: TcxDBSpinEdit
      Left = 219
      Top = 208
      DataBinding.DataField = 'DELAY'
      DataBinding.DataSource = Data.S_Customers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 229
    end
    object edit_tel1: TcxDBTextEdit
      Left = 219
      Top = 278
      DataBinding.DataField = 'TEL1'
      DataBinding.DataSource = Data.S_Customers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 229
    end
    object edit_tel2: TcxDBTextEdit
      Left = 219
      Top = 305
      DataBinding.DataField = 'TEL2'
      DataBinding.DataSource = Data.S_Customers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 229
    end
    object edit_tel3: TcxDBTextEdit
      Left = 219
      Top = 332
      DataBinding.DataField = 'TEL3'
      DataBinding.DataSource = Data.S_Customers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 229
    end
    object edit_emailgroup: TcxDBImageComboBox
      Left = 219
      Top = 251
      DataBinding.DataField = 'EMAILGROUP'
      DataBinding.DataSource = Data.S_Customers
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <
        item
          Value = -1
        end
        item
          Description = #1054#1073#1099#1095#1085#1099#1081
          ImageIndex = 29
          Tag = 1
          Value = 1
        end
        item
          Description = #1057#1087#1077#1094'.'
          ImageIndex = 29
          Tag = 2
          Value = 2
        end
        item
          Description = #1057#1087#1077#1094'. -4%'
          ImageIndex = 29
          Tag = 3
          Value = 3
        end
        item
          Description = #1057#1087#1077#1094'. -5%'
          ImageIndex = 29
          Tag = 4
          Value = 4
        end
        item
          Description = #1050#1086#1089#1084#1077#1090#1080#1082#1072' '#1086#1073#1099#1095#1085#1099#1081
          ImageIndex = 29
          Tag = 5
          Value = 5
        end
        item
          Description = #1050#1086#1089#1084#1077#1090#1080#1082#1072' '#1089#1087#1077#1094'.'
          ImageIndex = 29
          Tag = 6
          Value = 6
        end
        item
          Description = #1050#1086#1089#1084#1077#1090#1080#1082#1072' '#1089#1087#1077#1094'. -5%'
          ImageIndex = 29
          Tag = 7
          Value = 7
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 229
    end
    object edit_emails: TcxDBMemo
      Left = 219
      Top = 359
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = Data.S_Customers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Height = 89
      Width = 229
    end
    object check_activeclients: TcxDBCheckBox
      Left = 219
      Top = 454
      AutoSize = False
      DataBinding.DataField = 'USED'
      DataBinding.DataSource = Data.S_Customers
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 229
    end
    object check_useindolg: TcxDBCheckBox
      Left = 219
      Top = 481
      AutoSize = False
      DataBinding.DataField = 'ACCOUNTING'
      DataBinding.DataSource = Data.S_Customers
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 229
    end
    object check_remind: TcxDBCheckBox
      Left = 219
      Top = 508
      AutoSize = False
      DataBinding.DataField = 'REMIND'
      DataBinding.DataSource = Data.S_Customers
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = True
      TabOrder = 15
      Height = 21
      Width = 229
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 219
      Top = 535
      AutoSize = False
      DataBinding.DataField = 'USE_EXT_PRICE'
      DataBinding.DataSource = Data.S_Customers
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = True
      TabOrder = 16
      Height = 21
      Width = 229
    end
    object edit_discount: TcxDBLookupComboBox
      Left = 219
      Top = 137
      DataBinding.DataField = 'DISCOUNT_ID'
      DataBinding.DataSource = Data.S_Customers
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Sorting = False
          FieldName = 'DESC'
        end
        item
          Caption = #1057#1082#1080#1076#1082#1072
          Fixed = True
          Sorting = False
          FieldName = 'DISCOUNT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = Data.S_Discounts
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 200
    end
    object but_Discounts: TcxButton
      Left = 425
      Top = 136
      Width = 23
      Height = 23
      OptionsImage.ImageIndex = 84
      TabOrder = 5
      OnClick = but_DiscountsClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1050#1083#1080#1077#1085#1090#1089#1082#1072#1103' '#1075#1088#1091#1087#1087#1072
      Control = edit_clientgroup
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 229
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1042#1085#1091#1090#1088#1077#1085#1085#1077#1077' '#1080#1084#1103
      Control = edit_name
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1055#1086#1083#1085#1086#1077' '#1080#1084#1103' ('#1076#1083#1103' '#1087#1077#1095#1072#1090#1080')'
      Control = edit_printname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1055#1088#1072#1081#1089
      Control = edit_price
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1050#1088#1077#1076#1080#1090
      Control = edit_credit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1054#1090#1089#1088#1086#1095#1082#1072' ('#1076#1085#1077#1081')'
      Control = edit_delay
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072' 1'
      Control = edit_tel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072' 2'
      Control = edit_tel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072' 3'
      Control = edit_tel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1043#1088#1091#1087#1087#1072' '#1076#1083#1103' '#1088#1072#1089#1089#1099#1083#1082#1080
      Control = edit_emailgroup
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
      Control = edit_emails
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 174
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1040#1082#1090#1080#1074#1085#1099#1081' '#1082#1083#1080#1077#1085#1090
      Control = check_activeclients
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1074' '#1086#1073#1097#1077#1084' '#1076#1086#1083#1075#1077
      Control = check_useindolg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = #1053#1072#1087#1086#1084#1080#1085#1072#1090#1100' '#1087#1088#1080' '#1079#1072#1082#1088#1099#1090#1080#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Control = check_remind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 16
    end
    object dxLayoutControl1SpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 5
    end
    object dxLayoutControl1SpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 8
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074#1085#1077#1096#1085#1080#1081' '#1087#1088#1072#1081#1089
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 229
      ControlOptions.ShowBorder = False
      Index = 17
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = #1057#1082#1080#1076#1082#1072
      Offsets.Top = 1
      Control = edit_discount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = but_Discounts
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
  end
  object btn_OK: TcxButton
    Left = 273
    Top = 591
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btn_Cancel: TcxButton
    Left = 373
    Top = 591
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
