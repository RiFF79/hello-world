object ArrivalForm: TArrivalForm
  Left = 558
  Top = 198
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  ClientHeight = 712
  ClientWidth = 1110
  Color = clBtnFace
  Constraints.MinHeight = 228
  Constraints.MinWidth = 739
  DefaultMonitor = dmPrimary
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TB_Arrival: TDBGridEh
    Left = 257
    Top = 31
    Width = 853
    Height = 681
    Align = alClient
    AutoFitColWidths = True
    Constraints.MinWidth = 466
    DataSource = Data.S_Arrival
    DynProps = <>
    Flat = True
    FooterParams.Color = clBtnFace
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = []
    OddRowColor = 15921906
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghColumnResize, dghColumnMove]
    SumList.Active = True
    TabOrder = 0
    OnDblClick = TB_ArrivalDblClick
    OnGetCellParams = TB_ArrivalGetCellParams
    OnKeyDown = TB_ArrivalKeyDown
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        CellButtons = <>
        DropDownRows = 0
        DynProps = <>
        EditButton.Style = ebsEllipsisEh
        EditButton.Visible = True
        EditButton.OnClick = TB_ArrivalColumns0EditButtonClick
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 411
        OnEditButtonClick = TB_ArrivalColumns0EditButtonClick
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
        OnGetCellParams = TB_ArrivalColumns5GetCellParams
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '#.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRC'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 40
        OnGetCellParams = TB_ArrivalColumns4GetCellParams
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 257
    Height = 681
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 1
    object LayoutControl: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 255
      Height = 503
      Align = alClient
      TabOrder = 0
      OptionsImage.Images = SysContainer.SmallImages
      object edit_client: TcxDBImageComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'CUST_ID'
        DataBinding.DataSource = Data.S_Arrival_N
        Properties.Images = SysContainer.SmallImages
        Properties.ImmediatePost = True
        Properties.Items = <>
        Properties.OnCloseUp = ArrivalEditExit
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 235
      end
      object edit_depot: TcxDBLookupComboBox
        Left = 10
        Top = 73
        DataBinding.DataField = 'DEPOT_ID'
        DataBinding.DataSource = Data.S_Arrival_N
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = Query.S_Depots
        Properties.OnCloseUp = ArrivalEditExit
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        OnExit = ArrivalEditExit
        Width = 235
      end
      object edit_comments: TcxDBTextEdit
        Left = 10
        Top = 118
        AutoSize = False
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = Data.S_Arrival_N
        Properties.Alignment.Vert = taTopJustify
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        OnExit = ArrivalEditExit
        OnKeyDown = edit_CommentsKeyDown
        Height = 118
        Width = 235
      end
      object LayoutControlGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object LayoutControlItem1: TdxLayoutItem
        Parent = LayoutControlGroup_Root
        CaptionOptions.Text = #1050#1083#1080#1077#1085#1090
        CaptionOptions.Layout = clTop
        Control = edit_client
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 235
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LayoutControlItem3: TdxLayoutItem
        Parent = LayoutControlGroup_Root
        CaptionOptions.Text = #1057#1082#1083#1072#1076
        CaptionOptions.Layout = clTop
        Control = edit_depot
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 235
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LayoutControlItem5: TdxLayoutItem
        Parent = LayoutControlGroup_Root
        AlignVert = avTop
        CaptionOptions.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        CaptionOptions.Layout = clTop
        Control = edit_comments
        ControlOptions.OriginalHeight = 118
        ControlOptions.OriginalWidth = 235
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
    object SummLayout: TdxLayoutControl
      Left = 1
      Top = 504
      Width = 255
      Height = 176
      Align = alBottom
      TabOrder = 1
      AutoSize = True
      OptionsImage.Images = SysContainer.SmallImages
      object label_sum: TcxDBLabel
        Left = 128
        Top = 149
        AutoSize = True
        DataBinding.DataField = 'SUMM'
        DataBinding.DataSource = Data.S_Arrival_N
        Style.HotTrack = False
        Style.TextColor = clHotLight
        Style.TextStyle = [fsBold]
      end
      object cxDBLabel1: TcxDBLabel
        Left = 128
        Top = 45
        AutoSize = True
        DataBinding.DataField = 'USERNAME'
        DataBinding.DataSource = Data.S_Arrival_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel3: TcxDBLabel
        Left = 128
        Top = 68
        AutoSize = True
        DataBinding.DataField = 'A_DATE'
        DataBinding.DataSource = Data.S_Arrival_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel2: TcxDBLabel
        Left = 128
        Top = 91
        AutoSize = True
        DataBinding.DataField = 'EUSERNAME'
        DataBinding.DataSource = Data.S_Arrival_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel4: TcxDBLabel
        Left = 128
        Top = 114
        AutoSize = True
        DataBinding.DataField = 'CHANGED'
        DataBinding.DataSource = Data.S_Arrival_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel6: TcxDBLabel
        Left = 128
        Top = 22
        AutoSize = True
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = Data.S_Arrival_N
        Style.HotTrack = False
      end
      object SummLayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object l_sum: TdxLayoutItem
        Parent = SummLayoutGroup1
        CaptionOptions.ImageIndex = 33
        CaptionOptions.Text = #1057#1091#1084#1084#1072':'
        Control = label_sum
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object SummLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 6
      end
      object SummLayoutItem1: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1057#1086#1079#1076#1072#1083':'
        Control = cxDBLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object SummLayoutItem2: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
        Control = cxDBLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object SummLayoutItem3: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1048#1079#1084#1077#1085#1080#1083':'
        Control = cxDBLabel2
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object SummLayoutItem4: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103':'
        Control = cxDBLabel4
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object SummLayoutSeparatorItem2: TdxLayoutSeparatorItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 0
      end
      object SummLayoutGroup1: TdxLayoutGroup
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 7
      end
      object SummLayoutItem5: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 36
        CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081':'
        Control = cxDBLabel6
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 1
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
    Left = 272
    Top = 392
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      31
      0)
    object rib_bar_arrival: TdxBar
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
      FloatLeft = 366
      FloatTop = 147
      FloatClientWidth = 51
      FloatClientHeight = 211
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_execute'
        end
        item
          Visible = True
          ItemName = 'btn_return'
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
          ItemName = 'btn_preview'
        end
        item
          Visible = True
          ItemName = 'btn_print'
        end
        item
          Visible = True
          ItemName = 'btn_colprint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exportexcel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'check_Colours'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_colprint: TdxBarButton
      Action = MainForm.act_arr_colprint
      Category = 0
    end
    object btn_print: TdxBarButton
      Action = MainForm.act_arr_print
      Category = 0
    end
    object btn_preview: TdxBarButton
      Action = MainForm.act_arr_preview
      Category = 0
    end
    object btn_itemcard: TdxBarButton
      Action = MainForm.act_arr_itemcard
      Category = 0
    end
    object btn_history: TdxBarButton
      Action = MainForm.act_arr_history
      Category = 0
    end
    object btn_return: TdxBarButton
      Action = MainForm.act_arr_return
      Category = 0
    end
    object btn_execute: TdxBarButton
      Action = MainForm.act_arr_execute
      Category = 0
    end
    object btn_exportexcel: TdxBarButton
      Action = MainForm.act_arr_exportexcel
      Category = 0
    end
    object btn_importexcel: TdxBarButton
      Action = MainForm.act_arr_importexcel
      Category = 0
    end
    object N1: TdxBarButton
      Action = MainForm.act_arr_price_spec
      Category = 0
    end
    object N2: TdxBarButton
      Action = MainForm.act_arr_price_general
      Category = 0
    end
    object N3: TdxBarButton
      Action = MainForm.act_arr_price_shop1
      Category = 0
    end
    object N4: TdxBarButton
      Action = MainForm.act_arr_price_shop2
      Category = 0
    end
    object btn_price: TdxBarButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Category = 0
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popup_price
      ImageIndex = 33
      OnClick = btn_priceClick
    end
    object edit_percent: TcxBarEditItem
      Caption = #1055#1088#1086#1094#1077#1085#1090
      Category = 0
      Hint = #1055#1088#1086#1094#1077#1085#1090
      Visible = ivAlways
      OnKeyDown = edit_percentKeyDown
      ImageIndex = 61
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
    end
    object dxBarButton1: TdxBarButton
      Action = MainForm.act_arr_clear_nakl
      Category = 0
    end
    object btn_special1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 
        #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1087#1086#1079#1080#1094#1080#1080' '#1082#1086#1090#1086#1088#1099#1093' '#1085#1077#1090' '#1074' '#1085#1072#1083#1080#1095#1080#1080', '#1085#1086' '#1077#1089#1090#1100' '#1074' '#1050#1080 +
        #1077#1074#1077
      Visible = ivAlways
      ImageIndex = 93
    end
    object dxBarButton2: TdxBarButton
      Action = MainForm.act_arr_reprice
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object check_Colours: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 78
      OnClick = check_ColoursClick
    end
  end
  object popup_price: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N2'
      end
      item
        Visible = True
        ItemName = 'N1'
      end
      item
        Visible = True
        ItemName = 'N3'
      end
      item
        Visible = True
        ItemName = 'N4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'edit_percent'
      end>
    UseOwnFont = False
    Left = 272
    Top = 328
    PixelsPerInch = 96
  end
end
