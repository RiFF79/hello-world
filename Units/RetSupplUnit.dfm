object RetSupplForm: TRetSupplForm
  Left = 338
  Top = 284
  Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
  ClientHeight = 644
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TB_RetSuppl: TDBGridEh
    Left = 273
    Top = 31
    Width = 819
    Height = 613
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data.S_Return_Suppl
    DynProps = <>
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    FooterParams.Color = clBtnFace
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = []
    OddRowColor = 15921906
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghColumnResize, dghColumnMove]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    OnCellClick = TB_RetSupplCellClick
    OnDblClick = TB_RetSupplDblClick
    OnKeyDown = TB_RetSupplKeyDown
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        CellButtons = <>
        DropDownRows = 0
        DynProps = <>
        EditButton.Style = ebsEllipsisEh
        EditButton.Visible = True
        EditButton.OnClick = TB_RetSupplColumns0EditButtonClick
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 411
        OnEditButtonClick = TB_RetSupplColumns0EditButtonClick
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UNIT'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Width = 60
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '0.###'
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 80
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '0.00##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Width = 80
      end
      item
        AutoDropDown = True
        AutoFitColWidth = False
        CellButtons = <>
        DropDownBox.AutoFitColWidths = False
        DropDownBox.Columns = <
          item
            AutoFitColWidth = False
            FieldName = 'NAME'
            Width = 100
          end>
        DropDownBox.ListSource = Query.S_Depots
        DropDownRows = 8
        DropDownWidth = 116
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEPOT'
        Footers = <>
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Width = 60
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUMM'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1057#1091#1084#1084#1072
        Width = 80
      end
      item
        CellButtons = <>
        DisplayFormat = '0.###'
        DynProps = <>
        EditButtons = <>
        FieldName = 'TOTAL_WEIGHT'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1042#1077#1089
        Width = 80
        OnGetCellParams = TB_RetSupplColumns6GetCellParams
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DepotPanel: TPanel
    Left = 376
    Top = 224
    Width = 113
    Height = 137
    Caption = 'DepotPanel'
    TabOrder = 1
    Visible = False
    object TB_Depots: TDBGridEh
      Left = 1
      Top = 1
      Width = 111
      Height = 135
      Align = alClient
      AllowedOperations = []
      AllowedSelections = [gstRecordBookmarks]
      AutoFitColWidths = True
      DataSource = Query.S_Depots
      DynProps = <>
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      FooterParams.Color = clWindow
      HorzScrollBar.VisibleMode = sbNeverShowEh
      IndicatorOptions = []
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
      ParentFont = False
      TabOrder = 0
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnCellClick = TB_DepotsCellClick
      OnExit = TB_DepotsExit
      OnKeyDown = TB_DepotsKeyDown
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 273
    Height = 613
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object control_layout: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 271
      Height = 455
      Align = alClient
      TabOrder = 0
      OptionsImage.Images = SysContainer.SmallImages
      object edit_client: TcxDBImageComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'CUST_ID'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Properties.Images = SysContainer.SmallImages
        Properties.ImmediatePost = True
        Properties.Items = <>
        Properties.OnCloseUp = edit_clientPropertiesCloseUp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 251
      end
      object edit_comments: TcxDBTextEdit
        Left = 10
        Top = 73
        AutoSize = False
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Properties.Alignment.Vert = taTopJustify
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        OnExit = RetSupplEditExit
        OnKeyDown = edit_commentsKeyDown
        Height = 90
        Width = 251
      end
      object control_layoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object l_client: TdxLayoutItem
        Parent = control_layoutGroup_Root
        CaptionOptions.Text = #1050#1083#1080#1077#1085#1090
        CaptionOptions.Layout = clTop
        Control = edit_client
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 251
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object l_comments: TdxLayoutItem
        Parent = control_layoutGroup_Root
        CaptionOptions.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        CaptionOptions.Layout = clTop
        Control = edit_comments
        ControlOptions.OriginalHeight = 90
        ControlOptions.OriginalWidth = 251
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
    object summ_layout: TdxLayoutControl
      Left = 1
      Top = 456
      Width = 271
      Height = 156
      Align = alBottom
      TabOrder = 1
      OptionsImage.Images = SysContainer.SmallImages
      object cxDBLabel1: TcxDBLabel
        Left = 121
        Top = 22
        AutoSize = True
        DataBinding.DataField = 'USERNAME'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Style.HotTrack = False
      end
      object cxDBLabel2: TcxDBLabel
        Left = 121
        Top = 45
        AutoSize = True
        DataBinding.DataField = 'R_DATE'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Style.HotTrack = False
      end
      object cxDBLabel3: TcxDBLabel
        Left = 121
        Top = 68
        AutoSize = True
        DataBinding.DataField = 'EUSERNAME'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Style.HotTrack = False
      end
      object cxDBLabel4: TcxDBLabel
        Left = 121
        Top = 91
        AutoSize = True
        DataBinding.DataField = 'CHANGED'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Style.HotTrack = False
      end
      object cxDBLabel5: TcxDBLabel
        Left = 121
        Top = 126
        AutoSize = True
        DataBinding.DataField = 'SUMM'
        DataBinding.DataSource = Data.S_Return_Suppl_N
        Style.HotTrack = False
        Style.TextColor = clHotLight
        Style.TextStyle = [fsBold]
      end
      object summ_layoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object summ_layoutItem1: TdxLayoutItem
        Parent = summ_layoutGroup2
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1057#1086#1079#1076#1072#1083':'
        Control = cxDBLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object summ_layoutItem2: TdxLayoutItem
        Parent = summ_layoutGroup2
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
        Control = cxDBLabel2
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object summ_layoutItem3: TdxLayoutItem
        Parent = summ_layoutGroup2
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1048#1079#1084#1077#1085#1080#1083':'
        Control = cxDBLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object summ_layoutItem4: TdxLayoutItem
        Parent = summ_layoutGroup2
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103':'
        Control = cxDBLabel4
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object l_sum: TdxLayoutItem
        Parent = summ_layoutGroup3
        CaptionOptions.ImageIndex = 33
        CaptionOptions.Text = #1057#1091#1084#1084#1072':'
        Control = cxDBLabel5
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 69
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object summ_layoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = summ_layoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 2
      end
      object summ_layoutGroup1: TdxLayoutGroup
        Parent = summ_layoutGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 3
      end
      object summ_layoutGroup2: TdxLayoutGroup
        Parent = summ_layoutGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 1
      end
      object summ_layoutSeparatorItem2: TdxLayoutSeparatorItem
        Parent = summ_layoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 0
      end
      object summ_layoutGroup3: TdxLayoutGroup
        Parent = summ_layoutGroup1
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = SysContainer.SmallImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 312
    Top = 544
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      31
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 828
      FloatTop = 153
      FloatClientWidth = 51
      FloatClientHeight = 138
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarButton2: TdxBarButton
      Action = MainForm.act_sale_colprint
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = MainForm.act_rs_print
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = MainForm.act_rs_preview
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = MainForm.act_rs_itemcard
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = MainForm.act_rs_history
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = MainForm.act_rs_return
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = MainForm.act_rs_execute
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 19
    end
    object dxBarButton10: TdxBarButton
      Action = MainForm.act_rs_exportexcel
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = MainForm.act_sale_pay
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Enabled = False
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton13: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton14: TdxBarButton
      Action = MainForm.act_sale_import
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = MainForm.act_sale_export
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton16: TdxBarButton
      Action = MainForm.act_sale_excelimport
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = MainForm.act_rs_lastprices
      Category = 0
    end
  end
end
