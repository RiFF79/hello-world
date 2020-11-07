object SaleForm: TSaleForm
  Left = 180
  Top = 295
  Caption = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  ClientHeight = 683
  ClientWidth = 1091
  Color = clBtnFace
  Constraints.MinHeight = 236
  Constraints.MinWidth = 684
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
  object panel_Tables: TPanel
    Left = 281
    Top = 31
    Width = 810
    Height = 652
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 568
      Top = 312
      Width = 260
      Height = 13
      Caption = '  '#1055#1086' '#1076#1072#1085#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1087#1086#1082#1072' '#1085#1077#1090' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TB_Sale: TDBGridEh
      Left = 1
      Top = 1
      Width = 808
      Height = 650
      Align = alClient
      AutoFitColWidths = True
      Ctl3D = True
      DataSource = Data.S_Sale
      DynProps = <>
      EditActions = [geaCopyEh, geaSelectAllEh]
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clBtnFace
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      IndicatorOptions = []
      OddRowColor = clWindow
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
      OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDblClickOptimizeColWidth, dghColumnResize, dghHotTrack]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      RowHeight = 2
      RowLines = 1
      SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
      ShowHint = False
      TabOrder = 0
      TitleParams.Images = SysContainer.SmallImages
      TitleParams.RowLines = 1
      OnCellClick = TB_SaleCellClick
      OnColExit = TB_SaleColExit
      OnDblClick = TB_SaleDblClick
      OnKeyDown = TB_SaleKeyDown
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
          TextEditing = False
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 351
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
          OnGetCellParams = TB_SaleColumns2GetCellParams
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00##'
          DropDownRows = 8
          DynProps = <>
          EditButtons = <>
          FieldName = 'SUM_REAL'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1057#1091#1084#1084#1072
          Width = 80
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          ButtonStyle = cbsNone
          CellButtons = <>
          Checkboxes = False
          DropDownBox.ColumnDefValues.EndEllipsis = True
          DropDownWidth = 120
          DynProps = <>
          EditButton.Visible = False
          EditButtons = <>
          FieldName = 'DEPOT'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1057#1082#1083#1072#1076
          Width = 103
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DepotPanel: TPanel
      Left = 376
      Top = 216
      Width = 113
      Height = 81
      Caption = 'DepotPanel'
      TabOrder = 1
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
  object panel_Layouts: TPanel
    Left = 0
    Top = 31
    Width = 281
    Height = 652
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object FilterLayout: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 279
      Height = 422
      Align = alClient
      TabOrder = 0
      OptionsImage.Images = SysContainer.SmallImages
      object edit_client: TcxDBImageComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'CUST_ID'
        DataBinding.DataSource = Data.S_Sale_N
        Properties.Images = SysContainer.SmallImages
        Properties.ImmediatePost = True
        Properties.Items = <>
        Properties.OnCloseUp = edit_clientPropertiesCloseUp
        Properties.OnEditValueChanged = edit_clientPropertiesEditValueChanged
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        OnKeyDown = edit_clientKeyDown
        Width = 259
      end
      object combo_price: TcxDBImageComboBox
        Left = 10
        Top = 73
        DataBinding.DataField = 'PRICE_TYPE'
        DataBinding.DataSource = Data.S_Sale_N
        Properties.Images = SysContainer.SmallImages
        Properties.Items = <
          item
            Description = #1055#1088#1072#1081#1089' 1'
            ImageIndex = 101
            Value = 1
          end
          item
            Description = #1055#1088#1072#1081#1089' 2'
            ImageIndex = 101
            Tag = 1
            Value = 2
          end
          item
            Description = #1055#1088#1072#1081#1089' 3'
            ImageIndex = 101
            Tag = 2
            Value = 3
          end
          item
            Description = #1055#1088#1072#1081#1089' 4'
            ImageIndex = 101
            Tag = 3
            Value = 4
          end>
        Properties.OnCloseUp = combo_pricePropertiesCloseUp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Width = 135
      end
      object cxButton1: TcxButton
        Left = 249
        Top = 73
        Width = 20
        Height = 20
        Action = MainForm.act_sale_update_prices
        OptionsImage.Images = SysContainer.SmallImages
        PaintStyle = bpsGlyph
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
      end
      object edit_comments: TcxDBTextEdit
        Left = 10
        Top = 118
        AutoSize = False
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = Data.S_Sale_N
        Properties.Alignment.Vert = taTopJustify
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        OnExit = edit_commentsExit
        OnKeyDown = edit_commentsKeyDown
        Height = 94
        Width = 259
      end
      object edit_procent: TcxDBSpinEdit
        Left = 151
        Top = 73
        DataBinding.DataField = 'DISCOUNT'
        DataBinding.DataSource = Data.S_Sale_N
        Properties.DisplayFormat = '0.00%'
        Properties.ImmediatePost = True
        Properties.ValueType = vtFloat
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 2
        OnExit = edit_procentExit
        OnKeyDown = edit_procentKeyDown
        Width = 66
      end
      object cxButton2: TcxButton
        Left = 223
        Top = 73
        Width = 20
        Height = 20
        Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1073#1077#1079' '#1091#1095#1077#1090#1072' '#1090#1080#1087#1072' '#1090#1086#1074#1072#1088#1086#1074
        OptionsImage.ImageIndex = 61
        OptionsImage.Images = SysContainer.SmallImages
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = cxButton2Click
      end
      object FilterLayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object FilterLayoutItem1: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1050#1083#1080#1077#1085#1090
        CaptionOptions.Layout = clTop
        Control = edit_client
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 243
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object FilterLayoutItem2: TdxLayoutItem
        Parent = FilterLayoutGroup2
        CaptionOptions.Text = #1055#1088#1072#1081#1089
        CaptionOptions.Layout = clTop
        Control = combo_price
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 135
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object FilterLayoutItem4: TdxLayoutItem
        Parent = FilterLayoutGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = ' '
        CaptionOptions.Layout = clTop
        Control = cxButton1
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object FilterLayoutItem6: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        CaptionOptions.Layout = clTop
        Control = edit_comments
        ControlOptions.OriginalHeight = 94
        ControlOptions.OriginalWidth = 243
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object FilterLayoutGroup2: TdxLayoutGroup
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object FilterLayoutItem7: TdxLayoutItem
        Parent = FilterLayoutGroup2
        CaptionOptions.Text = #1057#1082#1080#1076#1082#1072
        CaptionOptions.Layout = clTop
        Control = edit_procent
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 66
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object FilterLayoutItem3: TdxLayoutItem
        Parent = FilterLayoutGroup2
        CaptionOptions.Text = ' '
        CaptionOptions.Layout = clTop
        Control = cxButton2
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
    object SummLayout: TdxLayoutControl
      Left = 1
      Top = 423
      Width = 279
      Height = 228
      Align = alBottom
      TabOrder = 1
      AutoSize = True
      OptionsImage.Images = SysContainer.SmallImages
      object label_Summ: TcxDBLabel
        Left = 70
        Top = 158
        AutoSize = True
        DataBinding.DataField = 'SUM_REAL'
        DataBinding.DataSource = Data.S_Sale_N
        ParentShowHint = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        ShowHint = True
        Style.HotTrack = False
        Style.TextColor = clHotLight
        Style.TextStyle = [fsBold]
        AnchorY = 167
      end
      object cxDBLabel1: TcxDBLabel
        Left = 137
        Top = 42
        AutoSize = True
        DataBinding.DataField = 'USERNAME'
        DataBinding.DataSource = Data.S_Sale_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel2: TcxDBLabel
        Left = 137
        Top = 88
        AutoSize = True
        DataBinding.DataField = 'EUSERNAME'
        DataBinding.DataSource = Data.S_Sale_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel3: TcxDBLabel
        Left = 137
        Top = 65
        AutoSize = True
        DataBinding.DataField = 'S_DATE'
        DataBinding.DataSource = Data.S_Sale_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object cxDBLabel4: TcxDBLabel
        Left = 137
        Top = 111
        AutoSize = True
        DataBinding.DataField = 'CHANGED'
        DataBinding.DataSource = Data.S_Sale_N
        Style.HotTrack = False
        Style.TextStyle = []
      end
      object SummLayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object l_sum: TdxLayoutItem
        Parent = SummLayoutGroup1
        CaptionOptions.ImageIndex = 33
        CaptionOptions.Text = #1057#1091#1084#1084#1072':'
        Control = label_Summ
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 74
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object SummLayoutItem2: TdxLayoutItem
        Parent = SummLayoutGroup2
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1057#1086#1079#1076#1072#1083':'
        Control = cxDBLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object SummLayoutItem3: TdxLayoutItem
        Parent = SummLayoutGroup2
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1048#1079#1084#1077#1085#1080#1083':'
        Control = cxDBLabel2
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object SummLayoutItem4: TdxLayoutItem
        Parent = SummLayoutGroup2
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1042#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103':'
        Control = cxDBLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object SummLayoutItem5: TdxLayoutItem
        Parent = SummLayoutGroup2
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1042#1088#1077#1084#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103':'
        Control = cxDBLabel4
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 59
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object SummLayoutSeparatorItem2: TdxLayoutSeparatorItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 2
      end
      object dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
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
        Index = 3
      end
      object SummLayoutGroup2: TdxLayoutGroup
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 29
        CaptionOptions.Text = #1055#1088#1072#1074#1072
        AllowRemove = False
        ButtonOptions.Buttons = <>
        ButtonOptions.Visible = False
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
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 48
    Top = 296
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
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
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
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'check_checkprices'
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
      Action = MainForm.act_sale_print
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = MainForm.act_sale_preview
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = MainForm.act_sale_item_card
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = MainForm.act_sale_item_history
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = MainForm.act_sale_return
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = MainForm.act_sale_execute
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = MainForm.act_sale_excelexport
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = MainForm.act_sale_pay
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = MainForm.act_sale_import
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = MainForm.act_sale_export
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' Microsoft Excel'
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1055#1086' '#1076#1072#1085#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1085#1077#1090' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      Category = 0
      Hint = #1055#1086' '#1076#1072#1085#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1085#1077#1090' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object NoReqLabel: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      Control = Label2
    end
    object dxBarButton28: TdxBarButton
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      Category = 0
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      Visible = ivAlways
      ImageIndex = 26
      OnClick = dxBarButton28Click
    end
    object check_checkprices: TdxBarButton
      Caption = 'btnCheckColor'
      Category = 0
      Hint = #1055#1086#1084#1077#1095#1072#1090#1100' '#1094#1077#1085#1099' '#1094#1074#1077#1090#1086#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 78
      OnClick = check_checkpricesClick
    end
    object dxBarButton1: TdxBarButton
      Action = MainForm.act_sale_clear
      Category = 0
    end
  end
end
