object CustomerHistoryForm: TCustomerHistoryForm
  Left = 0
  Top = 0
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
  ClientHeight = 778
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TB_CustomerHistory: TDBGridEh
    Left = 0
    Top = 31
    Width = 794
    Height = 340
    Align = alClient
    AllowedOperations = []
    AllowedSelections = [gstRecordBookmarks, gstAll]
    AutoFitColWidths = True
    DataSource = Query.S_QueryDolgi
    DynProps = <>
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    FrozenCols = 1
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentFont = False
    TabOrder = 1
    OnGetCellParams = TB_CustomerHistoryGetCellParams
    Columns = <
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'A_TYPE'
        Footers = <>
        ImageList = SysContainer.IL_Accounting
        KeyList.Strings = (
          'sale'
          'return'
          'kassa'
          'dolg')
        MaxWidth = 16
        MinWidth = 16
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = '.'
        Width = 16
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = 'dd.mm.yy'
        DynProps = <>
        EditButtons = <>
        FieldName = 'A_DATE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 60
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = 't'
        DynProps = <>
        EditButtons = <>
        FieldName = 'A_DATE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1042#1088#1077#1084#1103
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'A_TYPE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
        Width = 150
        OnGetCellParams = TB_CustomerHistoryColumns3GetCellParams
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUMM_OUT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1056#1072#1089#1093#1086#1076
        Width = 80
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUMM_IN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1093#1086#1076
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COMMENTS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Splitter: TcxSplitter
    Left = 0
    Top = 371
    Width = 794
    Height = 5
    AlignSplitter = salBottom
  end
  object PageControl: TcxPageControl
    Left = 0
    Top = 376
    Width = 794
    Height = 402
    Align = alBottom
    TabOrder = 6
    Properties.ActivePage = tab_kassa
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 401
    ClientRectLeft = 1
    ClientRectRight = 793
    ClientRectTop = 1
    object tab_sale: TcxTabSheet
      Caption = 'tab_sale'
      ImageIndex = 0
      object TB_SaleDetails: TDBGridEh
        Left = 0
        Top = 0
        Width = 792
        Height = 400
        Align = alClient
        AutoFitColWidths = True
        DataSource = Query.S_SaleDetails
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = TB_SaleDetailsKeyDown
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 291
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
            Width = 90
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
            Width = 90
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1083#1072#1076
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tab_arrival: TcxTabSheet
      Caption = 'tab_arrival'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 792
        Height = 400
        Align = alClient
        AutoFitColWidths = True
        DataSource = Query.S_ArrivalDetails
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBGridEh1KeyDown
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 291
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
            Width = 90
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
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tab_kassa: TcxTabSheet
      Caption = 'tab_kassa'
      ImageIndex = 2
    end
    object tab_ret_cust: TcxTabSheet
      Caption = 'tab_ret_cust'
      ImageIndex = 3
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 792
        Height = 400
        Align = alClient
        AutoFitColWidths = True
        DataSource = Query.S_RetCustDetails
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBGridEh2KeyDown
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 291
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
            Width = 90
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
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tab_ret_suppl: TcxTabSheet
      Caption = 'tab_ret_suppl'
      ImageIndex = 4
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 792
        Height = 400
        Align = alClient
        AutoFitColWidths = True
        DataSource = Query.S_RetSupplDetails
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBGridEh3KeyDown
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 291
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
            Width = 90
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
            Width = 90
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1083#1072#1076
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tab_dolg: TcxTabSheet
      Caption = 'tab_dolg'
      ImageIndex = 5
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
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
    Left = 32
    Top = 368
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      31
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'CustomerToolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 804
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edit_reset_all'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 176
          Visible = True
          ItemName = 'edit_client'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edit_date_from'
        end
        item
          Visible = True
          ItemName = 'edit_date_to'
        end
        item
          Visible = True
          ItemName = 'edit_time_period'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object TodayBtn: TdxBarButton
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Category = 0
      Hint = #1057#1077#1075#1086#1076#1085#1103
      Visible = ivAlways
      ImageIndex = 17
      OnClick = TodayBtnClick
    end
    object WeekBtn: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1085#1077#1076#1077#1083#1103
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1085#1077#1076#1077#1083#1103
      Visible = ivAlways
      ImageIndex = 17
      OnClick = WeekBtnClick
    end
    object MonthBtn: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1084#1077#1089#1103#1094
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1084#1077#1089#1103#1094
      Visible = ivAlways
      ImageIndex = 17
      OnClick = MonthBtnClick
    end
    object YearBtn: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1075#1086#1076
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1075#1086#1076
      Visible = ivAlways
      ImageIndex = 17
      OnClick = YearBtnClick
    end
    object AllPeriodBtn: TdxBarButton
      Caption = #1042#1077#1089#1100' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1042#1077#1089#1100' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
      ImageIndex = 17
      OnClick = AllPeriodBtnClick
    end
    object edit_date_from: TcxBarEditItem
      Caption = #1054#1090
      Category = 1
      Hint = #1054#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_date_fromPropertiesCloseUp
    end
    object edit_date_to: TcxBarEditItem
      Caption = #1044#1086
      Category = 1
      Hint = #1044#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_date_toPropertiesCloseUp
    end
    object edit_reset_all: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077
      Category = 1
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 14
      OnClick = edit_reset_allClick
    end
    object edit_time_period: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pm_DateRangeHistory
      ImageIndex = 17
      OnClick = edit_time_periodClick
    end
    object edit_client: TcxBarEditItem
      Caption = #1050#1083#1080#1077#1085#1090
      Category = 1
      Hint = #1050#1083#1080#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = edit_clientPropertiesCloseUp
    end
  end
  object pm_DateRangeHistory: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'TodayBtn'
      end
      item
        Visible = True
        ItemName = 'WeekBtn'
      end
      item
        Visible = True
        ItemName = 'MonthBtn'
      end
      item
        Visible = True
        ItemName = 'YearBtn'
      end
      item
        Visible = True
        ItemName = 'AllPeriodBtn'
      end>
    UseOwnFont = False
    Left = 104
    Top = 368
    PixelsPerInch = 96
  end
end
