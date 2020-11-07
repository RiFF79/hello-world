object ProductionForm: TProductionForm
  Left = 0
  Top = 0
  Caption = 'ProductionForm'
  ClientHeight = 664
  ClientWidth = 1197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_info: TPanel
    Left = 0
    Top = 31
    Width = 257
    Height = 633
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 0
    object LayoutControl: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 255
      Height = 487
      Align = alClient
      TabOrder = 0
      OptionsImage.Images = SysContainer.SmallImages
      object edit_depot: TcxDBLookupComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'DEPOT_ID'
        DataBinding.DataSource = Data.S_Production_N
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = Query.S_Depots
        Properties.OnCloseUp = edit_depotExit
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        OnExit = edit_depotExit
        Width = 235
      end
      object edit_comments: TcxDBTextEdit
        Left = 10
        Top = 73
        AutoSize = False
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = Data.S_Production_N
        Properties.Alignment.Vert = taTopJustify
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        OnExit = edit_commentsExit
        OnKeyDown = edit_commentsKeyDown
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
      object LayoutControlItem3: TdxLayoutItem
        Parent = LayoutControlGroup_Root
        CaptionOptions.Text = #1057#1082#1083#1072#1076
        CaptionOptions.Layout = clTop
        Control = edit_depot
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 235
        ControlOptions.ShowBorder = False
        Index = 0
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
        Index = 1
      end
    end
    object SummLayout: TdxLayoutControl
      Left = 1
      Top = 488
      Width = 255
      Height = 144
      Align = alBottom
      TabOrder = 1
      AutoSize = True
      OptionsImage.Images = SysContainer.SmallImages
      object cxDBLabel1: TcxDBLabel
        Left = 128
        Top = 45
        AutoSize = True
        DataBinding.DataField = 'USERNAME'
        DataBinding.DataSource = Data.S_Production_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel3: TcxDBLabel
        Left = 128
        Top = 68
        AutoSize = True
        DataBinding.DataField = 'P_DATE'
        DataBinding.DataSource = Data.S_Production_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel2: TcxDBLabel
        Left = 128
        Top = 91
        AutoSize = True
        DataBinding.DataField = 'EUSERNAME'
        DataBinding.DataSource = Data.S_Production_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel4: TcxDBLabel
        Left = 128
        Top = 114
        AutoSize = True
        DataBinding.DataField = 'CHANGED'
        DataBinding.DataSource = Data.S_Production_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel6: TcxDBLabel
        Left = 128
        Top = 22
        AutoSize = True
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = Data.S_Production_N
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
        Index = 6
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
  object panel_tables: TPanel
    Left = 257
    Top = 31
    Width = 940
    Height = 633
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object panel_production: TPanel
      Left = 0
      Top = 0
      Width = 940
      Height = 305
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object TB_Production: TDBGridEh
        Left = 0
        Top = 31
        Width = 940
        Height = 274
        Align = alClient
        AutoFitColWidths = True
        Constraints.MinWidth = 466
        DataSource = Data.S_Production
        DynProps = <>
        Flat = True
        FooterParams.Color = clBtnFace
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = clWindow
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghColumnResize]
        SumList.Active = True
        TabOrder = 0
        OnDblClick = TB_ProductionDblClick
        OnKeyDown = TB_ProductionKeyDown
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DropDownRows = 0
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 400
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
            Width = 100
          end
          item
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089
            Width = 80
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object bar_production_control: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 940
        Height = 31
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object panel_specification: TPanel
      Left = 0
      Top = 310
      Width = 940
      Height = 323
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object TB_Specification: TDBGridEh
        Left = 0
        Top = 31
        Width = 940
        Height = 292
        Align = alClient
        AutoFitColWidths = True
        Constraints.MinWidth = 466
        DataSource = Data.S_Production_SP
        DynProps = <>
        Flat = True
        FooterParams.Color = clBtnFace
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = clWindow
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghColumnResize]
        SumList.Active = True
        TabOrder = 0
        OnCellClick = TB_SpecificationCellClick
        OnColExit = TB_SpecificationColExit
        OnDblClick = TB_SpecificationDblClick
        OnKeyDown = TB_SpecificationKeyDown
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DropDownRows = 0
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 400
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
            Width = 100
          end
          item
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1083#1072#1076
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object bar_specification_control: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 940
        Height = 31
        Align = dalTop
        BarManager = dxBarManager1
      end
      object DepotPanel: TPanel
        Left = 600
        Top = 224
        Width = 113
        Height = 81
        Caption = 'DepotPanel'
        TabOrder = 2
        Visible = False
        object TB_Depots: TDBGridEh
          Left = 1
          Top = 1
          Width = 111
          Height = 79
          Align = alClient
          AllowedOperations = []
          AllowedSelections = [gstRecordBookmarks]
          AutoFitColWidths = True
          Color = clBtnFace
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
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 305
      Width = 940
      Height = 5
      AlignSplitter = salTop
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
    Left = 32
    Top = 296
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
          ItemName = 'btn_preview'
        end
        item
          Visible = True
          ItemName = 'btn_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exportexcel'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object ProductionBar: TdxBar
      Caption = 'ProductionBar'
      CaptionButtons = <>
      DockControl = bar_production_control
      DockedDockControl = bar_production_control
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1225
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
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
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object SpecificationBar: TdxBar
      Caption = 'SpecificationBar'
      CaptionButtons = <>
      DockControl = bar_specification_control
      DockedDockControl = bar_specification_control
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1225
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_spec_history'
        end
        item
          Visible = True
          ItemName = 'btn_spec_item_card'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_spec_clear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_spec_load_defaults'
        end
        item
          Visible = True
          ItemName = 'btn_spec_set_defaults'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_colprint: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1076#1083#1103' '#1087#1088#1080#1077#1084#1072' '#1090#1086#1074#1072#1088#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1076#1083#1103' '#1087#1088#1080#1077#1084#1072' '#1090#1086#1074#1072#1088#1072
      Visible = ivAlways
      ImageIndex = 7
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Visible = ivAlways
      ImageIndex = 5
    end
    object btn_preview: TdxBarButton
      Action = MainForm.act_prod_preview
      Category = 0
    end
    object btn_itemcard: TdxBarButton
      Action = MainForm.act_prod_item_card
      Category = 0
    end
    object btn_history: TdxBarButton
      Action = MainForm.act_prod_item_history
      Category = 0
    end
    object btn_return: TdxBarButton
      Action = MainForm.act_prod_return
      Category = 0
    end
    object btn_execute: TdxBarButton
      Action = MainForm.act_prod_execute
      Category = 0
    end
    object btn_exportexcel: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' Microsoft Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' Microsoft Excel'
      Visible = ivAlways
      ImageIndex = 69
    end
    object btn_importexcel: TdxBarButton
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' Microsoft Excel'
      Category = 0
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' Microsoft Excel'
      Visible = ivAlways
      ImageIndex = 20
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
      ImageIndex = 33
    end
    object edit_percent: TcxBarEditItem
      Caption = #1055#1088#1086#1094#1077#1085#1090
      Category = 0
      Hint = #1055#1088#1086#1094#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 61
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
    end
    object dxBarButton1: TdxBarButton
      Action = MainForm.act_prod_clear_nakl
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
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1074' '#1087#1088#1072#1081#1089#1077' '#1087#1086' '#1101#1090#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Category = 0
      Visible = ivAlways
      ImageIndex = 64
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
    end
    object btn_prod_history: TdxBarButton
      Action = MainForm.act_prod_item_history
      Category = 0
    end
    object btn_prod_sp_execute: TdxBarButton
      Caption = 'btn_prod_sp_execute'
      Category = 0
      Hint = 'btn_prod_sp_execute'
      Visible = ivAlways
    end
    object btn_prod_sp_return: TdxBarButton
      Caption = 'btn_prod_sp_return'
      Category = 0
      Hint = 'btn_prod_sp_return'
      Visible = ivAlways
    end
    object btn_spec_clear: TdxBarButton
      Action = MainForm.act_prod_spec_clear_nakl
      Category = 0
    end
    object btn_spec_load_defaults: TdxBarButton
      Action = MainForm.act_prod_spec_load_defaults
      Category = 0
    end
    object btn_spec_set_defaults: TdxBarButton
      Action = MainForm.act_prod_spec_save_defaults
      Category = 0
    end
    object btn_spec_item_card: TdxBarButton
      Action = MainForm.act_prod_spec_item_card
      Category = 0
    end
    object btn_spec_history: TdxBarButton
      Action = MainForm.act_prod_spec_item_history
      Category = 0
    end
  end
end
