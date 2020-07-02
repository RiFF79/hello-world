object RetCustForm: TRetCustForm
  Left = 274
  Top = 146
  Caption = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
  ClientHeight = 623
  ClientWidth = 1048
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TB_RetCust: TDBGridEh
    Left = 273
    Top = 31
    Width = 775
    Height = 592
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data.S_Return_Cust
    DynProps = <>
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    FooterParams.Color = clBtnFace
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = []
    OddRowColor = 15921906
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghColumnResize, dghColumnMove]
    SumList.Active = True
    TabOrder = 0
    OnDblClick = TB_RetCustDblClick
    OnKeyDown = TB_RetCustKeyDown
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        CellButtons = <>
        DropDownRows = 0
        DynProps = <>
        EditButton.Style = ebsEllipsisEh
        EditButton.Visible = True
        EditButton.OnClick = TB_RetCustColumns0EditButtonClick
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 411
        OnEditButtonClick = TB_RetCustColumns0EditButtonClick
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
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 80
        OnUpdateData = TB_RetCustColumns2UpdateData
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Width = 80
        OnUpdateData = TB_RetCustColumns3UpdateData
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '#.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUMM'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1057#1091#1084#1084#1072
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 273
    Height = 592
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object SummLayout: TdxLayoutControl
      Left = 1
      Top = 432
      Width = 271
      Height = 159
      Align = alBottom
      TabOrder = 0
      OptionsImage.Images = SysContainer.SmallImages
      object cxDBLabel1: TcxDBLabel
        Left = 121
        Top = 126
        AutoSize = True
        DataBinding.DataField = 'SUMM'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Style.HotTrack = False
        Style.TextColor = clHotLight
        Style.TextStyle = [fsBold]
      end
      object cxDBLabel3: TcxDBLabel
        Left = 121
        Top = 22
        AutoSize = True
        DataBinding.DataField = 'USERNAME'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Style.HotTrack = False
      end
      object cxDBLabel4: TcxDBLabel
        Left = 121
        Top = 45
        AutoSize = True
        DataBinding.DataField = 'R_DATE'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Style.HotTrack = False
      end
      object cxDBLabel5: TcxDBLabel
        Left = 121
        Top = 68
        AutoSize = True
        DataBinding.DataField = 'EUSERNAME'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Style.HotTrack = False
      end
      object cxDBLabel6: TcxDBLabel
        Left = 121
        Top = 91
        AutoSize = True
        DataBinding.DataField = 'CHANGED'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Style.HotTrack = False
      end
      object SummLayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 6
        ShowBorder = False
        Index = -1
      end
      object SummLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 0
      end
      object l_sum: TdxLayoutItem
        Parent = SummLayoutGroup1
        AlignVert = avClient
        CaptionOptions.ImageIndex = 33
        CaptionOptions.Text = #1057#1091#1084#1084#1072':'
        Control = cxDBLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 69
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object SummLayoutItem3: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1057#1086#1079#1076#1072#1083':'
        Control = cxDBLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object SummLayoutItem4: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
        Control = cxDBLabel4
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object SummLayoutItem5: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1048#1079#1084#1077#1085#1080#1083':'
        Control = cxDBLabel5
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object SummLayoutItem6: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103':'
        Control = cxDBLabel6
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object SummLayoutSeparatorItem2: TdxLayoutSeparatorItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 5
      end
      object SummLayoutGroup1: TdxLayoutGroup
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 6
      end
    end
    object FilterLayout: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 271
      Height = 431
      Align = alClient
      TabOrder = 1
      OptionsImage.Images = SysContainer.SmallImages
      object edit_client: TcxDBImageComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'CUST_ID'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Properties.Images = SysContainer.SmallImages
        Properties.ImmediatePost = True
        Properties.Items = <>
        Properties.OnCloseUp = clientCloseUp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 251
      end
      object edit_depot: TcxDBLookupComboBox
        Left = 10
        Top = 73
        DataBinding.DataField = 'DEPOT_ID'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = Query.S_Depots
        Properties.OnCloseUp = controlExit
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Width = 251
      end
      object edit_comments: TcxDBTextEdit
        Left = 10
        Top = 118
        AutoSize = False
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = Data.S_Return_Cust_N
        Properties.Alignment.Vert = taTopJustify
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        OnExit = controlExit
        OnKeyDown = edit_commentsKeyDown
        Height = 90
        Width = 251
      end
      object FilterLayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object FilterLayoutItem1: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1050#1083#1080#1077#1085#1090
        CaptionOptions.Layout = clTop
        Control = edit_client
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object FilterLayoutItem2: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1057#1082#1083#1072#1076
        CaptionOptions.Layout = clTop
        Control = edit_depot
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object FilterLayoutItem4: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        CaptionOptions.Layout = clTop
        Control = edit_comments
        ControlOptions.OriginalHeight = 90
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
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
      'Default'
      'pm_RetCust_NewPrice')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = SysContainer.SmallImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 240
    Top = 240
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
      FloatLeft = 941
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_history'
        end
        item
          Visible = True
          ItemName = 'btn_itemcard'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_colprint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exportexcel'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 43
          Visible = True
          ItemName = 'edit_percent'
        end
        item
          Visible = True
          ItemName = 'btn_recalc'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_colprint: TdxBarButton
      Action = MainForm.act_rc_preview
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = MainForm.act_arr_print
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = MainForm.act_arr_preview
      Category = 0
    end
    object btn_itemcard: TdxBarButton
      Action = MainForm.act_rc_itemcard
      Category = 0
    end
    object btn_history: TdxBarButton
      Action = MainForm.act_rc_history
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = MainForm.act_arr_return
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = MainForm.act_arr_execute
      Category = 0
    end
    object btn_exportexcel: TdxBarButton
      Action = MainForm.act_rc_exportexcel
      Category = 0
    end
    object btn_importexcel: TdxBarButton
      Action = MainForm.act_arr_importexcel
      Category = 0
    end
    object dxBarSpinEdit1: TdxBarSpinEdit
      Category = 0
      Hint = #1055#1088#1086#1094#1077#1085#1090#1099
      Visible = ivAlways
      ValueType = svtFloat
      Prefix = '%'
    end
    object btn_recalc: TdxBarButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Category = 0
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Visible = ivAlways
      ImageIndex = 61
    end
    object N1: TdxBarButton
      Caption = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
      Category = 0
      Visible = ivAlways
      ImageIndex = 58
    end
    object N2: TdxBarButton
      Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
      Category = 0
      Visible = ivAlways
      ImageIndex = 58
    end
    object N3: TdxBarButton
      Caption = #1052#1072#1075#1072#1079#1080#1085' ('#1075#1086#1088#1086#1076')'
      Category = 0
      Hint = #1052#1072#1075#1072#1079#1080#1085' ('#1075#1086#1088#1086#1076')'
      Visible = ivAlways
      ImageIndex = 57
    end
    object N4: TdxBarButton
      Caption = #1052#1072#1075#1072#1079#1080#1085' ('#1073#1072#1079#1072#1088')'
      Category = 0
      Hint = #1052#1072#1075#1072#1079#1080#1085' ('#1073#1072#1079#1072#1088')'
      Visible = ivAlways
      ImageIndex = 57
    end
    object btn_price: TdxBarButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Category = 0
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pm_RetCust_NewPrice
      ImageIndex = 33
    end
    object dxBarButton5: TdxBarButton
      Action = MainForm.act_rc_execute
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = MainForm.act_rc_return
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = MainForm.act_rc_print
      Category = 0
    end
    object edit_percent: TdxBarSpinEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Prefix = '%'
    end
    object m_specprice: TdxBarButton
      Action = MainForm.act_rc_price_spec
      Category = 1
    end
    object m_genprice: TdxBarButton
      Action = MainForm.act_rc_price_general
      Category = 1
    end
    object m_shop: TdxBarButton
      Action = MainForm.act_rc_price_shop1
      Category = 1
    end
    object m_shop2: TdxBarButton
      Action = MainForm.act_rc_price_shop2
      Category = 1
    end
    object m_LastPrices: TdxBarButton
      Action = MainForm.act_rc_price_last
      Category = 1
    end
  end
  object pm_RetCust_NewPrice: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'm_specprice'
      end
      item
        Visible = True
        ItemName = 'm_genprice'
      end
      item
        Visible = True
        ItemName = 'm_shop'
      end
      item
        Visible = True
        ItemName = 'm_shop2'
      end
      item
        Visible = True
        ItemName = 'm_LastPrices'
      end>
    UseOwnFont = False
    Left = 240
    Top = 192
    PixelsPerInch = 96
  end
end
