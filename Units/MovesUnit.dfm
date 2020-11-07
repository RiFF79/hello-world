object MovesForm: TMovesForm
  Left = 440
  Top = 176
  Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
  ClientHeight = 502
  ClientWidth = 991
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
  object TB_Moves: TDBGridEh
    Left = 257
    Top = 31
    Width = 734
    Height = 471
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data.S_Moves
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
    OnDblClick = TB_MovesDblClick
    OnKeyDown = TB_MovesKeyDown
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
        Width = 418
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
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 257
    Height = 471
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 5
    object SummLayout: TdxLayoutControl
      Left = 1
      Top = 336
      Width = 255
      Height = 134
      Align = alBottom
      TabOrder = 0
      AutoSize = True
      OptionsImage.Images = SysContainer.SmallImages
      object cxDBLabel1: TcxDBLabel
        Left = 117
        Top = 22
        DataBinding.DataField = 'USERNAME'
        DataBinding.DataSource = Data.S_Moves_N
        Style.HotTrack = False
        Height = 21
        Width = 128
      end
      object cxDBLabel2: TcxDBLabel
        Left = 117
        Top = 49
        DataBinding.DataField = 'M_DATE'
        DataBinding.DataSource = Data.S_Moves_N
        Style.HotTrack = False
        Height = 21
        Width = 128
      end
      object cxDBLabel3: TcxDBLabel
        Left = 117
        Top = 76
        DataBinding.DataField = 'EUSERNAME'
        DataBinding.DataSource = Data.S_Moves_N
        Style.HotTrack = False
        Height = 21
        Width = 128
      end
      object cxDBLabel4: TcxDBLabel
        Left = 117
        Top = 103
        DataBinding.DataField = 'CHANGED'
        DataBinding.DataSource = Data.S_Moves_N
        Style.HotTrack = False
        Height = 21
        Width = 128
      end
      object SummLayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
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
      object SummLayoutItem1: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1057#1086#1079#1076#1072#1083':'
        Control = cxDBLabel1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object SummLayoutItem2: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
        Control = cxDBLabel2
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object SummLayoutItem3: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 53
        CaptionOptions.Text = #1048#1079#1084#1077#1085#1080#1083':'
        Control = cxDBLabel3
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object SummLayoutItem4: TdxLayoutItem
        Parent = SummLayoutGroup_Root
        CaptionOptions.ImageIndex = 80
        CaptionOptions.Text = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        Control = cxDBLabel4
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
    end
    object FilterLayout: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 255
      Height = 250
      Align = alTop
      TabOrder = 1
      object edit_depot_from: TcxDBLookupComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'DEPOT_FROM_ID'
        DataBinding.DataSource = Data.S_Moves_N
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = Query.S_Depots
        Properties.OnCloseUp = edit_depotPropertiesCloseUp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 235
      end
      object edit_depot_to: TcxDBLookupComboBox
        Left = 10
        Top = 73
        DataBinding.DataField = 'DEPOT_TO_ID'
        DataBinding.DataSource = Data.S_Moves_N
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = Query.S_Depots
        Properties.OnCloseUp = edit_depotPropertiesCloseUp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Width = 235
      end
      object edit_comments: TcxDBTextEdit
        Left = 10
        Top = 118
        AutoSize = False
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = Data.S_Moves_N
        Properties.Alignment.Vert = taTopJustify
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        OnExit = edit_commentsExit
        OnKeyDown = edit_commentsKeyDown
        Height = 115
        Width = 235
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
        CaptionOptions.Text = #1057#1086' '#1089#1082#1083#1072#1076#1072
        CaptionOptions.Layout = clTop
        Control = edit_depot_from
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object FilterLayoutItem2: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1053#1072' '#1089#1082#1083#1072#1076
        CaptionOptions.Layout = clTop
        Control = edit_depot_to
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object FilterLayoutItem3: TdxLayoutItem
        Parent = FilterLayoutGroup_Root
        CaptionOptions.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        CaptionOptions.Layout = clTop
        Control = edit_comments
        ControlOptions.OriginalHeight = 115
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
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = SysContainer.SmallImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 312
    Top = 400
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
      FloatLeft = 530
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
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
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Action = MainForm.act_moves_execute
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = MainForm.act_moves_exportexcel
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = MainForm.act_moves_cennik
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = MainForm.act_moves_print
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = MainForm.act_moves_preview
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = MainForm.act_moves_itemcard
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = MainForm.act_moves_history
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = MainForm.act_moves_return
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1074#1089#1077' '#1090#1086#1074#1072#1088#1099' '#1089#1086' '#1089#1082#1083#1072#1076#1072
      Visible = ivAlways
      ImageIndex = 63
      OnClick = dxBarButton3Click
    end
  end
end
