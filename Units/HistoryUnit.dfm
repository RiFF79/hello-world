object HistoryForm: THistoryForm
  Left = 267
  Top = 164
  Caption = #1044#1074#1080#1078#1077#1085#1080#1103' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 729
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 13
  object TB_History: TDBGridEh
    Left = 0
    Top = 63
    Width = 933
    Height = 635
    Align = alClient
    AllowedOperations = []
    AutoFitColWidths = True
    DataSource = Query.S_HISTORY
    DynProps = <>
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack]
    ParentFont = False
    SortLocal = True
    TabOrder = 0
    OnDblClick = TB_HistoryDblClick
    OnGetCellParams = TB_HistoryGetCellParams
    OnTitleClick = TB_HistoryTitleClick
    Columns = <
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAKL_ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
        Width = 72
      end
      item
        Alignment = taLeftJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BILL_TYPE'
        Footers = <>
        KeyList.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '7'
          '8')
        PickList.Strings = (
          #1056#1072#1089#1093#1086#1076
          #1055#1088#1080#1093#1086#1076
          #1055#1077#1088#1077#1093#1086#1076
          #1054#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
          #1055#1086#1089#1090#1072#1074#1097#1080#1082#1091
          #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086
          #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1086)
        Title.Alignment = taCenter
        Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        Title.TitleButton = True
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = 'dd.mm.yy'
        DynProps = <>
        EditButtons = <>
        FieldName = 'H_DATE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072
        Title.TitleButton = True
        Width = 58
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = 'hh:mm'
        DynProps = <>
        EditButtons = <>
        FieldName = 'H_DATE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1042#1088#1077#1084#1103
        Title.TitleButton = True
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CUSTOMER'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Title.TitleButton = True
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEPOT_FROM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1086' '#1089#1082#1083#1072#1076#1072
        Title.TitleButton = True
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEPOT_TO'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072' '#1089#1082#1083#1072#1076
        Title.TitleButton = True
        Width = 70
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
        Title.TitleButton = True
        Width = 80
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
        Title.TitleButton = True
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WEIGHT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1042#1077#1089
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRICE_TYPE'
        Footers = <>
        KeyList.Strings = (
          '-1'
          '0'
          '1'
          '2'
          '3'
          '4')
        PickList.Strings = (
          ''
          ''
          #1054#1073#1099#1095'.'
          #1057#1087#1077#1094'.'
          #1052#1072#1075#1072#1079#1080#1085
          #1056#1086#1079#1085#1080#1094#1072)
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1072#1081#1089
        Title.TitleButton = True
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COMMENTS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Title.TitleButton = True
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1087#1077#1088#1080#1086#1076#1099' '#1074#1088#1077#1084#1077#1085#1080
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = SysContainer.SmallImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 144
    Top = 480
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      31)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 32
      DockingStyle = dsTop
      FloatLeft = 967
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
          Visible = True
          ItemName = 'edit_datefrom'
        end
        item
          Visible = True
          ItemName = 'btn_reset_datefrom'
        end
        item
          Visible = True
          ItemName = 'edit_dateto'
        end
        item
          Visible = True
          ItemName = 'btn_reset_dateto'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 178
          Visible = True
          ItemName = 'edit_client'
        end
        item
          Visible = True
          ItemName = 'btn_reset_client'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 163
          Visible = True
          ItemName = 'edit_depot'
        end
        item
          Visible = True
          ItemName = 'btn_reset_depot'
        end>
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 585
      FloatTop = 660
      FloatClientWidth = 149
      FloatClientHeight = 167
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_All'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_arrival'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_sales'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_moves'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_RetCust'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_RetSuppl'
        end
        item
          Visible = True
          ItemName = 'btn_production'
        end
        item
          Visible = True
          ItemName = 'btn_specification'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1042#1099#1073#1086#1088' '#1090#1086#1074#1072#1088#1072
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edit_item'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object m_Today: TdxBarButton
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Category = 0
      Visible = ivAlways
      ImageIndex = 17
      OnClick = m_TodayClick
    end
    object m_Week: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1085#1077#1076#1077#1083#1103
      Category = 0
      Visible = ivAlways
      ImageIndex = 17
      OnClick = m_WeekClick
    end
    object m_Month: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1084#1077#1089#1103#1094
      Category = 0
      Visible = ivAlways
      ImageIndex = 17
      OnClick = m_MonthClick
    end
    object m_Year: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1075#1086#1076
      Category = 0
      Visible = ivAlways
      ImageIndex = 17
      OnClick = m_YearClick
    end
    object m_All: TdxBarButton
      Caption = #1047#1072' '#1074#1077#1089#1100' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Visible = ivAlways
      ImageIndex = 17
    end
    object btn_All: TdxBarButton
      Caption = #1042#1089#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Category = 1
      Hint = #1042#1089#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      ImageIndex = 34
      OnClick = btn_BillGroupClick
    end
    object btn_RetSuppl: TdxBarButton
      Caption = #1042#1086#1079#1074#1088#1072#1090#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Category = 1
      Hint = #1042#1086#1079#1074#1088#1072#1090#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 45
      OnClick = btn_BillGroupClick
    end
    object btn_RetCust: TdxBarButton
      Caption = #1042#1086#1079#1074#1088#1072#1090#1099' '#1082#1083#1080#1077#1085#1090#1072
      Category = 1
      Hint = #1042#1086#1079#1074#1088#1072#1090#1099' '#1082#1083#1080#1077#1085#1090#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 44
      OnClick = btn_BillGroupClick
    end
    object btn_arrival: TdxBarButton
      Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1077
      Category = 1
      Hint = #1055#1088#1080#1093#1086#1076#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 41
      OnClick = btn_BillGroupClick
    end
    object btn_moves: TdxBarButton
      Caption = #1055#1077#1088#1077#1093#1086#1076#1099
      Category = 1
      Hint = #1055#1077#1088#1077#1093#1086#1076#1099
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 43
      OnClick = btn_BillGroupClick
    end
    object btn_sales: TdxBarButton
      Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077
      Category = 1
      Hint = #1056#1072#1089#1093#1086#1076#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 42
      OnClick = btn_BillGroupClick
    end
    object dxBarButton7: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1084#1077#1078#1091#1090#1086#1082' '#1074#1088#1077#1084#1077#1085#1080
      Category = 1
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1084#1077#1078#1091#1090#1086#1082' '#1074#1088#1077#1084#1077#1085#1080
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pm_DateRangeHistory
      ImageIndex = 17
    end
    object edit_datefrom: TcxBarEditItem
      Caption = #1054#1090
      Category = 1
      Hint = #1054#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = cxBarEditItem1PropertiesCloseUp
    end
    object btn_reset_datefrom: TdxBarButton
      Action = MainForm.act_his_reset_datefrom
      Category = 1
    end
    object edit_dateto: TcxBarEditItem
      Caption = #1044#1086
      Category = 1
      Hint = #1044#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = cxBarEditItem1PropertiesCloseUp
    end
    object btn_reset_dateto: TdxBarButton
      Action = MainForm.act_his_reset_dateto
      Category = 1
    end
    object edit_client: TcxBarEditItem
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      Category = 1
      Hint = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = cxBarEditItem1PropertiesCloseUp
    end
    object edit_depot: TcxBarEditItem
      Caption = #1057#1082#1083#1072#1076
      Category = 1
      Hint = #1057#1082#1083#1072#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = Query.S_Depots
      Properties.OnCloseUp = cxBarEditItem1PropertiesCloseUp
    end
    object btn_reset_client: TdxBarButton
      Action = MainForm.act_his_reset_client
      Category = 1
    end
    object btn_reset_depot: TdxBarButton
      Action = MainForm.act_his_reset_depot
      Category = 1
    end
    object dxBarButton8: TdxBarButton
      Action = MainForm.act_his_reset_all
      Category = 1
    end
    object edit_item: TdxBarButton
      Align = iaCenter
      Caption = 
        '                                                ... '#1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1086#1074 +
        #1072#1088' ...                                                '
      Category = 1
      Hint = 
        '                                                 '#1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1086#1074#1072#1088' ' +
        '...                                                '
      Visible = ivAlways
      Lowered = True
      OnClick = edit_itemClick
    end
    object btn_production: TdxBarButton
      Caption = #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086
      Category = 1
      Hint = #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 98
      PaintStyle = psCaptionGlyph
      OnClick = btn_BillGroupClick
    end
    object btn_specification: TdxBarButton
      Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1086
      Category = 1
      Hint = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 52
      PaintStyle = psCaptionGlyph
      OnClick = btn_BillGroupClick
    end
  end
  object pm_DateRangeHistory: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'm_Today'
      end
      item
        Visible = True
        ItemName = 'm_Week'
      end
      item
        Visible = True
        ItemName = 'm_Month'
      end
      item
        Visible = True
        ItemName = 'm_Year'
      end
      item
        Visible = True
        ItemName = 'm_All'
      end>
    UseOwnFont = False
    Left = 40
    Top = 480
    PixelsPerInch = 96
  end
end
