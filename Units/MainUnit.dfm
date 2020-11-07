object MainForm: TMainForm
  Left = 0
  Top = 0
  ActiveControl = area_client
  Caption = 'Mosquito Stretch-Film Edition v3.5'
  ClientHeight = 855
  ClientWidth = 1370
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1370
    Height = 124
    BarManager = BarManager
    Style = rs2010
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'DevExpressStyle'
    QuickAccessToolbar.Visible = False
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object rib_tab_documents: TdxRibbonTab
      Active = True
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Groups = <
        item
          ToolbarName = 'rib_bar_documents'
        end
        item
          ToolbarName = 'rib_bar_money'
        end
        item
          Caption = #1055#1088#1072#1081#1089#1099
          ToolbarName = 'rib_bar_prices'
        end>
      Index = 0
    end
    object rib_tab_classificators: TdxRibbonTab
      Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Groups = <
        item
          Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
          ToolbarName = 'rib_bar_classifiers'
        end>
      Index = 1
    end
    object rib_tab_file: TdxRibbonTab
      Caption = #1057#1080#1089#1090#1077#1084#1072
      Groups = <
        item
          Caption = #1042#1085#1077#1096#1085#1080#1077' '#1087#1088#1072#1081#1089#1099
          ToolbarName = 'rib_bar_importprices'
        end
        item
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
          ToolbarName = 'rib_bar_settings'
        end>
      Index = 2
    end
  end
  object StatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 832
    Width = 1370
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'rib_bar_Statusbar'
        Width = 158
      end
      item
        PanelStyleClassName = 'TdxStatusBarStateIndicatorPanelStyle'
        PanelStyle.Indicators = <
          item
          end>
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end>
    Ribbon = Ribbon
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = 128
    ExplicitTop = 837
  end
  object area_client: TcxPageControl
    Left = 205
    Top = 148
    Width = 1165
    Height = 684
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = P_Price
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 683
    ClientRectLeft = 1
    ClientRectRight = 1164
    ClientRectTop = 1
    object P_Sale_N: TcxTabSheet
      Caption = 'P_Sale_N'
      ImageIndex = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
      object TB_Sale_N: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 619
        Align = alClient
        AutoFitColWidths = True
        ColumnDefValues.Title.Alignment = taCenter
        DataSource = Data.S_Sale_N
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        TabOrder = 1
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        VertScrollBar.Tracking = False
        VertScrollBar.SmoothStep = True
        OnDblClick = TB_Sale_NDblClick
        OnGetCellParams = TB_Sale_NGetCellParams
        OnKeyDown = TB_Sale_NKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.ImageIndex = 71
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Checkboxes = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRINTED'
            Footers = <>
            Title.ImageIndex = 5
            Width = 21
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'dd.mm.yy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'S_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 't'
            DynProps = <>
            EditButtons = <>
            FieldName = 'S_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUSTOMER'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Width = 224
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUM_REAL'
            Footers = <>
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 131
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMM_ARRIVAL'
            Footers = <>
            Title.Caption = #1055#1088#1080#1073#1099#1083#1100
            Visible = False
            Width = 66
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            Footers = <>
            Title.Caption = #1055#1088#1080#1073#1099#1083#1100
            Visible = False
            OnGetCellParams = TB_Sale_NColumns7GetCellParams
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Checkboxes = False
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'PAID'
            Footers = <>
            Title.Caption = #1054#1087#1083#1072#1090#1072
            Width = 117
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            Width = 197
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDITINGBY'
            Footers = <>
            ImageList = SysContainer.EditImages
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            Title.Caption = '.'
            Title.ImageIndex = 72
            Width = 16
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Arrival_N: TcxTabSheet
      Caption = 'P_Arrival_N'
      ImageIndex = 1
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
      object TB_Arrival_N: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 619
        Align = alClient
        AutoFitColWidths = True
        ColumnDefValues.Title.Alignment = taCenter
        Ctl3D = True
        DataSource = Data.S_Arrival_N
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clBtnFace
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghTraceColSizing, dghColumnResize, dghColumnMove]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        SumList.Active = True
        TabOrder = 1
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        VertScrollBar.Tracking = False
        VertScrollBar.SmoothStep = True
        OnDblClick = TB_Arrival_NDblClick
        OnKeyDown = TB_Arrival_NKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = #8470
            Title.EndEllipsis = True
            Title.ImageIndex = 71
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
            Title.Caption = #1044#1072#1090#1072
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
            Title.Caption = #1042#1088#1077#1084#1103
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT'
            Footers = <>
            Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            Width = 190
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clNavy
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1082#1083#1072#1076
            Width = 102
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUM_REAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footer.DisplayFormat = '0.00#.##'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clNavy
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 140
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1080
            Width = 158
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDITINGBY'
            Footers = <>
            ImageList = SysContainer.EditImages
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            MaxWidth = 16
            MinWidth = 16
            Title.ImageIndex = 72
            Width = 16
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Moves_N: TcxTabSheet
      Caption = 'P_Moves_N'
      ImageIndex = 2
      object TB_Moves_N: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 619
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data.S_Moves_N
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        VertScrollBar.Tracking = False
        VertScrollBar.SmoothStep = True
        OnDblClick = TB_Moves_NDblClick
        OnKeyDown = TB_Moves_NKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Alignment = taCenter
            Title.ImageIndex = 71
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRINTED'
            Footers = <>
            Title.Alignment = taCenter
            Title.ImageIndex = 5
            Width = 24
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'dd.mm.yy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'M_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DisplayFormat = 't'
            DynProps = <>
            EditButtons = <>
            FieldName = 'M_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1088#1077#1084#1103
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT_FROM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1086' '#1089#1082#1083#1072#1076#1072
            Width = 100
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT_TO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1082#1083#1072#1076
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            Width = 289
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDITINGBY'
            Footers = <>
            ImageList = SysContainer.EditImages
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            MaxWidth = 16
            MinWidth = 16
            Title.Alignment = taCenter
            Title.Caption = '.'
            Title.ImageIndex = 72
            Width = 16
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_Return_Cust_N: TcxTabSheet
      Caption = 'P_Return_Cust_N'
      ImageIndex = 3
      object TB_Return_Cust_N: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 619
        Align = alClient
        AutoFitColWidths = True
        ColumnDefValues.Title.Alignment = taCenter
        Ctl3D = True
        DataSource = Data.S_Return_Cust_N
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clBtnFace
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghData3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghTraceColSizing, dghColumnResize, dghColumnMove]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        SumList.Active = True
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        VertScrollBar.Tracking = False
        VertScrollBar.VisibleMode = sbNeverShowEh
        OnDblClick = TB_Return_Cust_NDblClick
        OnKeyDown = TB_Return_Cust_NKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = #8470
            Title.EndEllipsis = True
            Title.ImageIndex = 71
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'dd.mm.yy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'R_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 't'
            DynProps = <>
            EditButtons = <>
            FieldName = 'R_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUSTOMER'
            Footer.Alignment = taRightJustify
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Width = 164
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clNavy
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1082#1083#1072#1076
            Width = 106
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUM_REAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footer.DisplayFormat = '0.00#.##'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clNavy
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 124
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1080
            Width = 281
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDITINGBY'
            Footers = <>
            ImageList = SysContainer.EditImages
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            MaxWidth = 16
            MinWidth = 16
            Title.ImageIndex = 72
            Width = 16
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl4: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_ReturnSuppl_N: TcxTabSheet
      Caption = 'P_ReturnSuppl_N'
      ImageIndex = 4
      object TB_Return_Suppl_N: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 619
        Align = alClient
        AutoFitColWidths = True
        ColumnDefValues.Title.Alignment = taCenter
        DataSource = Data.S_Return_Suppl_N
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        VertScrollBar.Tracking = False
        VertScrollBar.SmoothStep = True
        OnDblClick = TB_Return_Suppl_NDblClick
        OnKeyDown = TB_Return_Suppl_NKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.ImageIndex = 71
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'ddddd'
            DynProps = <>
            EditButtons = <>
            FieldName = 'R_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 't'
            DynProps = <>
            EditButtons = <>
            FieldName = 'R_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT'
            Footers = <>
            Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            Width = 164
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUM_REAL'
            Footers = <>
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 148
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            Width = 359
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EDITINGBY'
            Footers = <>
            ImageList = SysContainer.EditImages
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            MaxWidth = 16
            MinWidth = 16
            Title.ImageIndex = 72
            Width = 16
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl5: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_Depots: TcxTabSheet
      Caption = 'P_Depots'
      ImageIndex = 5
      object TB_Depots: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        AutoFitColWidths = True
        DataSource = Data.S_Depots
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USED'
            Footers = <>
            Title.Alignment = taCenter
            Title.ImageIndex = 75
            Width = 20
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 104
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_PRINT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1083#1103' '#1087#1077#1095#1072#1090#1080
            Width = 95
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORGANIZATION'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            Width = 98
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ADRESS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 172
          end
          item
            Alignment = taLeftJustify
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRICE_TYPE'
            Footers = <>
            KeyList.Strings = (
              '1'
              '2'
              '3')
            PickList.Strings = (
              #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
              #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
              #1056#1086#1079#1085#1080#1094#1072' ('#1043#1088#1080#1074#1085#1072')')
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
            Width = 90
          end
          item
            Alignment = taLeftJustify
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CENNIK_TYPE'
            Footers = <>
            KeyList.Strings = (
              '1'
              '2'
              '3'
              '4')
            PickList.Strings = (
              #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089' (USD)'
              #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' (USD)'
              #1052#1072#1075#1072#1079#1080#1085#1085#1099#1081' '#1087#1088#1072#1081#1089' (UAH)'
              #1056#1099#1085#1086#1095#1085#1099#1081' '#1087#1088#1072#1081#1089' (UAH)')
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1085#1080#1082#1080
            Width = 109
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Firms: TcxTabSheet
      Caption = 'P_Firms'
      ImageIndex = 6
      object TB_Firms: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data.S_Firms
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        TabOrder = 0
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VARIANTS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1072#1088#1080#1072#1085#1090#1099' ('#1095#1077#1088#1077#1079' ; )'
            Width = 548
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Suppliers: TcxTabSheet
      Caption = 'P_Suppliers'
      ImageIndex = 7
      object TB_Suppliers: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        AutoFitColWidths = True
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 240
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRINTNAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1083#1103' '#1087#1077#1095#1072#1090#1080
            Width = 240
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_GoodTypes: TcxTabSheet
      Caption = 'P_GoodTypes'
      ImageIndex = 8
      object TB_GoodTypes: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data.S_GoodTypes
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 440
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ARR_SPEC_PERC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = '% '#1057#1087#1077#1094'.  '#1086#1090' '#1079#1072#1082#1091#1087#1082#1080
            Width = 128
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NICHE_PERC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = '% '#1053#1080#1096#1072' '#1086#1090' '#1079#1072#1082#1091#1087#1082#1080
            Width = 128
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PERC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = '% '#1057#1072#1085#1072' '#1088#1086#1079#1085#1080#1094#1072
            Width = 128
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Customers: TcxTabSheet
      Caption = 'P_Customers'
      ImageIndex = 9
      object TB_Customers: TDBGridEh
        Left = 0
        Top = 31
        Width = 1163
        Height = 651
        Align = alClient
        AutoFitColWidths = True
        DataGrouping.DefaultStateExpanded = True
        DataSource = Data.S_Customers
        DynProps = <>
        EditActions = [geaCopyEh]
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnDblClick = TB_CustomersDblClick
        OnGetCellParams = TB_CustomersGetCellParams
        OnKeyDown = TB_CustomersKeyDown
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'C_TYPE'
            Footers = <>
            MaxWidth = 16
            MinWidth = 16
            Title.Alignment = taCenter
            Title.Caption = '.'
            Width = 16
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' / '#1048#1084#1103
            Width = 250
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DISCOUNT_DESC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072
            Width = 158
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREDIT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1088#1077#1076#1080#1090
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DELAY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1090#1089#1088#1086#1095#1082#1072
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNTING'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1059#1095#1105#1090
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'C_TYPE'
            Footers = <>
            Width = 24
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl8: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 31
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_Currency: TcxTabSheet
      Caption = 'P_Currency'
      ImageIndex = 10
    end
    object P_Price: TcxTabSheet
      Caption = 'P_Price'
      ImageIndex = 11
      OnHide = P_PriceHide
      OnShow = P_PriceShow
      object TB_Price: TDBGridEh
        Left = 0
        Top = 31
        Width = 1163
        Height = 651
        Align = alClient
        AllowedOperations = [alopInsertEh, alopUpdateEh, alopDeleteEh]
        AutoFitColWidths = True
        DataSource = Data.S_Goods
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack]
        RowHeight = 16
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        OnDblClick = TB_PriceDblClick
        OnGetCellParams = TB_PriceGetCellParams
        OnKeyDown = TB_PriceKeyDown
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SELECTED'
            Footers = <>
            Title.Alignment = taCenter
            Title.ImageIndex = 71
            Width = 19
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FULLNAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 381
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRICE1'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072' 1'
            Width = 80
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRICE2'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072' 2'
            Width = 80
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRICE_SHOP'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072' 3'
            Width = 80
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRICE_SHOP2'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072' 4'
            Width = 80
          end
          item
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButtons = <>
            FieldName = 'CNT_ALL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1073#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
            Width = 80
            OnGetCellParams = TB_PriceColumns6GetCellParams
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl10: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 31
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_GoodsOnDepots: TcxTabSheet
      Caption = 'P_GoodsOnDepots'
      ImageIndex = 12
      OnHide = P_GoodsOnDepotsHide
      OnShow = P_GoodsOnDepotsShow
      object TB_GoodsOnDepots: TDBGridEh
        Left = 0
        Top = 31
        Width = 1163
        Height = 651
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        AutoFitColWidths = True
        DataSource = Data.S_Goods
        DynProps = <>
        Flat = True
        FooterParams.Color = clBtnFace
        FrozenCols = 1
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
        RowHeight = 17
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        OnDblClick = TB_GoodsOnDepotsDblClick
        OnKeyDown = TB_GoodsOnDepotsKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SELECTED'
            Footers = <>
            Title.Alignment = taCenter
            Title.ImageIndex = 71
            Width = 20
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FULLNAME'
            Footer.Alignment = taRightJustify
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 258
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C1'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C2'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C3'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C4'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C5'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C6'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C7'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C8'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C9'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C10'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C11'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C12'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C13'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C14'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C15'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C16'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C17'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C18'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C19'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            ButtonStyle = cbsUpDown
            CellButtons = <>
            DisplayFormat = '0.###'
            DynProps = <>
            EditButton.Style = ebsUpDownEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'C20'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end
          item
            CellButtons = <>
            Color = 16776176
            DisplayFormat = '0.###'
            DynProps = <>
            EditButtons = <>
            FieldName = 'C0'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1041#1088#1072#1082
            Width = 32
            OnGetCellParams = TB_GoodsOnDepotsColumnsGetCellParams
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl9: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 31
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_List: TcxTabSheet
      Caption = 'P_List'
      ImageIndex = 17
      object list_ExecDoc: TListView
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        Columns = <>
        FlatScrollBars = True
        HotTrack = True
        HotTrackStyles = [htHandPoint, htUnderlineHot]
        IconOptions.Arrangement = iaLeft
        IconOptions.WrapText = False
        Items.ItemData = {
          055E0000000200000005000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
          000B12044B043F043E043B043D0435043D043D044B04350404000000FFFFFFFF
          FFFFFFFF00000000FFFFFFFF000000000A1D04300420003E0447043504400435
          0434043804}
        LargeImages = SysContainer.BigImages
        ReadOnly = True
        TabOrder = 0
        OnClick = list_ExecDocClick
      end
    end
    object P_Report: TcxTabSheet
      Caption = 'P_Report'
      ImageIndex = 19
      object dxBarDockControl11: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 31
        Align = dalTop
        BarManager = BarManager
      end
      object preview_Report: TfrxPreview
        Left = 0
        Top = 31
        Width = 1163
        Height = 651
        Align = alClient
        OutlineVisible = False
        OutlineWidth = 121
        ThumbnailVisible = False
        FindFmVisible = False
        UseReportHints = True
        OutlineTreeSortType = dtsUnsorted
        HideScrolls = False
      end
    end
    object P_ImportPrices: TcxTabSheet
      Caption = 'P_ImportPrices'
      ImageIndex = 21
      object TB_ImportPrices: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        AutoFitColWidths = True
        DataSource = Data.S_ImportPrice
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUPPL_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082' / '#1050#1083#1080#1077#1085#1090
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COL_ART'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083#1086#1085#1082#1072' '#1089' '#1072#1088#1090#1080#1082#1091#1083#1086#1084
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COL_PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083#1086#1085#1082#1072' '#1089' '#1094#1077#1085#1086#1081
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COL_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083#1086#1085#1082#1072' '#1089' '#1085#1072#1079#1074#1072#1085#1080#1077#1084
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ROW_START'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1077#1088#1074#1072#1103' '#1089#1090#1088#1086#1082#1072
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COL_ONDEPOT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083#1086#1085#1082#1072' '#1085#1072#1083#1080#1095#1080#1103
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BARCODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PERC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1086#1094#1077#1085#1090' (+/-)'
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
          end
          item
            CellButtons = <>
            DisplayFormat = '#0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ARRIVAL_PERCENT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Articuls: TcxTabSheet
      Caption = 'P_Articuls'
      ImageIndex = 22
      object TB_Articuls: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 682
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = Data.S_Goods
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        MinAutoFitWidth = 60
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        TabOrder = 0
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        OnDblClick = TB_ArticulsDblClick
        OnKeyDown = TB_ArticulsKeyDown
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '#'
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Title.ImageIndex = 71
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FULLNAME'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 336
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_1'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_2'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_3'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_4'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_5'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_6'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_7'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_8'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_9'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_10'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_11'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_12'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_13'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_14'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_15'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_16'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_17'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_18'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_19'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ART_20'
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'C1'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object P_Kassa: TcxTabSheet
      Caption = 'P_Kassa'
      ImageIndex = 23
      object Panel10: TPanel
        Left = 0
        Top = 663
        Width = 1163
        Height = 19
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 168
          Height = 17
          Align = alLeft
          BevelOuter = bvSpace
          TabOrder = 0
          object Image3: TImage
            Left = 3
            Top = 1
            Width = 18
            Height = 15
            Align = alLeft
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000001974455874536F667477617265004164
              6F626520496D616765526561647971C9653C000001FC4944415478DA62FCFFFF
              3F03082C58B464E6BF7FFFD2607C6C809191898189897156425C4C3A4C8C05C6
              006A4C73737365F8FBF72F98CFC4C404D4C0886200486CE7CE5D6940265603FE
              DEBFFF805956469AE1DDDB370CA7CE9E676061664631444A4A0AD3501863C9E2
              45FEF7EEDD6378F9EA3583A898188382AC1CC3FD7BF7BA5292124C60F8F6AD5B
              FBD00D6084F91928C1969691996C6D6D3B4D4B4B9341524C84E1E8F1530C5FBE
              7E954A4E8C7B0E55AF04C482403D67315C0004BF66CD98BEF4F1E347B36EDCB8
              C5F0E2CD1B06733313062666C653486AEE01F1591427805C8016F25293A64C3F
              BA72F5DAFF172F5DFE7FE3E6CDFF73E72F6AC6A6078499B0C4D6B3BC9CCC84AF
              5FBF8263E4FE834720B11A5C518BCD0086D973E74FB2B7B566F8F2F92BC3BB77
              EF185E3C7F361797012C189AE72D68D0D1D2F4F8F4F90BC3874F1F19BE7CF9F2
              B2BAAAA28E2817CC9DBFD045424CB45E545494E1CDDB770C6FDFBE6558BC6861
              14C85B045D000C2879760EF6DDBABA3A0C8F9F3C6378FDFA0DC3ED3BB7BB8E1C
              3E7418A666DE82C56B1899188341B18E61C0BFFFFFEF1819E831BC7AFD96E1F3
              E7CF60ACA8A0543667DEC23258C80B080830BC7FFF1EBB0B8046B27CFBFE03CC
              161515611003A6468C5407E4E334E0C387F7EB2E5CB814849432B1FA19A40E57
              52960752220C84C11BA09E87300E40800100650DEB2AFD2966B7000000004945
              4E44AE426082}
            Transparent = True
          end
          object lbl_kassa_sum_usd: TLabel
            Left = 21
            Top = 1
            Width = 146
            Height = 15
            Align = alClient
            Alignment = taCenter
            Caption = '0.00'#1075#1088#1085'.'
            ExplicitWidth = 43
            ExplicitHeight = 13
          end
          object Panel16: TPanel
            Left = 1
            Top = 1
            Width = 2
            Height = 15
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Left = 169
          Top = 1
          Width = 0
          Height = 17
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
      object TB_KASSA: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 600
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data.S_KASSA
        DynProps = <>
        EditActions = [geaCopyEh]
        EvenRowColor = clBtnFace
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        TabOrder = 1
        VertScrollBar.SmoothStep = True
        OnDblClick = TB_KASSADblClick
        OnGetCellParams = TB_KASSAGetCellParams
        OnKeyDown = TB_KASSAKeyDown
        OnKeyUp = TB_KASSAKeyUp
        OnMouseDown = TB_KASSAMouseDown
        OnMouseUp = TB_KASSAMouseUp
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'dd.mm.yy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'K_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 66
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'hh:mm'
            DynProps = <>
            EditButtons = <>
            FieldName = 'K_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1088#1077#1084#1103
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 66
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAKL_ID'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 66
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 214
          end
          item
            CellButtons = <>
            DisplayFormat = '###0.00;-###0.00;   '
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMM_USD'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Footers = <>
            MinWidth = 80
            Title.Alignment = taCenter
            Title.Caption = #1057#1091#1084#1084#1072
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 157
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 326
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dxBarDockControl7: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_Accounting: TcxTabSheet
      Caption = 'P_Accounting'
      ImageIndex = 24
      object Splitter1: TSplitter
        Left = 337
        Top = 63
        Width = 6
        Height = 603
        Beveled = True
        ExplicitLeft = 273
        ExplicitTop = 69
        ExplicitHeight = 478
      end
      object Panel8: TPanel
        Left = 0
        Top = 666
        Width = 1163
        Height = 16
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel9: TPanel
          Left = 151
          Top = 1
          Width = 150
          Height = 14
          Align = alLeft
          BevelOuter = bvLowered
          TabOrder = 0
          object Label34: TLabel
            Left = 1
            Top = 1
            Width = 48
            Height = 12
            Align = alLeft
            Caption = '   '#1044#1077#1073#1077#1090': '
            ExplicitHeight = 13
          end
          object lbl_vzial: TLabel
            Left = 49
            Top = 1
            Width = 15
            Height = 12
            Align = alLeft
            Caption = '---'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
        object Panel18: TPanel
          Left = 1
          Top = 1
          Width = 150
          Height = 14
          Align = alLeft
          BevelOuter = bvLowered
          TabOrder = 1
          object Label49: TLabel
            Left = 1
            Top = 1
            Width = 38
            Height = 12
            Align = alLeft
            Caption = #1057#1091#1084#1084#1072': '
            ExplicitHeight = 13
          end
          object lbl_AccSelSumm: TLabel
            Left = 39
            Top = 1
            Width = 15
            Height = 12
            Align = alLeft
            Caption = '---'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
        object Panel19: TPanel
          Left = 301
          Top = 1
          Width = 150
          Height = 14
          Align = alLeft
          BevelOuter = bvLowered
          TabOrder = 2
          object Label48: TLabel
            Left = 1
            Top = 1
            Width = 54
            Height = 12
            Align = alLeft
            Caption = '   '#1050#1088#1077#1076#1080#1090': '
            ExplicitHeight = 13
          end
          object lbl_oplatil: TLabel
            Left = 55
            Top = 1
            Width = 15
            Height = 12
            Align = alLeft
            Caption = '---'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
      end
      object TB_ClientSelectDolg: TDBGridEh
        Left = 0
        Top = 63
        Width = 337
        Height = 603
        Align = alLeft
        AllowedOperations = []
        AutoFitColWidths = True
        Color = clBtnFace
        DataSource = Query.S_QueryClients
        DynProps = <>
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        IndicatorOptions = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        OnCellClick = TB_ClientSelectDolgCellClick
        OnGetCellParams = TB_ClientSelectDolgGetCellParams
        OnKeyUp = TB_ClientSelectDolgKeyUp
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'C_TYPE'
            Footers = <>
            ImageList = SysContainer.IL_Customers
            MaxWidth = 16
            MinWidth = 16
            Title.Alignment = taCenter
            Title.Caption = '.'
            Width = 16
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            MinWidth = 140
            Title.Alignment = taCenter
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEBT'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '#.##'
            Footer.FieldName = 'DEBT'
            Footer.ValueType = fvtSum
            Footers = <>
            MinWidth = 60
            Title.Alignment = taCenter
            Title.Caption = #1041#1072#1083#1072#1085#1089
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            OnGetCellParams = TB_ClientSelectDolgColumns2GetCellParams
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '#'
            DynProps = <>
            EditButtons = <>
            FieldName = 'DELAY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1090#1089#1088'.'
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 36
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object TB_Accounting_panel: TPanel
        Left = 343
        Top = 63
        Width = 820
        Height = 603
        Align = alClient
        TabOrder = 2
        object TB_Accounting: TDBGridEh
          Left = 1
          Top = 17
          Width = 818
          Height = 585
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
          TabOrder = 0
          OnDblClick = TB_AccountingDblClick
          OnGetCellParams = TB_AccountingGetCellParams
          OnKeyDown = TB_AccountingKeyDown
          OnKeyUp = TB_AccountingKeyUp
          OnMouseDown = TB_AccountingMouseDown
          OnMouseUp = TB_AccountingMouseUp
          Columns = <
            item
              Alignment = taLeftJustify
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'A_TYPE'
              Footers = <>
              ImageList = SysContainer.IL_Accounting
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
              Alignment = taLeftJustify
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'A_TYPE'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
              Width = 150
              OnGetCellParams = TB_AccountingColumns3GetCellParams
            end
            item
              CellButtons = <>
              DisplayFormat = '#.##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'SUMM_OUT'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1056#1072#1089#1093#1086#1076
              Width = 110
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DisplayFormat = '#.##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'SUMM_IN'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1088#1080#1093#1086#1076
              Width = 110
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
        object acc_date_panel: TPanel
          Left = 1
          Top = 1
          Width = 818
          Height = 16
          Align = alTop
          BevelOuter = bvLowered
          Caption = #1054#1090#1095#1105#1090' '#1079#1072' '#1085#1077#1076#1077#1083#1102
          Color = clGradientActiveCaption
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object dxBarDockControl6: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
    end
    object P_DayReport: TcxTabSheet
      Caption = 'P_DayReport'
      ImageIndex = 26
      object TB_DayReport: TDBGridEh
        Left = 0
        Top = 0
        Width = 1163
        Height = 666
        Align = alClient
        DataSource = Query.S_DayReport
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUST_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Width = 272
          end
          item
            CellButtons = <>
            DisplayFormat = '#.##;-#.##; '
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMM_OUT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1072#1089#1093#1086#1076
            Width = 90
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = '#.##;-#.##; '
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMM_IN'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1080#1093#1086#1076
            Width = 90
          end
          item
            CellButtons = <>
            DisplayFormat = '#.##;-#.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'DELTA'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1077#1083#1100#1090#1072
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object sb_DayReport: TPanel
        Left = 0
        Top = 666
        Width = 1163
        Height = 16
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object Panel20: TPanel
          Left = 1
          Top = 1
          Width = 150
          Height = 14
          Align = alLeft
          BevelOuter = bvLowered
          TabOrder = 0
          object Label47: TLabel
            Left = 1
            Top = 1
            Width = 38
            Height = 12
            Align = alLeft
            Caption = #1057#1091#1084#1084#1072': '
            ExplicitHeight = 13
          end
          object Label50: TLabel
            Left = 39
            Top = 1
            Width = 15
            Height = 12
            Align = alLeft
            Caption = '---'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
        object Panel21: TPanel
          Left = 151
          Top = 1
          Width = 150
          Height = 14
          Align = alLeft
          BevelOuter = bvLowered
          TabOrder = 1
          object Label51: TLabel
            Left = 1
            Top = 1
            Width = 39
            Height = 12
            Align = alLeft
            Caption = '   '#1042#1079#1103#1083': '
            ExplicitHeight = 13
          end
          object Label52: TLabel
            Left = 40
            Top = 1
            Width = 15
            Height = 12
            Align = alLeft
            Caption = '---'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
        object Panel22: TPanel
          Left = 301
          Top = 1
          Width = 150
          Height = 14
          Align = alLeft
          BevelOuter = bvLowered
          TabOrder = 2
          object Label53: TLabel
            Left = 1
            Top = 1
            Width = 49
            Height = 12
            Align = alLeft
            Caption = '   '#1054#1090#1076#1072#1083': '
            ExplicitHeight = 13
          end
          object Label54: TLabel
            Left = 50
            Top = 1
            Width = 15
            Height = 12
            Align = alLeft
            Caption = '---'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
        end
      end
    end
    object P_AccReport: TcxTabSheet
      Caption = 'P_AccReport'
      ImageIndex = 20
      object dxBarDockControl12: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 31
        Align = dalTop
        BarManager = BarManager
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 31
        Width = 1163
        Height = 651
        Align = alClient
        TabOrder = 1
        object TB_AccReport: TDBGridEh
          Left = 10
          Top = 28
          Width = 401
          Height = 407
          AutoFitColWidths = True
          Ctl3D = True
          DataSource = Query.S_AccReport
          DynProps = <>
          EditActions = [geaCopyEh, geaSelectAllEh]
          FooterParams.Color = clWindow
          IndicatorOptions = []
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = '- '#1053#1045#1058' '#1044#1040#1053#1053#1067#1061' -'
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Title.Font.Charset = RUSSIAN_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 250
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DisplayFormat = '0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'DEBT'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1041#1072#1083#1072#1085#1089
              Title.Font.Charset = RUSSIAN_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 128
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object lbl_begin_money_in_goods: TcxLabel
          Left = 784
          Top = 118
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_dima_money: TcxLabel
          Left = 784
          Top = 176
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_sasha_money: TcxLabel
          Left = 784
          Top = 199
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_dolgi: TcxLabel
          Left = 784
          Top = 95
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_suppl_dolg: TcxLabel
          Left = 784
          Top = 72
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_rashodi: TcxLabel
          Left = 784
          Top = 222
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_all_arrived: TcxLabel
          Left = 784
          Top = 26
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_all_saled: TcxLabel
          Left = 784
          Top = 49
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_dohod: TcxLabel
          Left = 784
          Top = 291
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_end_money_in_goods: TcxLabel
          Left = 784
          Top = 141
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_salary: TcxLabel
          Left = 691
          Top = 245
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object lbl_rent: TcxLabel
          Left = 691
          Top = 268
          Caption = '0.00'
          ParentFont = False
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
          CaptionOptions.Layout = clTop
          Control = TB_AccReport
          ControlOptions.OriginalHeight = 407
          ControlOptions.OriginalWidth = 401
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1044#1077#1085#1100#1075#1080' '#1074' '#1090#1086#1074#1072#1088#1077' '#1085#1072' '#1085#1072#1095#1072#1083#1100#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' ('#1089#1087#1077#1094'. '#1087#1088#1072#1081#1089')'
          Control = lbl_begin_money_in_goods
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1044#1080#1084#1072
          Control = lbl_dima_money
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1057#1072#1096#1072
          Control = lbl_sasha_money
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1044#1086#1083#1075' '#1082#1083#1080#1077#1085#1090#1086#1074
          Control = lbl_dolgi
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1044#1086#1083#1075' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084
          Control = lbl_suppl_dolg
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1054#1092#1080#1089#1085#1099#1077' '#1088#1072#1089#1093#1086#1076#1099' '#1079#1072' '#1087#1077#1088#1080#1086#1076
          Control = lbl_rashodi
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1047#1072#1082#1091#1087#1083#1077#1085#1086' '#1085#1072' '#1089#1091#1084#1084#1091
          Control = lbl_all_arrived
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1055#1088#1086#1076#1072#1085#1086' '#1085#1072' '#1089#1091#1084#1084#1091
          Control = lbl_all_saled
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1063#1080#1089#1090#1099#1081' '#1076#1086#1093#1086#1076' '#1079#1072' '#1087#1077#1088#1080#1086#1076
          Control = lbl_dohod
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
          Index = 7
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1044#1077#1085#1100#1075#1080' '#1074' '#1090#1086#1074#1072#1088#1077' '#1085#1072' '#1082#1086#1085#1077#1095#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' ('#1089#1087#1077#1094'. '#1087#1088#1072#1081#1089')'
          Control = lbl_end_money_in_goods
          ControlOptions.AlignHorz = ahRight
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 28
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1SpaceItem1: TdxLayoutEmptySpaceItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = 'Empty Space Item'
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1047#1072#1088#1087#1083#1072#1090#1099' '#1079#1072' '#1087#1077#1088#1080#1086#1076
          Control = lbl_salary
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1040#1088#1077#1085#1076#1072
          Control = lbl_rent
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 12
        end
      end
    end
    object P_Production_N: TcxTabSheet
      Caption = 'P_Production_N'
      ImageIndex = 21
      object dxBarDockControl13: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1163
        Height = 63
        Align = dalTop
        BarManager = BarManager
      end
      object TB_Production_N: TDBGridEh
        Left = 0
        Top = 63
        Width = 1163
        Height = 619
        Align = alClient
        AutoFitColWidths = True
        ColumnDefValues.Title.Alignment = taCenter
        Ctl3D = True
        DataSource = Data.S_Production_N
        DynProps = <>
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clBtnFace
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = []
        OddRowColor = 15921906
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghTraceColSizing, dghColumnResize, dghColumnMove]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
        SumList.Active = True
        TabOrder = 1
        TitleParams.Images = SysContainer.SmallImages
        TitleParams.RowHeight = 16
        VertScrollBar.Tracking = False
        VertScrollBar.SmoothStep = True
        OnDblClick = TB_Production_NDblClick
        OnKeyDown = TB_Production_NKeyDown
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = #8470
            Title.EndEllipsis = True
            Title.ImageIndex = 71
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 'dd.mm.yy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = 't'
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPOT_NAME'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clNavy
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1082#1083#1072#1076
            Width = 102
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMMENTS'
            Footers = <>
            Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1080
            Width = 158
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object label_ListName: TcxLabel
    Left = 0
    Top = 124
    Align = alTop
    AutoSize = False
    Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
    ParentColor = False
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Color = clGradientActiveCaption
    Style.Edges = [bTop, bBottom]
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.Shadow = False
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Height = 24
    Width = 1370
    AnchorX = 685
    AnchorY = 136
  end
  object Splitter_TreeClient: TcxSplitter
    Left = 200
    Top = 148
    Width = 5
    Height = 684
    Control = area_tree
  end
  object area_tree: TcxPageControl
    Left = 0
    Top = 148
    Width = 200
    Height = 684
    Align = alLeft
    TabOrder = 5
    Properties.ActivePage = P_Reports
    Properties.ActivateFocusedTab = False
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    OnChange = area_treeChange
    ClientRectBottom = 683
    ClientRectLeft = 1
    ClientRectRight = 199
    ClientRectTop = 1
    object P_Reports: TcxTabSheet
      Caption = #1054#1090#1095#1105#1090#1099
      ImageIndex = 0
      object Tree_Reports: TTreeView
        Left = 0
        Top = 0
        Width = 198
        Height = 682
        Align = alClient
        DoubleBuffered = True
        HideSelection = False
        HotTrack = True
        Images = SysContainer.SmallImages
        Indent = 19
        ParentDoubleBuffered = False
        ReadOnly = True
        RowSelect = True
        ShowButtons = False
        ShowLines = False
        ShowRoot = False
        TabOrder = 0
        OnChange = Tree_ReportsChange
        Items.NodeData = {
          03020000002A0000000800000008000000FFFFFFFFFFFFFFFF00000000000000
          000400000001061E0442044704510442044B04420000002200000022000000FF
          FFFFFFFFFFFFFF00000000000000000000000001121E0441044204300442043A
          04380420003D043004200041043A043B0430043404300445043C000000000000
          0000000000FFFFFFFFFFFFFFFF000000000000000000000000010F1E04420447
          045104420420003704300420003F043504400438043E043404380000001E0000
          001E000000FFFFFFFFFFFFFFFF000000000000000000000000010D1E04420447
          04510442042000370430042000340435043D044C04280000004A0000004A0000
          00FFFFFFFFFFFFFFFF000000000000000000000000010514043E043B04330438
          043C0000002700000027000000FFFFFFFFFFFFFFFF0000000000000000020000
          00010F1F0435044704300442043D044B04350420003E0442044704350442044B
          04320000004900000049000000FFFFFFFFFFFFFFFF0000000000000000000000
          00010A1F0440043004390441042D003B043804410442044C0000004900000049
          000000FFFFFFFFFFFFFFFF00000000000000000000000001171E043104490438
          04390420003E0441044204300442043E043A0420003D043004200041043A043B
          04300434043504}
      end
    end
    object P_Documents: TcxTabSheet
      Caption = 'P_Documents'
      ImageIndex = 1
      object Tree_Docs: TTreeView
        Left = 0
        Top = 0
        Width = 198
        Height = 682
        Align = alClient
        DoubleBuffered = True
        HideSelection = False
        Images = SysContainer.SmallImages
        Indent = 35
        ParentDoubleBuffered = False
        ReadOnly = True
        RowSelect = True
        ShowLines = False
        ShowRoot = False
        TabOrder = 0
        OnChange = Tree_DocsChange
        OnCustomDrawItem = Tree_DocsCustomDrawItem
        Items.NodeData = {
          0307000000440000002900000029000000FFFFFFFFFFFFFFFF00000000000000
          000200000001131F044004380445043E0434043D044B04350420003D0430043A
          043B04300434043D044B043504340000003400000034000000FFFFFFFFFFFFFF
          FF000000000000000000000000010B12044B043F043E043B043D0435043D043D
          044B043504320000000400000004000000FFFFFFFFFFFFFFFF00000000000000
          0000000000010A1D04300420003E04470435044004350434043804440000002A
          0000002A000000FFFFFFFFFFFFFFFF0000000000000000020000000113200430
          04410445043E0434043D044B04350420003D0430043A043B04300434043D044B
          043504340000003400000034000000FFFFFFFFFFFFFFFF000000000000000000
          000000010B12044B043F043E043B043D0435043D043D044B0435043200000004
          00000004000000FFFFFFFFFFFFFFFF000000000000000000000000010A1D0430
          0420003E04470435044004350434043804360000006200000062000000FFFFFF
          FFFFFFFFFF000000000000000002000000010C1F0440043E043804370432043E
          0434044104420432043E04340000003400000034000000FFFFFFFFFFFFFFFF00
          0000000000000000000000010B12044B043F043E043B043D0435043D043D044B
          043504320000000400000004000000FFFFFFFFFFFFFFFF000000000000000000
          000000010A1D04300420003E04470435044004350434043804460000002B0000
          002B000000FFFFFFFFFFFFFFFF00000000000000000200000001141F04350440
          04350445043E0434043D044B04350420003D0430043A043B04300434043D044B
          043504340000003400000034000000FFFFFFFFFFFFFFFF000000000000000000
          000000010B12044B043F043E043B043D0435043D043D044B0435043200000004
          00000004000000FFFFFFFFFFFFFFFF000000000000000000000000010A1D0430
          0420003E04470435044004350434043804420000002D0000002D000000FFFFFF
          FFFFFFFFFF000000000000000002000000011212043E04370432044004300442
          0420003F043E044104420430043204490438043A044304340000003400000034
          000000FFFFFFFFFFFFFFFF000000000000000000000000010B12044B043F043E
          043B043D0435043D043D044B043504320000000400000004000000FFFFFFFFFF
          FFFFFF000000000000000000000000010A1D04300420003E0447043504400435
          0434043804480000002C0000002C000000FFFFFFFFFFFFFFFF00000000000000
          0002000000011512043E043704320440043004420420003E04420420003F043E
          043A0443043F043004420435043B044F04340000003400000034000000FFFFFF
          FFFFFFFFFF000000000000000000000000010B12044B043F043E043B043D0435
          043D043D044B043504320000000400000004000000FFFFFFFFFFFFFFFF000000
          000000000000000000010A1D04300420003E044704350440043504340438043A
          0000001500000015000000FFFFFFFFFFFFFFFF00000000000000000000000001
          0E1A043004410441043E04320430044F0420003A043D04380433043004}
      end
    end
    object P_Classifiers: TcxTabSheet
      Caption = 'P_Classifiers'
      ImageIndex = 3
      object Tree_Classifiers: TTreeView
        Left = 0
        Top = 0
        Width = 198
        Height = 682
        Align = alClient
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        DoubleBuffered = True
        HideSelection = False
        HotTrack = True
        Images = SysContainer.SmallImages
        Indent = 19
        ParentDoubleBuffered = False
        ReadOnly = True
        RowSelect = True
        ShowButtons = False
        ShowLines = False
        ShowRoot = False
        TabOrder = 0
        OnChange = Tree_ClassifiersChange
        OnChanging = Tree_ClassifiersChanging
        Items.NodeData = {
          0308000000360000001600000016000000FFFFFFFFFFFFFFFF00000000000000
          0000000000010C220438043F044B04200042043E043204300440043E0432042A
          0000001700000017000000FFFFFFFFFFFFFFFF00000000000000000000000001
          0621043A043B04300434044B04440000001800000018000000FFFFFFFFFFFFFF
          FF00000000000000000000000001132404380440043C044B0420003F0440043E
          043804370432043E0434043804420435043B0438043400000019000000190000
          00FFFFFFFFFFFFFFFF000000000000000000000000010B1A044304400441044B
          042000320430043B044E044204440000001A0000001A000000FFFFFFFFFFFFFF
          FF00000000000000000000000001131F043E044104420430043204490438043A
          0438042000280041044204300440044B0435042900320000001A0000001A0000
          00FFFFFFFFFFFFFFFF000000000000000000000000010A1A043E044204400430
          04330435043D0442044B04480000001B0000001B000000FFFFFFFFFFFFFFFF00
          000000000000000000000001151A043B04380435043D0442044B04200034043B
          044F042000430447043504420430042000460435043D04340000001F0000001F
          000000FFFFFFFFFFFFFFFF000000000000000002000000010B1F044004300439
          0441042D003B043804410442044B044A0000002400000024000000FFFFFFFFFF
          FFFFFF00000000000000000000000001162104420430043D0434043004400442
          043D044B04390420003F0440043004390441042D003B043804410442042C0000
          004600000046000000FFFFFFFFFFFFFFFF00000000000000000000000001071A
          043E044004370438043D043004}
      end
    end
  end
  object FindDialog: TFindDialog
    Options = [frDown, frHideMatchCase, frHideWholeWord, frHideUpDown]
    OnFind = FindDialogFind
    Left = 344
    Top = 320
  end
  object ApplicationEvents1: TApplicationEvents
    OnShortCut = ApplicationEvents1ShortCut
    Left = 344
    Top = 368
  end
  object Timer1: TTimer
    Interval = 400
    OnTimer = Timer1Timer
    Left = 344
    Top = 416
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1060#1072#1081#1083
      'Default'
      #1044#1086#1082#1091#1084#1077#1085#1090#1099
      #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      #1050#1083#1080#1077#1085#1090#1099
      #1069#1082#1089#1087#1086#1088#1090' '#1074' MS Excel')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = SysContainer.SmallImages
    ImageOptions.LargeImages = SysContainer.BigImages
    ImageOptions.MakeDisabledImagesFaded = True
    ImageOptions.StretchGlyphs = False
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    MenuAnimations = maFade
    NotDocking = [dsTop]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 344
    Top = 512
    PixelsPerInch = 96
    object rib_bar_importprices: TdxBar
      Caption = #1042#1085#1077#1096#1085#1080#1077' '#1087#1088#1072#1081#1089#1099
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 306
      FloatTop = 214
      FloatClientWidth = 71
      FloatClientHeight = 24
      ItemLinks = <
        item
          Visible = True
          ItemName = 'rib_btn_ImportPrice'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'rib_btn_ImpPricesClients'
        end
        item
          Visible = True
          ItemName = 'rib_btn_BlackListImport'
        end
        item
          Visible = True
          ItemName = 'rib_btn_UnsortedImport'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_settings: TdxBar
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      CaptionButtons = <>
      DockedLeft = 503
      DockedTop = 0
      FloatLeft = 169
      FloatTop = 141
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'rib_btn_ReportEditor'
        end
        item
          Visible = True
          ItemName = 'rib_btn_Settings'
        end
        item
          Visible = True
          ItemName = 'btn_changepass'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_documents: TdxBar
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 239
      FloatTop = 219
      FloatClientWidth = 51
      FloatClientHeight = 24
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'rib_btn_ArrBills'
        end
        item
          Visible = True
          ItemName = 'rib_btn_SaleBills'
        end
        item
          Visible = True
          ItemName = 'rib_btn_ProdBills'
        end
        item
          Visible = True
          ItemName = 'rib_btn_MoveBills'
        end
        item
          Visible = True
          ItemName = 'rib_btn_RetSupplBills'
        end
        item
          Visible = True
          ItemName = 'rib_btn_retcustBills'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_money: TdxBar
      Caption = #1054#1090#1095#1105#1090#1099
      CaptionButtons = <>
      DockedLeft = 617
      DockedTop = 0
      FloatLeft = 169
      FloatTop = 141
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'rib_btn_Kassa'
        end
        item
          Visible = True
          ItemName = 'rib_btn_Accounting'
        end
        item
          Visible = True
          ItemName = 'rib_btn_Val'
        end
        item
          Visible = True
          ItemName = 'rib_btn_MoneyInGoods'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_classifiers: TdxBar
      Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 169
      FloatTop = 141
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'rib_btn_Depots'
        end
        item
          Visible = True
          ItemName = 'rib_btn_Customers'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_prices: TdxBar
      Caption = #1055#1088#1072#1081#1089#1099
      CaptionButtons = <>
      DockedLeft = 912
      DockedTop = 0
      FloatLeft = 169
      FloatTop = 141
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'rib_btn_PriceList'
        end
        item
          Visible = True
          ItemName = 'rib_btn_GoodsOnDepots'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'rib_btn_HistoryGoods'
        end
        item
          Visible = True
          ItemName = 'rib_btn_CustHistory'
        end
        item
          Visible = True
          ItemName = 'rib_btn_PrintReports'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_sale_filters: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1055#1088#1086#1076#1072#1078#1072' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 0
      FloatTop = 8
      FloatClientWidth = 204
      FloatClientHeight = 103
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ResetSaleFilters'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_TodaySale'
        end
        item
          Visible = True
          ItemName = 'btn_PrevDaySale'
        end
        item
          Visible = True
          ItemName = 'btn_NextDaySale'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 132
          Visible = True
          ItemName = 'edit_sale_date'
        end
        item
          Visible = True
          ItemName = 'btn_sale_reset_date'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 172
          Visible = True
          ItemName = 'edit_sale_customer'
        end
        item
          Visible = True
          ItemName = 'btn_sale_reset_customer'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_Statusbar: TdxBar
      Caption = #1055#1086#1083#1086#1089#1072' '#1087#1088#1086#1075#1088#1077#1089#1089#1072
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1108
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'progressbar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object rib_bar_sale_control: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1055#1088#1086#1076#1072#1078#1072' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 266
      FloatTop = 422
      FloatClientWidth = 51
      FloatClientHeight = 204
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_sale_execute'
        end
        item
          Visible = True
          ItemName = 'btn_sale_return'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_sale_new'
        end
        item
          Visible = True
          ItemName = 'btn_sale_edit'
        end
        item
          Visible = True
          ItemName = 'btn_sale_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_sale_preview'
        end
        item
          Visible = True
          ItemName = 'btn_sale_print'
        end
        item
          Visible = True
          ItemName = 'btn_sale_colprint'
        end
        item
          Visible = True
          ItemName = 'btn_printBills'
        end
        item
          Visible = True
          ItemName = 'btn_sale_profit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_sale_excelexport'
        end
        item
          Visible = True
          ItemName = 'btn_sale_import'
        end
        item
          Visible = True
          ItemName = 'btn_sale_export'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_sale_pay'
        end
        item
          Visible = True
          ItemName = 'btnColorfulGrid'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_arr_filters: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1047#1072#1082#1091#1087#1082#1072' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 520
      FloatTop = 253
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_arr_reset'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_arr_today'
        end
        item
          Visible = True
          ItemName = 'btn_arr_prevday'
        end
        item
          Visible = True
          ItemName = 'btn_arr_nextday'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 111
          Visible = True
          ItemName = 'edit_arr_date'
        end
        item
          Visible = True
          ItemName = 'btn_arr_resetdate'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 187
          Visible = True
          ItemName = 'edit_arr_supplier'
        end
        item
          Visible = True
          ItemName = 'btn_arr_reset_supplier'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 184
          Visible = True
          ItemName = 'edit_arr_depot'
        end
        item
          Visible = True
          ItemName = 'btn_arr_reset_depot'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_arr_control: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1047#1072#1082#1091#1087#1082#1072' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 321
      FloatTop = 251
      FloatClientWidth = 71
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_arr_execute'
        end
        item
          Visible = True
          ItemName = 'btn_arr_return'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_arr_add'
        end
        item
          Visible = True
          ItemName = 'btn_arr_edit'
        end
        item
          Visible = True
          ItemName = 'btn_arr_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_arr_preview'
        end
        item
          Visible = True
          ItemName = 'btn_arr_print'
        end
        item
          Visible = True
          ItemName = 'btn_arr_colprint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_arr_exportexcel'
        end
        item
          Visible = True
          ItemName = 'btn_arr_import'
        end
        item
          Visible = True
          ItemName = 'btn_arr_export'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_moves_filters: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1055#1077#1088#1077#1093#1086#1076' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 227
      FloatTop = 288
      FloatClientWidth = 190
      FloatClientHeight = 175
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_moves_reset_all'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_moves_today'
        end
        item
          Visible = True
          ItemName = 'btn_moves_prevday'
        end
        item
          Visible = True
          ItemName = 'btn_moves_nextday'
        end
        item
          Visible = True
          ItemName = 'edit_moves_date'
        end
        item
          Visible = True
          ItemName = 'btn_moves_reset_date'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 127
          Visible = True
          ItemName = 'edit_moves_from'
        end
        item
          Visible = True
          ItemName = 'btn_moves_reset_from'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 124
          Visible = True
          ItemName = 'edit_moves_to'
        end
        item
          Visible = True
          ItemName = 'btn_moves_reset_to'
        end>
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_moves_control: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1055#1077#1088#1077#1093#1086#1076' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_moves_execute'
        end
        item
          Visible = True
          ItemName = 'btn_moves_return'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_moves_add'
        end
        item
          Visible = True
          ItemName = 'btn_moves_edit'
        end
        item
          Visible = True
          ItemName = 'btn_moves_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_moves_preview'
        end
        item
          Visible = True
          ItemName = 'btn_moves_print'
        end
        item
          Visible = True
          ItemName = 'btn_moves_cennik'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_moves_exportexcel'
        end
        item
          Visible = True
          ItemName = 'btn_moves_import'
        end
        item
          Visible = True
          ItemName = 'btn_moves_export'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_rc_control: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl4
      DockedDockControl = dxBarDockControl4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 995
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_rc_execute'
        end
        item
          Visible = True
          ItemName = 'btn_rc_return'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rc_new'
        end
        item
          Visible = True
          ItemName = 'btn_rc_edit'
        end
        item
          Visible = True
          ItemName = 'btn_rc_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rc_preview'
        end
        item
          Visible = True
          ItemName = 'btn_rc_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rc_exportexcel'
        end
        item
          Visible = True
          ItemName = 'btn_rc_import'
        end
        item
          Visible = True
          ItemName = 'btn_rc_export'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_rc_filters: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl4
      DockedDockControl = dxBarDockControl4
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 456
      FloatTop = 310
      FloatClientWidth = 173
      FloatClientHeight = 95
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_rc_reset_all'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rc_today'
        end
        item
          Visible = True
          ItemName = 'btn_rc_prevday'
        end
        item
          Visible = True
          ItemName = 'btn_rc_nextday'
        end
        item
          Visible = True
          ItemName = 'edit_rc_date'
        end
        item
          Visible = True
          ItemName = 'btn_rc_reset_date'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 180
          Visible = True
          ItemName = 'edit_rc_customer'
        end
        item
          Visible = True
          ItemName = 'btn_rc_reset_customer'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 149
          Visible = True
          ItemName = 'edit_rc_depot'
        end
        item
          Visible = True
          ItemName = 'btn_rc_reset_depot'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_rs_control: TdxBar
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl5
      DockedDockControl = dxBarDockControl5
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_rs_execute'
        end
        item
          Visible = True
          ItemName = 'btn_rs_return'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rs_add'
        end
        item
          Visible = True
          ItemName = 'btn_rs_edit'
        end
        item
          Visible = True
          ItemName = 'btn_rs_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rs_preview'
        end
        item
          Visible = True
          ItemName = 'btn_rs_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rs_exportexcel'
        end
        item
          Visible = True
          ItemName = 'btn_rs_import'
        end
        item
          Visible = True
          ItemName = 'btn_rs_export'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_rs_filters: TdxBar
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl5
      DockedDockControl = dxBarDockControl5
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_rs_reset_all'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rs_today'
        end
        item
          Visible = True
          ItemName = 'btn_rs_prevday'
        end
        item
          Visible = True
          ItemName = 'btn_rs_nextday'
        end
        item
          Visible = True
          ItemName = 'edit_rs_date'
        end
        item
          Visible = True
          ItemName = 'btn_rs_reset_date'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 179
          Visible = True
          ItemName = 'edit_rs_client'
        end
        item
          Visible = True
          ItemName = 'btn_rs_reset_client'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_accounting_control: TdxBar
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl6
      DockedDockControl = dxBarDockControl6
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edit_acc_datefrom'
        end
        item
          Visible = True
          ItemName = 'btn_acc_reset_datefrom'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edit_acc_dateto'
        end
        item
          Visible = True
          ItemName = 'btn_acc_reset_dateto'
        end
        item
          Visible = True
          ItemName = 'editCustType'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_accounting_filters: TdxBar
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl6
      DockedDockControl = dxBarDockControl6
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_acc_preview'
        end
        item
          Visible = True
          ItemName = 'btn_acc_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_acc_exportexcel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_acc_billshow'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_acc_closedebt'
        end
        item
          Visible = True
          ItemName = 'btn_acc_totaldebt'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_acc_refresh'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_kassa_control: TdxBar
      Caption = #1050#1072#1089#1089#1072' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl7
      DockedDockControl = dxBarDockControl7
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_kassa_add'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_edit'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_kassa_gotobill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_kassa_preview'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_kassa_refresh'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_kassa_filters: TdxBar
      Caption = #1050#1072#1089#1089#1072' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl7
      DockedDockControl = dxBarDockControl7
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_kassa_today'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_prevday'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_nextday'
        end
        item
          Visible = True
          ItemName = 'edit_kassa_date'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_reset_date'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 181
          Visible = True
          ItemName = 'edit_kassa_client'
        end
        item
          Visible = True
          ItemName = 'btn_kassa_reset_client'
        end>
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_clients: TdxBar
      Caption = #1050#1083#1080#1077#1085#1090#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl8
      DockedDockControl = dxBarDockControl8
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_client_new'
        end
        item
          Visible = True
          ItemName = 'btn_client_edit'
        end
        item
          Visible = True
          ItemName = 'btn_client_delete'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_ostatki: TdxBar
      Caption = #1054#1089#1090#1072#1090#1082#1080' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl9
      DockedDockControl = dxBarDockControl9
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ostatki_find'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price_exportexcel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_price: TdxBar
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      CaptionButtons = <>
      DockControl = dxBarDockControl10
      DockedDockControl = dxBarDockControl10
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1181
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_price_new'
        end
        item
          Visible = True
          ItemName = 'btn_price_newon'
        end
        item
          Visible = True
          ItemName = 'btn_price_edit'
        end
        item
          Visible = True
          ItemName = 'btn_price_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price_restore'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price_find'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price_exportexcel'
        end
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_price_refresh'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end>
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_printreport: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1055#1077#1095#1072#1090#1085#1099#1081' '#1086#1090#1095#1105#1090
      CaptionButtons = <>
      DockControl = dxBarDockControl11
      DockedDockControl = dxBarDockControl11
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 318
      FloatTop = 254
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_print_smaller'
        end
        item
          Visible = True
          ItemName = 'combo_print_scale'
        end
        item
          Visible = True
          ItemName = 'btn_print_bigger'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print_first'
        end
        item
          Visible = True
          ItemName = 'btn_print_prev'
        end
        item
          Visible = True
          ItemName = 'btn_print_next'
        end
        item
          Visible = True
          ItemName = 'btn_print_last'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print_find'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print_edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print_settings'
        end
        item
          Visible = True
          ItemName = 'btn_print_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print_open'
        end
        item
          Visible = True
          ItemName = 'btn_print_save'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 107
          Visible = True
          ItemName = 'combo_print_depot'
        end
        item
          Visible = True
          ItemName = 'btn_print_reset_depot'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'check_print_ondepot'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print_prepare'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object rib_bar_arep_control: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1054#1090#1095#1105#1090' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      CaptionButtons = <>
      DockControl = dxBarDockControl12
      DockedDockControl = dxBarDockControl12
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 298
      FloatTop = 237
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 153
          Visible = True
          ItemName = 'edit_arep_from_date'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 158
          Visible = True
          ItemName = 'edit_arep_to_date'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_arep_update'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object rib_bar_prod_filters: TdxBar
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086' - '#1060#1080#1083#1100#1090#1088#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl13
      DockedDockControl = dxBarDockControl13
      DockedLeft = 0
      DockedTop = 32
      FloatLeft = 1398
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_prod_reset_filters'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_prod_today'
        end
        item
          Visible = True
          ItemName = 'btn_prod_prev_day'
        end
        item
          Visible = True
          ItemName = 'btn_prod_next_day'
        end
        item
          Visible = True
          ItemName = 'edit_prod_date'
        end
        item
          Visible = True
          ItemName = 'btn_prod_reset_date'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 165
          Visible = True
          ItemName = 'edit_prod_depot'
        end
        item
          Visible = True
          ItemName = 'btn_prod_reset_depot'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object rib_bar_prod_control: TdxBar
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086' - '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionButtons = <>
      DockControl = dxBarDockControl13
      DockedDockControl = dxBarDockControl13
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1398
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_prod_execute'
        end
        item
          Visible = True
          ItemName = 'btn_prod_return'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_prod_add'
        end
        item
          Visible = True
          ItemName = 'btn_prod_edit'
        end
        item
          Visible = True
          ItemName = 'btn_prod_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object rib_btn_ImportPrice: TdxBarLargeButton
      Action = act_file_importprice
      Category = 0
      LargeImageIndex = 0
      SyncImageIndex = False
      ImageIndex = 20
    end
    object rib_btn_UnsortedImport: TdxBarButton
      Action = act_file_lastunsorted
      Category = 0
      LargeImageIndex = 51
    end
    object rib_btn_BlackListImport: TdxBarButton
      Action = act_file_blacklist
      Category = 0
      LargeImageIndex = 52
    end
    object rib_btn_ImpPricesClients: TdxBarButton
      Action = act_cls_extprices
      Category = 0
      LargeImageIndex = 33
    end
    object rib_btn_ReportEditor: TdxBarLargeButton
      Action = act_file_reportseditor
      Category = 1
      LargeImageIndex = 41
      SyncImageIndex = False
      ImageIndex = 49
    end
    object rib_btn_Settings: TdxBarLargeButton
      Action = act_file_settings
      Category = 1
      LargeImageIndex = 29
    end
    object rib_btn_Depots: TdxBarLargeButton
      Action = act_cls_depots
      Category = 1
      LargeImageIndex = 31
      SyncImageIndex = False
      ImageIndex = 23
    end
    object rib_btn_Customers: TdxBarLargeButton
      Action = act_cls_customers
      Category = 1
      LargeImageIndex = 35
      SyncImageIndex = False
      ImageIndex = 26
    end
    object rib_btn_Suppliers: TdxBarLargeButton
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      Category = 1
      Hint = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      Visible = ivAlways
      LargeImageIndex = 13
    end
    object rib_btn_PriceList: TdxBarLargeButton
      Action = act_cls_pricelist
      Category = 1
      LargeImageIndex = 27
      SyncImageIndex = False
      ImageIndex = 31
    end
    object rib_btn_GoodsOnDepots: TdxBarLargeButton
      Action = act_rep_goodsondepots
      Category = 1
      LargeImageIndex = 2
      SyncImageIndex = False
      ImageIndex = 34
    end
    object rib_btn_HistoryGoods: TdxBarLargeButton
      Action = act_rep_history
      Category = 1
      LargeImageIndex = 23
      SyncImageIndex = False
      ImageIndex = 38
    end
    object rib_btn_MoneyInGoods: TdxBarButton
      Action = act_rep_moneyingoods
      Category = 1
      LargeImageIndex = 50
    end
    object rib_btn_Val: TdxBarButton
      Action = act_rep_valoviydohod
      Category = 1
    end
    object rib_btn_PrintReports: TdxBarLargeButton
      Action = act_rep_Reports
      Category = 1
      LargeImageIndex = 26
      SyncImageIndex = False
      ImageIndex = 39
    end
    object rib_btn_DayReport: TdxBarLargeButton
      Action = act_rep_dayreport
      Category = 1
      LargeImageIndex = 28
      SyncImageIndex = False
      ImageIndex = 30
    end
    object rib_btn_Manufacturers: TdxBarButton
      Action = act_cls_firms
      Category = 1
      LargeImageIndex = 21
    end
    object rib_btn_Curses: TdxBarButton
      Action = act_cls_curses
      Category = 1
      LargeImageIndex = 48
    end
    object rib_btn_GoodTypes: TdxBarButton
      Action = act_cls_goodtypes
      Category = 1
      LargeImageIndex = 49
    end
    object rib_btn_NewSaleBill: TdxBarLargeButton
      Action = act_sale_add
      Category = 1
      LargeImageIndex = 18
      SyncImageIndex = False
      ImageIndex = 2
    end
    object btn_PrevDaySale: TdxBarButton
      Action = act_sale_prevday
      Category = 1
    end
    object btn_NextDaySale: TdxBarButton
      Action = act_sale_nextday
      Category = 1
    end
    object btn_TodaySale: TdxBarButton
      Action = act_sale_today
      Category = 1
    end
    object progressbar: TdxBarProgressItem
      Align = iaCenter
      Caption = #1055#1088#1086#1075#1088#1077#1089#1089
      Category = 1
      Hint = #1055#1088#1086#1075#1088#1077#1089#1089
      Visible = ivAlways
      ShowCaption = False
      Smooth = True
      Step = 1
    end
    object btn_ResetSaleFilters: TdxBarButton
      Action = act_sale_reset
      Category = 1
    end
    object btn_sale_execute: TdxBarButton
      Action = act_sale_execute
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' (F5)'
      Category = 1
    end
    object btn_sale_return: TdxBarButton
      Action = act_sale_return
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' (F5)'
      Category = 1
    end
    object btn_sale_new: TdxBarButton
      Action = act_sale_add
      Category = 1
      LargeImageIndex = 59
    end
    object btn_sale_export: TdxBarButton
      Action = act_sale_export
      Category = 1
    end
    object btn_sale_delete: TdxBarButton
      Action = act_sale_delete
      Category = 1
    end
    object btn_sale_excelexport: TdxBarButton
      Action = act_sale_excelexport
      Category = 1
    end
    object btn_sale_import: TdxBarButton
      Action = act_sale_import
      Category = 1
    end
    object btn_sale_print: TdxBarButton
      Action = act_sale_print
      Category = 1
    end
    object btn_sale_preview: TdxBarButton
      Action = act_sale_preview
      Category = 1
    end
    object btn_sale_edit: TdxBarButton
      Action = act_sale_edit
      Category = 1
    end
    object btn_printBills: TdxBarButton
      Action = act_sale_printperiod
      Category = 1
    end
    object btn_sale_colprint: TdxBarButton
      Action = act_sale_colprint
      Category = 1
    end
    object btn_sale_profit: TdxBarButton
      Action = act_sale_profit
      Category = 1
      ButtonStyle = bsChecked
    end
    object btn_sale_pay: TdxBarButton
      Action = act_sale_pay
      Caption = #1054#1087#1083#1072#1090#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' (F9)'
      Category = 1
    end
    object btn_changepass: TdxBarLargeButton
      Action = act_file_changepass
      Category = 1
      LargeImageIndex = 54
      SyncImageIndex = False
      ImageIndex = 51
    end
    object edit_sale_customer: TcxBarEditItem
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      Category = 1
      Hint = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      Visible = ivAlways
      ShowCaption = True
      Width = 130
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.DropDownRows = 30
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = edit_sale_customerPropertiesCloseUp
    end
    object edit_sale_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_sale_datePropertiesCloseUp
    end
    object btn_arr_execute: TdxBarButton
      Action = act_arr_execute
      Category = 1
    end
    object btn_arr_return: TdxBarButton
      Action = act_arr_return
      Category = 1
    end
    object btn_arr_export: TdxBarButton
      Action = act_arr_export
      Category = 1
    end
    object btn_arr_import: TdxBarButton
      Action = act_arr_import
      Category = 1
    end
    object btn_arr_exportexcel: TdxBarButton
      Action = act_arr_exportexcel
      Category = 1
    end
    object btn_arr_colprint: TdxBarButton
      Action = act_arr_colprint
      Category = 1
    end
    object btn_arr_print: TdxBarButton
      Action = act_arr_print
      Category = 1
    end
    object btn_arr_preview: TdxBarButton
      Action = act_arr_preview
      Category = 1
    end
    object btn_arr_edit: TdxBarButton
      Action = act_arr_edit
      Category = 1
    end
    object btn_arr_delete: TdxBarButton
      Action = act_arr_delete
      Category = 1
    end
    object btn_arr_add: TdxBarButton
      Action = act_arr_add
      Category = 1
      LargeImageIndex = 59
    end
    object btn_arr_reset: TdxBarButton
      Action = act_arr_reset
      Category = 1
    end
    object btn_arr_today: TdxBarButton
      Action = act_arr_today
      Category = 1
    end
    object btn_arr_nextday: TdxBarButton
      Action = act_arr_nextday
      Category = 1
    end
    object btn_arr_prevday: TdxBarButton
      Action = act_arr_prevday
      Category = 1
    end
    object edit_arr_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_arr_datePropertiesCloseUp
    end
    object edit_arr_supplier: TcxBarEditItem
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      Category = 1
      Hint = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.DropDownRows = 20
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = edit_arr_supplierPropertiesCloseUp
    end
    object edit_arr_depot: TdxBarLookupCombo
      Caption = #1057#1082#1083#1072#1076
      Category = 1
      Hint = #1057#1082#1083#1072#1076
      Visible = ivAlways
      OnEnter = SetComboSize
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = edit_arr_depotCloseUp
      AllowResizing = False
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = Query.S_Depots
      RowCount = 10
    end
    object btn_arr_reset_supplier: TdxBarButton
      Action = act_arr_reset_supplier
      Category = 1
    end
    object btn_arr_reset_depot: TdxBarButton
      Action = act_arr_reset_depot
      Category = 1
    end
    object btn_arr_resetdate: TdxBarButton
      Action = act_arr_reset_date
      Category = 1
    end
    object btn_sale_reset_date: TdxBarButton
      Action = act_sale_reset_date
      Category = 1
    end
    object btn_sale_reset_customer: TdxBarButton
      Action = act_sale_reset_customer
      Category = 1
    end
    object btn_moves_execute: TdxBarButton
      Action = act_moves_execute
      Category = 1
    end
    object btn_moves_add: TdxBarButton
      Action = act_moves_add
      Category = 1
      LargeImageIndex = 59
    end
    object btn_moves_return: TdxBarButton
      Action = act_moves_return
      Category = 1
    end
    object btn_moves_import: TdxBarButton
      Action = act_moves_import
      Category = 1
    end
    object btn_moves_delete: TdxBarButton
      Action = act_moves_delete
      Category = 1
    end
    object btn_moves_exportexcel: TdxBarButton
      Action = act_moves_exportexcel
      Category = 1
    end
    object btn_moves_cennik: TdxBarButton
      Action = act_moves_cennik
      Category = 1
    end
    object btn_moves_print: TdxBarButton
      Action = act_moves_print
      Category = 1
    end
    object btn_moves_preview: TdxBarButton
      Action = act_moves_preview
      Category = 1
    end
    object btn_moves_edit: TdxBarButton
      Action = act_moves_edit
      Category = 1
    end
    object btn_moves_export: TdxBarButton
      Action = act_moves_export
      Category = 1
    end
    object btn_moves_reset_all: TdxBarButton
      Action = act_moves_reset_all
      Category = 1
    end
    object btn_moves_reset_to: TdxBarButton
      Action = act_moves_reset_to
      Category = 1
    end
    object btn_moves_reset_from: TdxBarButton
      Action = act_moves_reset_from
      Category = 1
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = #1057#1086' '#1089#1082#1083#1072#1076#1072
      Category = 1
      Hint = #1057#1086' '#1089#1082#1083#1072#1076#1072
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
    end
    object edit_moves_from: TdxBarLookupCombo
      Caption = #1057#1086' '#1089#1082#1083#1072#1076#1072
      Category = 1
      Hint = #1057#1086' '#1089#1082#1083#1072#1076#1072
      Visible = ivAlways
      OnEnter = SetComboSize
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = edit_moves_fromCloseUp
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = Query.S_Depots
      RowCount = 7
    end
    object edit_moves_to: TdxBarLookupCombo
      Caption = #1053#1072' '#1089#1082#1083#1072#1076
      Category = 1
      Hint = #1053#1072' '#1089#1082#1083#1072#1076
      Visible = ivAlways
      OnEnter = SetComboSize
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = edit_moves_toCloseUp
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = Data.S_Depots
      RowCount = 7
    end
    object edit_moves_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_moves_datePropertiesCloseUp
    end
    object btn_moves_nextday: TdxBarButton
      Action = act_moves_nextday
      Category = 1
    end
    object btn_moves_prevday: TdxBarButton
      Action = act_moves_prevday
      Category = 1
    end
    object btn_moves_today: TdxBarButton
      Action = act_moves_today
      Category = 1
    end
    object btn_moves_reset_date: TdxBarButton
      Action = act_moves_reset_date
      Category = 1
    end
    object btn_rc_execute: TdxBarButton
      Action = act_rc_execute
      Category = 1
    end
    object btn_rc_return: TdxBarButton
      Action = act_rc_return
      Category = 1
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_rc_export: TdxBarButton
      Action = act_rc_export
      Category = 1
    end
    object btn_rc_import: TdxBarButton
      Action = act_rc_import
      Category = 1
    end
    object btn_rc_exportexcel: TdxBarButton
      Action = act_rc_exportexcel
      Category = 1
    end
    object btn_rc_print: TdxBarButton
      Action = act_rc_print
      Category = 1
    end
    object btn_rc_preview: TdxBarButton
      Action = act_rc_preview
      Category = 1
    end
    object btn_rc_delete: TdxBarButton
      Action = act_rc_delete
      Category = 1
    end
    object btn_rc_new: TdxBarButton
      Action = act_rc_add
      Category = 1
      LargeImageIndex = 59
    end
    object btn_rc_reset_all: TdxBarButton
      Action = act_rc_reset_all
      Category = 1
    end
    object edit_rc_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_rc_datePropertiesCloseUp
    end
    object btn_rc_reset_date: TdxBarButton
      Action = act_rc_reset_date
      Category = 1
    end
    object btn_rc_today: TdxBarButton
      Action = act_rc_today
      Category = 1
    end
    object btn_rc_nextday: TdxBarButton
      Action = act_rc_nextday
      Category = 1
    end
    object btn_rc_prevday: TdxBarButton
      Action = act_rc_prevday
      Category = 1
    end
    object btn_rc_reset_customer: TdxBarButton
      Action = act_rc_reset_customer
      Category = 1
    end
    object edit_rc_depot: TdxBarLookupCombo
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      OnClick = SetComboSize
      OnCloseUp = edit_rc_depotCloseUp
      RowCount = 7
    end
    object btn_rc_reset_depot: TdxBarButton
      Action = act_rc_reset_depot
      Category = 1
    end
    object edit_rc_customer: TcxBarEditItem
      Caption = #1050#1083#1080#1077#1085#1090
      Category = 1
      Hint = #1050#1083#1080#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.DropDownRows = 25
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = edit_rc_customerPropertiesCloseUp
    end
    object btn_rc_edit: TdxBarButton
      Action = act_rc_edit
      Category = 1
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = act_sale_add
      Category = 1
      ButtonStyle = bsDropDown
      DropDownMenu = popup_newdoc
      LargeImageIndex = 59
      SyncImageIndex = False
      ImageIndex = 2
    end
    object btn_rs_execute: TdxBarButton
      Action = act_rs_execute
      Category = 1
    end
    object btn_rs_return: TdxBarButton
      Action = act_rs_return
      Category = 1
    end
    object btn_rs_add: TdxBarButton
      Action = act_rs_add
      Category = 1
      LargeImageIndex = 59
    end
    object btn_rs_exportexcel: TdxBarButton
      Action = act_rs_exportexcel
      Category = 1
    end
    object btn_rs_print: TdxBarButton
      Action = act_rs_print
      Category = 1
    end
    object btn_rs_preview: TdxBarButton
      Action = act_rs_preview
      Category = 1
    end
    object btn_rs_delete: TdxBarButton
      Action = act_rs_delete
      Category = 1
    end
    object btn_rs_edit: TdxBarButton
      Action = act_rs_edit
      Category = 1
    end
    object btn_rs_import: TdxBarButton
      Action = act_rs_import
      Category = 1
    end
    object btn_rs_export: TdxBarButton
      Action = act_rs_export
      Category = 1
    end
    object btn_rs_reset_all: TdxBarButton
      Action = act_rs_reset_all
      Category = 1
    end
    object btn_rs_prevday: TdxBarButton
      Action = act_rs_prevday
      Category = 1
    end
    object btn_rs_reset_date: TdxBarButton
      Action = act_rs_reset_date
      Category = 1
    end
    object btn_rs_today: TdxBarButton
      Action = act_rs_today
      Category = 1
    end
    object edit_rs_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_rs_datePropertiesCloseUp
    end
    object btn_rs_nextday: TdxBarButton
      Action = act_rs_nextday
      Category = 1
    end
    object btn_rs_reset_client: TdxBarButton
      Action = act_rs_reset_client
      Category = 1
    end
    object edit_rs_client: TcxBarEditItem
      Caption = #1050#1083#1080#1077#1085#1090
      Category = 1
      Hint = #1050#1083#1080#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.DropDownRows = 25
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = edit_rs_clientPropertiesCloseUp
    end
    object dxBarButton1: TdxBarButton
      Action = act_acc_date_month
      Category = 1
      ButtonStyle = bsDropDown
      DropDownMenu = pm_DateRange
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_acc_reset_dateto: TdxBarButton
      Action = act_acc_reset_dateto
      Category = 1
    end
    object btn_acc_reset_datefrom: TdxBarButton
      Action = act_acc_reset_datefrom
      Category = 1
    end
    object dxBarButton10: TdxBarButton
      Action = act_acc_reset_all
      Category = 1
    end
    object edit_acc_datefrom: TcxBarEditItem
      Caption = #1054#1090
      Category = 1
      Hint = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_acc_datefromPropertiesCloseUp
    end
    object edit_acc_dateto: TcxBarEditItem
      Caption = #1044#1086
      Category = 1
      Hint = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_acc_date_toPropertiesCloseUp
    end
    object btn_acc_exportexcel: TdxBarButton
      Action = act_acc_exportexcel
      Category = 1
    end
    object btn_acc_closedebt: TdxBarButton
      Action = act_acc_closedebt
      Category = 1
    end
    object btn_acc_billshow: TdxBarButton
      Action = act_acc_showbill
      Category = 1
    end
    object btn_acc_preview: TdxBarButton
      Action = act_acc_preview
      Category = 1
    end
    object btn_acc_print: TdxBarButton
      Action = act_acc_print
      Category = 1
    end
    object btn_acc_totaldebt: TdxBarButton
      Action = act_acc_totaldebt
      Category = 1
    end
    object btn_acc_refresh: TdxBarButton
      Action = act_acc_refresh
      Category = 1
    end
    object N48: TdxBarButton
      Action = act_acc_date_today
      Category = 1
    end
    object N44: TdxBarButton
      Action = act_acc_date_week
      Category = 1
    end
    object N43: TdxBarButton
      Action = act_acc_date_month
      Category = 1
    end
    object N45: TdxBarButton
      Action = act_acc_date_year
      Category = 1
    end
    object N46: TdxBarButton
      Action = act_acc_date_all
      Category = 1
    end
    object btn_kassa_add: TdxBarButton
      Action = act_kassa_add
      Category = 1
    end
    object btn_kassa_gotobill: TdxBarButton
      Action = act_kass_gotobill
      Category = 1
    end
    object btn_kassa_refresh: TdxBarButton
      Action = act_kassa_refresh
      Category = 1
    end
    object btn_kassa_print: TdxBarButton
      Action = act_kassa_print
      Category = 1
    end
    object btn_kassa_preview: TdxBarButton
      Action = act_kassa_preview
      Category = 1
    end
    object btn_kassa_edit: TdxBarButton
      Action = act_kassa_edit
      Category = 1
    end
    object btn_kassa_delete: TdxBarButton
      Action = act_kassa_delete
      Category = 1
    end
    object btn_kassa_reset_all: TdxBarButton
      Caption = 'act_kassa_reset_all'
      Category = 1
      Visible = ivAlways
      ImageIndex = 14
    end
    object btn_kassa_reset_date: TdxBarButton
      Action = act_kassa_reset_date
      Category = 1
    end
    object edit_kassa_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      OnChange = edit_kassa_dateChange
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = edit_kassa_datePropertiesCloseUp
    end
    object btn_kassa_today: TdxBarButton
      Action = act_kassa_today
      Category = 1
    end
    object btn_kassa_prevday: TdxBarButton
      Action = act_kassa_prevday
      Category = 1
    end
    object btn_kassa_nextday: TdxBarButton
      Action = act_kassa_nextday
      Category = 1
    end
    object edit_kassa_client: TcxBarEditItem
      Caption = #1050#1083#1080#1077#1085#1090
      Category = 1
      Hint = #1050#1083#1080#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <>
      Properties.OnCloseUp = edit_kassa_clientPropertiesCloseUp
    end
    object btn_kassa_reset_client: TdxBarButton
      Action = act_kassa_reset_client
      Category = 1
    end
    object dxBarButton8: TdxBarButton
      Action = act_ostatki_refresh
      Category = 1
    end
    object btn_price_new: TdxBarButton
      Action = act_price_new
      Category = 1
    end
    object btn_price_find: TdxBarButton
      Action = act_price_find
      Category = 1
    end
    object btn_price_restore: TdxBarButton
      Action = act_price_restore
      Category = 1
    end
    object btn_price_delete: TdxBarButton
      Action = act_price_delete
      Category = 1
    end
    object btn_price_edit: TdxBarButton
      Action = act_price_edit
      Category = 1
    end
    object btn_price_newon: TdxBarButton
      Action = act_price_newon
      Category = 1
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object btn_price_refresh: TdxBarButton
      Action = act_price_refresh
      Category = 1
    end
    object btn_price_exportexcel: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' MS Excel'
      Category = 1
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' MS Excel'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pm_ExcelPriceExport
      ImageIndex = 69
      PaintStyle = psCaptionInMenu
      OnClick = btn_price_exportexcelClick
    end
    object btn_ostatki_find: TdxBarButton
      Action = act_price_find
      Category = 1
    end
    object btn_print_first: TdxBarButton
      Action = act_print_first
      Category = 1
    end
    object btn_print_last: TdxBarButton
      Action = act_print_last
      Category = 1
    end
    object btn_print_edit: TdxBarButton
      Action = act_print_edit
      Category = 1
    end
    object btn_print_settings: TdxBarButton
      Action = act_print_settings
      Category = 1
    end
    object btn_print_print: TdxBarButton
      Action = act_print_print
      Category = 1
    end
    object btn_print_open: TdxBarButton
      Action = act_print_open
      Category = 1
    end
    object btn_print_save: TdxBarButton
      Action = act_print_save
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Caption = '100%'
      Category = 1
      Hint = '100%'
      Visible = ivAlways
      ImageIndex = 81
      PaintStyle = psCaptionGlyph
    end
    object dxBarImageCombo1: TdxBarImageCombo
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFFFF00
        FFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF00FF
        FFFF808000FFFF00FFFFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
        00FFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF0000
        FFFF00FF00FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFF0000FF0000
        FFFFFF00FFFF808000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFC0C0C0FF000000FFFF0000FF8000
        00FF808000FF00FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00FFFFFFFFFFFFFFFFFFFF0000FF000000FFC0C0C0FF000000FFFF0000FF00FF
        FFFF00FF00FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF8080
        00FF800000FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF8000
        00FF0000FFFF808000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF0000
        FFFF800000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFC0C0C0FF}
      Images = SysContainer.SmallImages
      Items.Strings = (
        'wer'
        '34'
        '2623'
        'sds')
      ItemIndex = -1
      ImageIndexes = (
        2
        3
        4
        5)
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.DefaultImageIndex = 81
      Properties.DropDownRows = 9
      Properties.Images = SysContainer.SmallImages
      Properties.Items = <
        item
          Description = '10%'
          ImageIndex = 81
          Value = 10
        end
        item
          Description = '25%'
          ImageIndex = 81
          Tag = 1
          Value = 25
        end
        item
          Description = '50%'
          ImageIndex = 81
          Tag = 2
          Value = 50
        end
        item
          Description = '75%'
          ImageIndex = 81
          Tag = 3
          Value = 75
        end
        item
          Description = '100%'
          ImageIndex = 81
          Tag = 4
          Value = 100
        end
        item
          Description = '150%'
          ImageIndex = 81
          Tag = 5
          Value = 150
        end
        item
          Description = '200%'
          ImageIndex = 81
          Tag = 6
          Value = 200
        end
        item
          Description = #1054#1076#1080#1085' '#1083#1080#1089#1090
          ImageIndex = 82
          Tag = 7
          Value = -1
        end
        item
          Description = #1055#1086' '#1096#1080#1088#1080#1085#1077' '#1089#1090#1088#1072#1085#1080#1094#1099
          ImageIndex = 83
          Tag = 8
          Value = -2
        end>
    end
    object btn_print_prev: TdxBarButton
      Action = act_print_prior
      Category = 1
    end
    object btn_print_next: TdxBarButton
      Action = act_print_next
      Category = 1
    end
    object btn_print_bigger: TdxBarButton
      Action = act_print_bigger
      Category = 1
    end
    object btn_print_smaller: TdxBarButton
      Action = act_print_smaller
      Category = 1
    end
    object btn_print_find: TdxBarButton
      Action = act_print_find
      Category = 1
    end
    object combo_print_scale: TdxBarImageCombo
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFFFF00
        FFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF00FF
        FFFF808000FFFF00FFFFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
        00FFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF0000
        FFFF00FF00FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFF0000FF0000
        FFFFFF00FFFF808000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFC0C0C0FF000000FFFF0000FF8000
        00FF808000FF00FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00FFFFFFFFFFFFFFFFFFFF0000FF000000FFC0C0C0FF000000FFFF0000FF00FF
        FFFF00FF00FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF8080
        00FF800000FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF8000
        00FF0000FFFF808000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF0000
        FFFF800000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFC0C0C0FF}
      OnCloseUp = combo_print_scaleCloseUp
      Items.Strings = (
        '25%'
        '50%'
        '75%'
        '100%'
        '125%'
        '150%'
        '175%'
        '200%'
        #1051#1080#1089#1090' '#1094#1077#1083#1080#1082#1086#1084
        #1055#1086' '#1096#1080#1088#1080#1085#1077' '#1089#1090#1088#1072#1085#1080#1094#1099)
      ItemIndex = -1
      ImageIndexes = (
        -1
        -1
        -1
        -1
        -1
        -1
        -1
        -1
        -1
        -1)
    end
    object combo_print_depot: TdxBarLookupCombo
      Caption = #1057#1082#1083#1072#1076':'
      Category = 1
      Hint = #1057#1082#1083#1072#1076':'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      ShowEditor = False
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = Query.S_Depots
      RowCount = 7
    end
    object btn_print_prepare: TdxBarButton
      Action = act_print_prepare
      Category = 1
    end
    object btn_print_reset_depot: TdxBarButton
      Action = act_print_reset_depot
      Category = 1
    end
    object btn_print_ondepot: TdxBarButton
      Action = act_print_ondepot
      Category = 1
    end
    object check_print_ondepot: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1085#1072#1083#1080#1095#1080#1077
      Category = 1
      Hint = #1058#1086#1083#1100#1082#1086' '#1085#1072#1083#1080#1095#1080#1077
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object btn_admin_fullaccess: TdxBarLargeButton
      Caption = #1040#1076#1084#1080#1085' '#1076#1086#1089#1090#1091#1087
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 25
    end
    object dxBarButton11: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 80
    end
    object edit_arep_to_date: TcxBarEditItem
      Caption = #1044#1086
      Category = 1
      Hint = #1044#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      InternalEditValue = 41499d
    end
    object btn_arep_update: TdxBarButton
      Action = act_arep_update
      Category = 1
    end
    object dxBarButton12: TdxBarButton
      Action = act_rep_acc_report
      Category = 1
    end
    object dxBarEdit1: TdxBarEdit
      Caption = #1054#1090':'
      Category = 1
      Hint = #1054#1090':'
      Visible = ivAlways
      ShowCaption = True
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarDateCombo1: TdxBarDateCombo
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FFFF000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object edit_arep_from_date: TcxBarEditItem
      Caption = #1054#1090
      Category = 1
      Hint = #1054#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      InternalEditValue = 41520d
    end
    object dxBarButton13: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 80
    end
    object dxBarButton14: TdxBarButton
      Action = act_price_recalc_ostatki
      Category = 1
      ImageIndex = 34
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = act_file_recalc_lux
      Category = 1
      LargeImageIndex = 60
    end
    object dxBarButton16: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1074#1089#1077' '#1084#1072#1075#1072#1079#1080#1085#1085#1099#1077' '#1094#1077#1085#1099
      Visible = ivAlways
      ImageIndex = 64
    end
    object dxBarButton18: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Enabled = False
      Hint = 'New Button'
      Visible = ivNever
    end
    object dxBarButton19: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1088#1072#1081#1089#1099
      Category = 1
      Hint = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1088#1072#1081#1089#1099
      Visible = ivAlways
    end
    object dxBarSeparator2: TdxBarSeparator
      Caption = #1054#1089#1090#1072#1083#1100#1085#1086#1077
      Category = 1
      Hint = #1054#1089#1090#1072#1083#1100#1085#1086#1077
      Visible = ivAlways
    end
    object dxBarSeparator3: TdxBarSeparator
      Caption = #1054#1090#1095#1105#1090#1099
      Category = 1
      Hint = #1054#1090#1095#1105#1090#1099
      Visible = ivAlways
    end
    object dxBarSeparator4: TdxBarSeparator
      Caption = #1054#1089#1090#1072#1090#1082#1080
      Category = 1
      Hint = #1054#1089#1090#1072#1090#1082#1080
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = act_rep_top100
      Category = 1
      LargeImageIndex = 61
    end
    object dxBarButton20: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1080' '#1080#1079' '#1087#1088#1072#1081#1089#1072
      Category = 1
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1080' '#1080#1079' '#1087#1088#1072#1081#1089#1072
      Visible = ivAlways
      ImageIndex = 69
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton22: TdxBarButton
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1077#1086#1073#1088#1072#1073#1086#1090#1072#1085#1085#1099#1081' '#1090#1086#1074#1072#1088
      Category = 1
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1083#1077#1076#1091#1102#1097#1077#1084#1091' '#1090#1086#1074#1072#1088#1091' '#1074' '#1074#1099#1076#1077#1083#1077#1085#1080#1080
      Visible = ivAlways
      ImageIndex = 91
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' ('#1053#1072#1083#1080#1095#1080#1077' '#1080' '#1087#1086#1076' '#1079#1072#1082#1072#1079')'
      Category = 1
      Hint = #1050#1086#1089#1084#1077#1090#1080#1082#1072' ('#1053#1072#1083#1080#1095#1080#1077' '#1080' '#1087#1086#1076' '#1079#1072#1082#1072#1079')'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = dxBarButton23Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton24: TdxBarButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1085#1072' '#1082#1086#1089#1084#1077#1090#1080#1082#1091
      Category = 1
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1085#1072' '#1082#1086#1089#1084#1077#1090#1080#1082#1091
      Visible = ivNever
      ImageIndex = 8
    end
    object dxBarButton25: TdxBarButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084
      Category = 1
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084
      Visible = ivNever
    end
    object dxBarButton26: TdxBarButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1082#1086#1089#1084#1077#1090#1080#1082#1091' '#1087#1086' '#1054#1083#1077#1075#1091
      Category = 1
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1082#1086#1089#1084#1077#1090#1080#1082#1091' '#1087#1086' '#1054#1083#1077#1075#1091
      Visible = ivNever
    end
    object dxBarButton27: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1076#1083#1103' '#1079#1072#1082#1072#1079#1072
      Category = 1
      Hint = #1060#1080#1083#1100#1090#1088' '#1076#1083#1103' '#1079#1072#1082#1072#1079#1072
      Visible = ivNever
    end
    object dxBarButton29: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1082#1086#1085#1092#1080#1075#1091#1088#1080#1088#1091#1077#1084#1099#1093' '#1090#1086#1074#1072#1088#1086#1074
      Category = 1
      Hint = #1056#1077#1076#1072#1082#1090#1086#1088' '#1082#1086#1085#1092#1080#1075#1091#1088#1080#1088#1091#1077#1084#1099#1093' '#1090#1086#1074#1072#1088#1086#1074
      Visible = ivAlways
      ImageIndex = 79
    end
    object dxBarButton30: TdxBarButton
      Caption = 'Import'
      Category = 1
      Hint = 'Import'
      Visible = ivAlways
      OnClick = dxBarButton30Click
    end
    object dxBarButton31: TdxBarButton
      Action = act_file_email
      Category = 1
      LargeImageIndex = 62
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = act_file_email
      Category = 1
      LargeImageIndex = 62
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarButton32: TdxBarButton
      Caption = 'SELECTED'
      Category = 1
      Hint = 'SELECTED'
      Visible = ivNever
    end
    object btnColorfulGrid: TdxBarButton
      Caption = #1055#1086#1076#1089#1074#1077#1095#1080#1074#1072#1090#1100' '#1085#1077#1086#1087#1083#1072#1095#1077#1085#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Category = 1
      Hint = #1055#1086#1076#1089#1074#1077#1095#1080#1074#1072#1090#1100' '#1085#1077#1086#1087#1083#1072#1095#1077#1085#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 78
      OnClick = btnColorfulGridClick
    end
    object rib_btn_CustHistory: TdxBarLargeButton
      Action = act_rep_customer_history
      Category = 1
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_shop_edit: TdxBarButton
      Action = act_shop_edit
      Category = 1
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = act_cls_price_shop
      Category = 1
      LargeImageIndex = 63
    end
    object btn_shop_find: TdxBarButton
      Action = act_shop_find
      Category = 1
    end
    object dxBarButton33: TdxBarButton
      Action = act_file_prom_export
      Category = 1
    end
    object dxBarButton34: TdxBarButton
      Action = act_file_prom_import
      Category = 1
    end
    object dxBarButton35: TdxBarButton
      Action = act_file_email
      Category = 1
      Hint = #1055#1086#1095#1090#1086#1074#1072#1103' '#1088#1072#1089#1089#1099#1083#1082#1072
    end
    object dxBarButton36: TdxBarButton
      Action = act_file_email
      Category = 1
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = act_file_email
      Category = 1
      Visible = ivNever
      LargeImageIndex = 62
      SyncImageIndex = False
      ImageIndex = 95
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = act_curs_new
      Category = 1
      LargeImageIndex = 48
    end
    object dxBarButton37: TdxBarButton
      Action = act_curs_new
      Category = 1
    end
    object dxBarButton38: TdxBarButton
      Action = act_curs_delete
      Category = 1
    end
    object dxBarButton39: TdxBarButton
      Action = act_curs_edit
      Category = 1
    end
    object editCustType: TcxBarEditItem
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Images = SysContainer.SmallImages
      Properties.ImmediatePost = True
      Properties.IncrementalFiltering = True
      Properties.Items = <
        item
          Description = #1042#1089#1077
          ImageIndex = 37
          Value = 0
        end
        item
          Description = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
          ImageIndex = 26
          Value = 1
        end
        item
          Description = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
          ImageIndex = 27
          Value = 2
        end>
      Properties.OnEditValueChanged = editCustTypePropertiesEditValueChanged
      InternalEditValue = '0'
    end
    object dxBarButton40: TdxBarButton
      Action = act_price_deselect
      Category = 1
    end
    object dxBarButton41: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Visible = ivAlways
      ImageIndex = 3
      OnClick = act_sale_deleteExecute
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = act_cls_goodtypes
      Category = 1
      LargeImageIndex = 31
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = act_cls_firms
      Category = 1
      LargeImageIndex = 21
    end
    object rib_btn_ProdBills: TdxBarLargeButton
      Action = act_doc_prod_wait
      Category = 1
      LargeImageIndex = 21
    end
    object btn_prod_add: TdxBarButton
      Action = act_prod_new
      Category = 1
    end
    object btn_prod_delete: TdxBarButton
      Action = act_prod_delete
      Category = 1
    end
    object btn_prod_edit: TdxBarButton
      Action = act_prod_edit
      Category = 1
    end
    object btn_prod_execute: TdxBarButton
      Action = act_prod_execute
      Category = 1
    end
    object btn_prod_return: TdxBarButton
      Action = act_prod_return
      Category = 1
    end
    object btn_prod_reset_filters: TdxBarButton
      Action = act_prod_reset
      Category = 1
    end
    object btn_prod_today: TdxBarButton
      Action = act_prod_today
      Category = 1
    end
    object btn_prod_prev_day: TdxBarButton
      Action = act_prod_prev_day
      Category = 1
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object btn_prod_next_day: TdxBarButton
      Action = act_prod_next_day
      Category = 1
    end
    object dxBarButton46: TdxBarButton
      Action = act_prod_print
      Category = 1
    end
    object btn_prod_reset_date: TdxBarButton
      Action = act_prod_reset_date
      Category = 1
    end
    object edit_prod_date: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 1
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnCloseUp = cxBarEditItem3PropertiesCloseUp
    end
    object edit_prod_depot: TdxBarLookupCombo
      Caption = #1057#1082#1083#1072#1076
      Category = 1
      Hint = #1057#1082#1083#1072#1076
      Visible = ivAlways
      OnEnter = edit_prod_depotEnter
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = edit_prod_depotCloseUp
      AllowResizing = False
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = Query.S_Depots
      RowCount = 7
    end
    object btn_prod_reset_depot: TdxBarButton
      Action = act_prod_reset_depot
      Category = 1
    end
    object dxBarButton42: TdxBarButton
      Action = act_prod_preview
      Category = 1
    end
    object rib_btn_ArrBills: TdxBarLargeButton
      Action = act_doc_arr_wait
      Category = 2
      LargeImageIndex = 43
      SyncImageIndex = False
      ImageIndex = 41
    end
    object rib_btn_SaleBills: TdxBarLargeButton
      Action = act_doc_sale_wait
      Category = 2
      LargeImageIndex = 30
      SyncImageIndex = False
      ImageIndex = 42
    end
    object rib_btn_RetSupplBills: TdxBarLargeButton
      Action = act_doc_rs_wait
      Category = 2
      SyncImageIndex = False
      ImageIndex = 45
    end
    object rib_btn_MoveBills: TdxBarLargeButton
      Action = act_doc_moves_wait
      Category = 2
      LargeImageIndex = 42
      SyncImageIndex = False
      ImageIndex = 43
    end
    object rib_btn_retcustBills: TdxBarLargeButton
      Action = act_doc_rc_wait
      Category = 2
      LargeImageIndex = 47
      SyncImageIndex = False
      ImageIndex = 44
    end
    object rib_btn_Kassa: TdxBarLargeButton
      Action = act_doc_kassa
      Category = 2
      LargeImageIndex = 14
      SyncImageIndex = False
      ImageIndex = 40
    end
    object rib_btn_Accounting: TdxBarLargeButton
      Action = act_rep_accounting
      Category = 2
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 37
    end
    object btn_client_new: TdxBarButton
      Action = act_client_new
      Category = 8
    end
    object btn_client_edit: TdxBarButton
      Action = act_client_edit
      Category = 8
    end
    object btn_client_delete: TdxBarButton
      Action = act_client_delete
      Category = 8
    end
    object N25: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1089#1082#1083#1072#1076#1072')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N28: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1089#1082#1083#1072#1076#1072')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N28Click
    end
    object N24: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1086#1074')'
      Category = 9
      Hint = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1086#1074')'
      Visible = ivAlways
      ImageIndex = 69
    end
    object N21: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1086#1074')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N21Click
    end
    object N9: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1086#1074')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N8: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' ('#1042#1077#1089#1100' '#1072#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N2: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089' ('#1042#1077#1089#1100' '#1072#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N2Click
    end
    object N34: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1072')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N34Click
    end
    object N3: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089' ('#1058#1086#1083#1100#1082#1086' '#1085#1072#1083#1080#1095#1080#1077')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N3Click
    end
    object N20: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '#1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089' ('#1058#1086#1083#1100#1082#1086' '#1085#1072#1083#1080#1095#1080#1077')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N20Click
    end
    object N22: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' ('#1074#1089#1077' '#1089#1082#1083#1072#1076#1099') - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' (-2%)'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N41: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' ('#1074#1089#1077' '#1089#1082#1083#1072#1076#1099') - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' (-5%)'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N26: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' ('#1085#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1072') - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' (-2%)'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N42: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' ('#1085#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1072') - '#1057#1087#1077#1094'. '#1087#1088#1072#1081#1089' (-5%)'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N12: TdxBarButton
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Category = 9
      Hint = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N12Click
    end
    object N39: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1072')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N32: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '#1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090' ('#1053#1072#1083#1080#1095#1080#1077')'
      Category = 9
      Hint = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '#1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090' ('#1053#1072#1083#1080#1095#1080#1077')'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N32Click
    end
    object N10: TdxBarButton
      Caption = #1052#1072#1075#1072#1079#1080#1085#1085#1099#1077' '#1094#1077#1085#1099
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
    end
    object N11: TdxBarButton
      Caption = #1052#1072#1075#1072#1079#1080#1085#1085#1099#1077' '#1094#1077#1085#1099' ('#1053#1072#1083#1080#1095#1080#1077' '#1089#1082#1083#1072#1076#1086#1074')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N11Click
    end
    object N151: TdxBarButton
      Caption = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '
      Category = 9
      Hint = #1050#1086#1089#1084#1077#1090#1080#1082#1072' - '
      Visible = ivAlways
      ImageIndex = 69
    end
    object JaDe1: TdxBarButton
      Caption = #1053#1072#1083#1080#1095#1080#1077' '#1087#1072#1088#1092#1102#1084#1077#1088#1080#1080' '#1085#1072' '#1089#1082#1083#1072#1076#1072#1093' ('#1086#1073#1097#1077#1077')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = JaDe1Click
    end
    object N13: TdxBarButton
      Caption = #1053#1072#1083#1080#1095#1080#1077' '#1087#1072#1088#1092#1102#1084#1077#1088#1080#1080' '#1085#1072' '#1089#1082#1083#1072#1076#1072#1093' ('#1090#1086#1083#1100#1082#1086' '#1086#1089#1090#1072#1090#1082#1080')'
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N13Click
    end
    object N36: TdxBarButton
      Caption = #1040#1088#1090#1080#1082#1091#1083#1099' '#1050#1083#1072#1089#1089#1072
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N36Click
    end
    object N38: TdxBarButton
      Caption = #1054#1090#1095#1077#1090' '#1076#1083#1103' '#1079#1072#1082#1091#1087#1082#1080
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N38Click
    end
    object N50: TdxBarButton
      Caption = #1055#1088#1072#1081#1089' '#1085#1080#1096#1072
      Category = 9
      Visible = ivAlways
      ImageIndex = 69
      OnClick = N50Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090' ('#1089' '#1084#1072#1075#1072#1079#1080#1085#1072#1084#1080')'
      Category = 9
      Hint = #1055#1072#1088#1092#1102#1084#1077#1088#1080#1103' - '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090' ('#1089' '#1084#1072#1075#1072#1079#1080#1085#1072#1084#1080')'
      Visible = ivAlways
      ImageIndex = 69
    end
    object dxBarButton15: TdxBarButton
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' '#1076#1083#1103' '#1089#1077#1090#1080' '#1089#1091#1087#1077#1088#1084#1072#1088#1082#1077#1090#1086#1074' '#1056#1054#1057#1058
      Category = 9
      Hint = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' '#1076#1083#1103' '#1089#1077#1090#1080' '#1089#1091#1087#1077#1088#1084#1072#1088#1082#1077#1090#1086#1074' '#1056#1054#1057#1058
      Visible = ivAlways
      ImageIndex = 69
      OnClick = dxBarButton15Click
    end
    object dxBarButton28: TdxBarButton
      Caption = #1055#1088#1072#1081#1089' '#1076#1083#1103' '#1080#1085#1090#1077#1088#1085#1077#1090'-'#1084#1072#1075#1072#1079#1080#1085#1072
      Category = 9
      Hint = #1055#1088#1072#1081#1089' '#1076#1083#1103' '#1080#1085#1090#1077#1088#1085#1077#1090'-'#1084#1072#1075#1072#1079#1080#1085#1072
      Visible = ivAlways
      ImageIndex = 94
      OnClick = dxBarButton28Click
    end
    object rib_group_arr_filter: TdxBarGroup
      Items = (
        'btn_arr_reset'
        'btn_arr_today'
        'btn_arr_nextday'
        'btn_arr_prevday'
        'edit_arr_date'
        'edit_arr_supplier'
        'edit_arr_depot'
        'btn_arr_reset_supplier'
        'btn_arr_reset_depot'
        'btn_arr_resetdate')
    end
    object rib_group_sale_filter: TdxBarGroup
      Items = (
        'btn_PrevDaySale'
        'btn_NextDaySale'
        'btn_TodaySale'
        'btn_ResetSaleFilters'
        'edit_sale_customer'
        'edit_sale_date'
        'btn_sale_reset_date'
        'btn_sale_reset_customer')
    end
    object rib_group_moves_filter: TdxBarGroup
      Items = (
        'btn_moves_reset_all'
        'btn_moves_reset_to'
        'btn_moves_reset_from'
        'edit_moves_from'
        'edit_moves_to'
        'edit_moves_date'
        'btn_moves_nextday'
        'btn_moves_prevday'
        'btn_moves_today'
        'btn_moves_reset_date')
    end
    object rib_group_rc_filter: TdxBarGroup
      Items = (
        'btn_rc_reset_all'
        'edit_rc_date'
        'btn_rc_reset_date'
        'btn_rc_today'
        'btn_rc_nextday'
        'btn_rc_prevday'
        'btn_rc_reset_customer'
        'edit_rc_depot'
        'btn_rc_reset_depot'
        'edit_rc_customer')
    end
    object rib_group_rs_filter: TdxBarGroup
      Items = (
        'btn_rs_reset_all'
        'btn_rs_prevday'
        'btn_rs_reset_date'
        'btn_rs_today'
        'edit_rs_date'
        'btn_rs_nextday'
        'btn_rs_reset_client'
        'edit_rs_client')
    end
    object rib_group_prod_filter: TdxBarGroup
      Items = (
        'btn_prod_reset_filters'
        'btn_prod_today'
        'btn_prod_prev_day'
        'btn_prod_next_day'
        'btn_prod_reset_date'
        'edit_prod_date'
        'edit_prod_depot'
        'btn_prod_reset_depot')
    end
  end
  object EventAlerter: TSIBfibEventAlerter
    Events.Strings = (
      'ARR_N'
      'ENT_ARR_N'
      'ENT_MOVES_N'
      'ENT_PROD_N'
      'ENT_RETCUST_N'
      'ENT_RETSUPPL_N'
      'ENT_SALE_N'
      'GOODS'
      'MOVES_N'
      'PROD_N'
      'RETCUST_N'
      'RETSUPPL_N'
      'SALE_N'
      'USERSCHANGED')
    OnEventAlert = EventAlerterEventAlert
    Database = Data.Database
    AutoRegister = True
    Left = 432
    Top = 272
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    SkinName = 'DevExpressStyle'
    Left = 344
    Top = 560
  end
  object ActionList: TActionList
    Images = SysContainer.SmallImages
    Left = 432
    Top = 320
    object act_curs_new: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072
      Hint = #1053#1086#1074#1099#1081' '#1082#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072
      ImageIndex = 2
    end
    object act_sale_execute: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      OnExecute = act_sale_executeExecute
    end
    object act_sale_return: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnExecute = act_sale_returnExecute
    end
    object act_curs_edit: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1091#1088#1089
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1091#1088#1089
      ImageIndex = 4
    end
    object act_sale_add: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1053#1086#1074#1072#1103' '#1088#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1088#1072#1089#1093#1086#1076#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 2
      OnExecute = act_sale_addExecute
    end
    object act_sale_delete: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 3
      OnExecute = act_sale_deleteExecute
    end
    object act_sale_edit: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 4
      OnExecute = act_sale_editExecute
    end
    object act_sale_preview: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 6
      OnExecute = act_sale_previewExecute
    end
    object act_sale_print: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 5
      OnExecute = act_sale_printExecute
    end
    object act_sale_colprint: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1085#1072' '#1089#1073#1086#1088
      Hint = #1055#1077#1095#1077#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1085#1072' '#1089#1073#1086#1088
      ImageIndex = 7
      OnExecute = act_sale_colprintExecute
    end
    object act_sale_profit: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      AutoCheck = True
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1082#1086#1083#1086#1085#1082#1091' '#1089' '#1087#1088#1080#1073#1099#1083#1100#1102
      GroupIndex = 1
      Hint = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1082#1086#1083#1086#1085#1082#1091' '#1089' '#1087#1088#1080#1073#1099#1083#1100#1102
      ImageIndex = 13
    end
    object act_sale_excelexport: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' Microsoft Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' Microsoft Excel'
      ImageIndex = 69
      OnExecute = act_sale_excelexportExecute
    end
    object act_sale_import: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 10
      OnExecute = act_sale_importExecute
    end
    object act_sale_export: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      ImageIndex = 11
      OnExecute = act_sale_exportExecute
    end
    object act_sale_pay: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1087#1083#1072#1090#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1054#1087#1083#1072#1090#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 12
      OnExecute = act_sale_payExecute
    end
    object act_sale_reset: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1073#1088#1086#1089' '#1074#1089#1077#1093' '#1092#1080#1083#1100#1090#1088#1086#1074
      Hint = #1057#1073#1088#1086#1089' '#1074#1089#1077#1093' '#1092#1080#1083#1100#1090#1088#1086#1074
      ImageIndex = 14
      OnExecute = act_sale_resetExecute
    end
    object act_sale_prevday: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_sale_prevdayExecute
    end
    object act_sale_nextday: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_sale_nextdayExecute
    end
    object act_sale_today: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_sale_todayExecute
    end
    object act_prod_preview: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      ImageIndex = 6
      OnExecute = act_prod_previewExecute
    end
    object act_sale_item_history: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      ImageIndex = 18
      OnExecute = act_sale_item_historyExecute
    end
    object act_sale_item_card: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_sale_item_cardExecute
    end
    object act_sale_excelimport: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' Microsoft Excel'
      Hint = #1048#1084#1087#1086#1088#1090' '#1080#1079' Microsoft Excel'
      ImageIndex = 20
    end
    object act_cls_pricelist: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Hint = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      ImageIndex = 31
      OnExecute = act_classifiersExecute
    end
    object act_cls_goodtypes: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
      Hint = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
      ImageIndex = 22
      OnExecute = act_classifiersExecute
    end
    object act_cls_depots: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1057#1082#1083#1072#1076#1099
      Hint = #1057#1082#1083#1072#1076#1099
      ImageIndex = 23
      OnExecute = act_classifiersExecute
    end
    object act_cls_firms: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1060#1080#1088#1084#1099' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
      Hint = #1060#1080#1088#1084#1099' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
      ImageIndex = 24
      OnExecute = act_classifiersExecute
    end
    object act_cls_curses: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
      Hint = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
      ImageIndex = 25
    end
    object act_cls_suppliers: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      Hint = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      ImageIndex = 26
    end
    object act_cls_customers: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
      Hint = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
      ImageIndex = 26
      OnExecute = act_classifiersExecute
    end
    object act_cls_extprices: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1050#1083#1080#1077#1085#1090#1099' '#1076#1083#1103' '#1091#1095#1105#1090#1072' '#1094#1077#1085
      Hint = #1050#1083#1080#1077#1085#1090#1099' '#1076#1083#1103' '#1091#1095#1105#1090#1072' '#1094#1077#1085
      ImageIndex = 27
      OnExecute = act_classifiersExecute
    end
    object act_rep_goodsondepots: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1086#1089#1090#1072#1090#1082#1080
      Hint = #1058#1086#1074#1072#1088#1085#1099#1077' '#1086#1089#1090#1072#1090#1082#1080
      ImageIndex = 34
      OnExecute = act_rep_goodsondepotsExecute
    end
    object act_rep_lastprices: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1047#1072#1082#1091#1087#1086#1095#1085#1099#1077' '#1094#1077#1085#1099
      Hint = #1047#1072#1082#1091#1087#1086#1095#1085#1099#1077' '#1094#1077#1085#1099
      ImageIndex = 35
    end
    object act_rep_articuls: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1042#1085#1077#1096#1085#1080#1077' '#1072#1088#1090#1080#1082#1091#1083#1099
      Hint = #1042#1085#1077#1096#1085#1080#1077' '#1072#1088#1090#1080#1082#1091#1083#1099
      ImageIndex = 36
    end
    object act_rep_accounting: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099' '#1089' '#1082#1083#1080#1077#1085#1090#1086#1084
      Hint = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099' '#1089' '#1082#1083#1080#1077#1085#1090#1086#1084
      ImageIndex = 37
      OnExecute = act_rep_accountingExecute
    end
    object act_rep_moneyingoods: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1044#1077#1085#1100#1075#1080' '#1074' '#1090#1086#1074#1072#1088#1077
      Hint = #1044#1077#1085#1100#1075#1080' '#1074' '#1090#1086#1074#1072#1088#1077
      ImageIndex = 33
      OnExecute = act_rep_moneyingoodsExecute
    end
    object act_rep_valoviydohod: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1042#1072#1083#1086#1074#1099#1081' '#1076#1086#1093#1086#1076
      Hint = #1042#1072#1083#1086#1074#1099#1081' '#1076#1086#1093#1086#1076' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 32
      OnExecute = act_rep_valoviydohodExecute
    end
    object act_rep_Reports: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Hint = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      ImageIndex = 39
      OnExecute = act_rep_ReportsExecute
    end
    object act_rep_history: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      ImageIndex = 38
      OnExecute = act_rep_historyExecute
    end
    object act_rep_dayreport: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1054#1090#1095#1105#1090' '#1079#1072' '#1076#1077#1085#1100
      Hint = #1054#1090#1095#1105#1090' '#1079#1072' '#1076#1077#1085#1100
      ImageIndex = 30
      OnExecute = act_rep_dayreportExecute
    end
    object act_doc_sale_exec: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      Hint = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      ImageIndex = 42
      OnExecute = act_billsExecute
    end
    object act_doc_sale_wait: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Hint = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      ImageIndex = 42
      OnExecute = act_billsExecute
    end
    object act_doc_arr_exec: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      Hint = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      ImageIndex = 41
      OnExecute = act_billsExecute
    end
    object act_doc_arr_wait: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Hint = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      ImageIndex = 41
      OnExecute = act_billsExecute
    end
    object act_doc_moves_exec: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1055#1077#1088#1077#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      Hint = #1055#1077#1088#1077#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      ImageIndex = 43
      OnExecute = act_billsExecute
    end
    object act_doc_moves_wait: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1055#1077#1088#1077#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      Hint = #1055#1077#1088#1077#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      ImageIndex = 43
      OnExecute = act_billsExecute
    end
    object act_doc_rs_exec: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1042#1086#1079#1074#1088#1072#1090#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      Hint = #1042#1086#1079#1074#1088#1072#1090#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      ImageIndex = 45
      OnExecute = act_billsExecute
    end
    object act_doc_rs_wait: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1042#1086#1079#1074#1088#1072#1090#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Hint = #1042#1086#1079#1074#1088#1072#1090#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      ImageIndex = 45
      OnExecute = act_billsExecute
    end
    object act_doc_rc_exec: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      Hint = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' ('#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077')'
      ImageIndex = 44
      OnExecute = act_billsExecute
    end
    object act_doc_rc_wait: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Hint = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103' ('#1085#1072' '#1086#1095#1077#1088#1077#1076#1080')'
      ImageIndex = 44
      OnExecute = act_billsExecute
    end
    object act_doc_kassa: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1050#1072#1089#1089#1086#1074#1072#1103' '#1082#1085#1080#1075#1072
      Hint = #1050#1072#1089#1089#1086#1074#1072#1103' '#1082#1085#1080#1075#1072
      ImageIndex = 21
      OnExecute = act_billsExecute
    end
    object act_file_importprice: TAction
      Category = #1060#1072#1081#1083
      Caption = #1048#1084#1087#1086#1088#1090' '#1074#1085#1077#1096#1085#1080#1093' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1086#1074
      Hint = #1042#1085#1077#1089#1090#1080' '#1094#1077#1085#1099' '#1080#1079' '#1074#1085#1077#1096#1085#1077#1075#1086' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Excel'
      ImageIndex = 20
      OnExecute = act_file_importpriceExecute
    end
    object act_file_lastunsorted: TAction
      Category = #1060#1072#1081#1083
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1085#1077#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      Enabled = False
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1085#1077#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080' '#1080#1079' '#1087#1088#1072#1081#1089#1072' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
      ImageIndex = 46
      OnExecute = act_file_lastunsortedExecute
    end
    object act_file_blacklist: TAction
      Category = #1060#1072#1081#1083
      Caption = #1055#1086#1079#1080#1094#1080#1080' '#1080#1089#1082#1083#1102#1095#1077#1085#1085#1099#1077' '#1076#1083#1103' '#1080#1084#1087#1086#1088#1090#1072
      Hint = #1055#1086#1079#1080#1094#1080#1080' '#1080#1089#1082#1083#1102#1095#1077#1085#1085#1099#1077' '#1076#1083#1103' '#1080#1084#1087#1086#1088#1090#1072' '#1080#1079' '#1087#1088#1072#1081#1089#1072' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
      ImageIndex = 47
      OnExecute = act_file_blacklistExecute
    end
    object act_file_settings: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 48
      OnExecute = act_file_settingsExecute
    end
    object act_file_reportseditor: TAction
      Category = #1060#1072#1081#1083
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1086#1090#1095#1077#1090#1086#1074
      Hint = #1056#1077#1076#1072#1082#1090#1086#1088' '#1086#1090#1095#1077#1090#1086#1074
      ImageIndex = 49
      OnExecute = act_file_reportseditorExecute
    end
    object act_file_exit: TFileExit
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Hint = #1042#1099#1093#1086#1076#13#10#1047#1072#1082#1088#1099#1074#1072#1077#1090' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077'.'
      ImageIndex = 50
    end
    object act_file_changepass: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      Hint = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      ImageIndex = 51
      OnExecute = act_file_changepassExecute
    end
    object act_sale_printperiod: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 62
      OnExecute = act_sale_printperiodExecute
    end
    object act_arr_execute: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      OnExecute = act_arr_executeExecute
    end
    object act_arr_return: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnExecute = act_arr_returnExecute
    end
    object act_arr_add: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1053#1086#1074#1072#1103' '#1087#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1087#1088#1080#1093#1086#1076#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 2
      OnExecute = act_arr_addExecute
    end
    object act_arr_delete: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 3
      OnExecute = act_arr_deleteExecute
    end
    object act_arr_edit: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 4
      OnExecute = act_arr_editExecute
    end
    object act_arr_preview: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 6
      OnExecute = act_arr_previewExecute
    end
    object act_arr_print: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 5
      OnExecute = act_arr_printExecute
    end
    object act_arr_colprint: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1076#1083#1103' '#1087#1088#1080#1077#1084#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1076#1083#1103' '#1087#1088#1080#1077#1084#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 7
      OnExecute = act_arr_colprintExecute
    end
    object act_arr_exportexcel: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' Microsoft Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' Microsoft Excel'
      ImageIndex = 69
      OnExecute = act_arr_exportexcelExecute
    end
    object act_arr_import: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 10
      OnExecute = act_arr_importExecute
    end
    object act_arr_export: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      ImageIndex = 11
      OnExecute = act_arr_exportExecute
    end
    object act_arr_nextday: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_arr_nextdayExecute
    end
    object act_arr_prevday: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_arr_prevdayExecute
    end
    object act_arr_today: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_arr_todayExecute
    end
    object act_arr_reset: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1042#1089#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080' '#1079#1072' '#1089#1077#1075#1086#1076#1085#1103
      ImageIndex = 14
      OnExecute = act_arr_resetExecute
    end
    object act_arr_importexcel: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' Microsoft Excel'
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' Microsoft Excel'
      ImageIndex = 20
    end
    object act_arr_price_spec: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1072#1081#1089' 2'
      Hint = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
      ImageIndex = 31
      OnExecute = act_arr_price_specExecute
    end
    object act_arr_price_general: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
      Hint = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
      ImageIndex = 31
      OnExecute = act_arr_price_generalExecute
    end
    object act_arr_price_shop1: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1052#1072#1075#1072#1079#1080#1085' ('#1075#1086#1088#1086#1076')'
      Hint = #1052#1072#1075#1072#1079#1080#1085' ('#1075#1086#1088#1086#1076')'
      ImageIndex = 31
      OnExecute = act_arr_price_shop1Execute
    end
    object act_arr_price_shop2: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1052#1072#1075#1072#1079#1080#1085' ('#1073#1072#1079#1072#1088')'
      Hint = #1052#1072#1075#1072#1079#1080#1085' ('#1073#1072#1079#1072#1088')'
      ImageIndex = 31
      OnExecute = act_arr_price_shop2Execute
    end
    object act_arr_history: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      ImageIndex = 18
      OnExecute = act_arr_historyExecute
    end
    object act_arr_itemcard: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_arr_itemcardExecute
    end
    object act_arr_recalcprices: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1072#1081#1089
      ImageIndex = 61
      OnExecute = act_arr_recalcpricesExecute
    end
    object act_arr_reset_date: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_arr_reset_dateExecute
    end
    object act_arr_reset_supplier: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      ImageIndex = 59
      OnExecute = act_arr_reset_supplierExecute
    end
    object act_arr_reset_depot: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      ImageIndex = 59
      OnExecute = act_arr_reset_depotExecute
    end
    object act_sale_reset_date: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_sale_reset_dateExecute
    end
    object act_sale_reset_customer: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102
      ImageIndex = 59
      OnExecute = act_sale_reset_customerExecute
    end
    object act_moves_execute: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      OnExecute = act_moves_executeExecute
    end
    object act_moves_return: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnExecute = act_moves_returnExecute
    end
    object act_moves_add: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1053#1086#1074#1072#1103' '#1087#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Hint = #1053#1086#1074#1072#1103' '#1087#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      ImageIndex = 2
      OnExecute = act_moves_addExecute
    end
    object act_moves_delete: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 3
      OnExecute = act_moves_deleteExecute
    end
    object act_moves_edit: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 4
      OnExecute = act_moves_editExecute
    end
    object act_moves_preview: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 6
      OnExecute = act_moves_previewExecute
    end
    object act_moves_print: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 5
      OnExecute = act_moves_printExecute
    end
    object act_moves_cennik: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1094#1077#1085#1085#1080#1082#1086#1074
      Hint = #1055#1077#1095#1072#1090#1100' '#1094#1077#1085#1085#1080#1082#1086#1074
      ImageIndex = 60
      OnExecute = act_moves_cennikExecute
    end
    object act_moves_exportexcel: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Microsoft Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Microsoft Excel'
      ImageIndex = 69
      OnExecute = act_moves_exportexcelExecute
    end
    object act_moves_import: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 10
      OnExecute = act_moves_importExecute
    end
    object act_moves_export: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      ImageIndex = 11
      OnExecute = act_moves_exportExecute
    end
    object act_moves_history: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      ImageIndex = 18
      OnExecute = act_moves_historyExecute
    end
    object act_moves_itemcard: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_moves_itemcardExecute
    end
    object act_moves_prevday: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_moves_prevdayExecute
    end
    object act_moves_nextday: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_moves_nextdayExecute
    end
    object act_moves_today: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_moves_todayExecute
    end
    object act_moves_reset_all: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      ImageIndex = 14
      OnExecute = act_moves_reset_allExecute
    end
    object act_moves_reset_date: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_moves_reset_dateExecute
    end
    object act_moves_reset_from: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091' - '#1080#1089#1090#1086#1095#1085#1080#1082#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091' - '#1080#1089#1090#1086#1095#1085#1080#1082#1091
      ImageIndex = 59
      OnExecute = act_moves_reset_fromExecute
    end
    object act_moves_reset_to: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091' - '#1087#1088#1080#1077#1084#1085#1080#1082#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091' - '#1087#1088#1080#1077#1084#1085#1080#1082#1091
      ImageIndex = 59
      OnExecute = act_moves_reset_toExecute
    end
    object act_rc_execute: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      OnExecute = act_rc_executeExecute
    end
    object act_rc_return: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnExecute = act_rc_returnExecute
    end
    object act_rc_add: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1053#1086#1074#1099#1081' '#1074#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1072
      Hint = #1053#1086#1074#1099#1081' '#1074#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 2
      OnExecute = act_rc_addExecute
    end
    object act_rc_delete: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 3
      OnExecute = act_rc_deleteExecute
    end
    object act_rc_edit: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 4
      OnExecute = act_rc_editExecute
    end
    object act_rc_preview: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 6
      OnExecute = act_rc_previewExecute
    end
    object act_rc_print: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 5
      OnExecute = act_rc_printExecute
    end
    object act_rc_exportexcel: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Microsoft Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Microsoft Excel'
      ImageIndex = 69
      OnExecute = act_rc_exportexcelExecute
    end
    object act_rc_import: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 10
    end
    object act_rc_export: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      ImageIndex = 11
      OnExecute = act_rc_exportExecute
    end
    object act_rc_prevday: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_rc_prevdayExecute
    end
    object act_rc_nextday: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_rc_nextdayExecute
    end
    object act_rc_today: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_rc_todayExecute
    end
    object act_rc_reset_all: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      ImageIndex = 14
      OnExecute = act_rc_reset_allExecute
    end
    object act_rc_reset_customer: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102
      ImageIndex = 59
      OnExecute = act_rc_reset_customerExecute
    end
    object act_rc_reset_depot: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      ImageIndex = 59
      OnExecute = act_rc_reset_depotExecute
    end
    object act_rc_reset_date: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_rc_reset_dateExecute
    end
    object act_rc_itemcard: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_rc_itemcardExecute
    end
    object act_rc_history: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 18
    end
    object act_rc_percent: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1089' '#1087#1088#1086#1094#1077#1085#1090#1072#1084#1080
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1089' '#1087#1088#1086#1094#1077#1085#1090#1072#1084#1080
      ImageIndex = 61
      OnExecute = act_rc_percentExecute
    end
    object act_rc_price_spec: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
      Hint = #1057#1087#1077#1081'. '#1087#1088#1072#1081#1089
      ImageIndex = 31
      OnExecute = act_rc_price_specExecute
    end
    object act_rc_price_general: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
      Hint = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
      ImageIndex = 31
      OnExecute = act_rc_price_generalExecute
    end
    object act_rc_price_shop1: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1052#1072#1075#1072#1079#1080#1085#1085#1099#1081' '#1087#1088#1072#1081#1089
      Hint = #1052#1072#1075#1072#1079#1080#1085#1085#1099#1081' '#1087#1088#1072#1081#1089
      ImageIndex = 31
      OnExecute = act_rc_price_shop1Execute
    end
    object act_rc_price_shop2: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1041#1072#1079#1072#1088#1085#1099#1081' '#1087#1088#1072#1081#1089
      Hint = #1041#1072#1079#1072#1088#1085#1099#1081' '#1087#1088#1072#1081#1089
      ImageIndex = 31
      OnExecute = act_rc_price_shop2Execute
    end
    object act_rc_price_last: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1094#1077#1085#1099' '#1082#1083#1080#1077#1085#1090#1072
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1094#1077#1085#1099' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 63
      OnExecute = act_rc_price_lastExecute
    end
    object act_rs_execute: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      OnExecute = act_rs_executeExecute
    end
    object act_rs_return: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnExecute = act_rs_returnExecute
    end
    object act_rs_add: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1053#1086#1074#1099#1081' '#1074#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Hint = #1053#1086#1074#1099#1081' '#1074#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      ImageIndex = 2
      OnExecute = act_rs_addExecute
    end
    object act_rs_edit: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 4
      OnExecute = act_rs_editExecute
    end
    object act_rs_delete: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 3
      OnExecute = act_rs_deleteExecute
    end
    object act_rs_preview: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      ImageIndex = 6
      OnExecute = act_rs_previewExecute
    end
    object act_rs_print: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 5
      OnExecute = act_rs_printExecute
    end
    object act_rs_exportexcel: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Microsoft Excel'
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Microsoft Excel'
      ImageIndex = 69
      OnExecute = act_rs_exportexcelExecute
    end
    object act_rs_import: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      Hint = #1048#1084#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 10
    end
    object act_rs_export: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1092#1072#1081#1083
      ImageIndex = 11
      OnExecute = act_rs_exportExecute
    end
    object act_rs_reset_all: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      ImageIndex = 14
      OnExecute = act_rs_reset_allExecute
    end
    object act_rs_reset_date: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_rs_reset_dateExecute
    end
    object act_rs_today: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_rs_todayExecute
    end
    object act_rs_prevday: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_rs_prevdayExecute
    end
    object act_rs_nextday: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_rs_nextdayExecute
    end
    object act_rs_reset_client: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      ImageIndex = 59
      OnExecute = act_rs_reset_clientExecute
    end
    object act_rs_itemcard: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_rs_itemcardExecute
    end
    object act_rs_history: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 18
      OnExecute = act_rs_historyExecute
    end
    object act_rs_lastprices: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1079#1072#1082#1091#1087#1086#1095#1085#1099#1077' '#1094#1077#1085#1099
      Hint = #1055#1088#1086#1089#1090#1072#1074#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1079#1072#1082#1091#1087#1086#1095#1085#1099#1077' '#1094#1077#1085#1099
      ImageIndex = 63
      OnExecute = act_rs_lastpricesExecute
    end
    object act_acc_exportexcel: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091' '#1074' Microsoft Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091' '#1074' Microsoft Excel'
      ImageIndex = 69
      OnExecute = act_acc_exportexcelExecute
    end
    object act_acc_preview: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 6
      OnExecute = act_acc_previewExecute
    end
    object act_acc_print: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 5
      OnExecute = act_acc_printExecute
    end
    object act_acc_showbill: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 19
      OnExecute = act_acc_showbillExecute
    end
    object act_acc_closedebt: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1076#1086#1083#1075#1072' '#1082#1083#1080#1077#1085#1090#1072
      Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1076#1086#1083#1075#1072' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 66
      OnExecute = act_acc_closedebtExecute
    end
    object act_acc_totaldebt: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1054#1073#1097#1080#1081' '#1076#1086#1083#1075' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1076#1072#1090#1091
      Hint = #1054#1073#1097#1080#1081' '#1076#1086#1083#1075' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1076#1072#1090#1091
      ImageIndex = 64
      OnExecute = act_acc_totaldebtExecute
    end
    object act_acc_reset_all: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      ImageIndex = 14
      OnExecute = act_acc_reset_allExecute
    end
    object act_acc_reset_datefrom: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1085#1072#1095#1072#1083#1100#1085#1086#1081' '#1076#1072#1090#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1085#1072#1095#1072#1083#1100#1085#1086#1081' '#1076#1072#1090#1099
      ImageIndex = 59
      OnExecute = act_acc_reset_datefromExecute
    end
    object act_acc_reset_dateto: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1082#1086#1085#1077#1095#1085#1086#1081' '#1076#1072#1090#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1082#1086#1085#1077#1095#1085#1086#1081' '#1076#1072#1090#1099
      ImageIndex = 59
      OnExecute = act_acc_reset_datetoExecute
    end
    object act_acc_refresh: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      ImageIndex = 65
      OnExecute = act_acc_refreshExecute
    end
    object act_acc_date_today: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_acc_date_todayExecute
    end
    object act_acc_date_week: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1085#1077#1076#1077#1083#1103
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1085#1077#1076#1077#1083#1103
      ImageIndex = 17
      OnExecute = act_acc_date_weekExecute
    end
    object act_acc_date_month: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1084#1077#1089#1103#1094
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1084#1077#1089#1103#1094
      ImageIndex = 17
      OnExecute = act_acc_date_monthExecute
    end
    object act_acc_date_year: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1075#1086#1076
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1075#1086#1076
      ImageIndex = 17
      OnExecute = act_acc_date_yearExecute
    end
    object act_acc_date_all: TAction
      Category = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1105#1090#1099
      Caption = #1042#1077#1089#1100' '#1087#1077#1088#1080#1086#1076
      Hint = #1042#1077#1089#1100' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 17
      OnExecute = act_acc_date_allExecute
    end
    object act_kassa_today: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1082#1072#1089#1089#1072
      Hint = #1058#1077#1082#1091#1097#1072#1103' '#1082#1072#1089#1089#1072
      ImageIndex = 17
      OnExecute = act_kassa_todayExecute
    end
    object act_kassa_prevday: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_kassa_prevdayExecute
    end
    object act_kassa_nextday: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_kassa_nextdayExecute
    end
    object act_kassa_reset_client: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      ImageIndex = 59
      OnExecute = act_kassa_reset_clientExecute
    end
    object act_kassa_add: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1053#1086#1074#1072#1103' '#1086#1087#1083#1072#1090#1072
      Hint = #1053#1086#1074#1072#1103' '#1086#1087#1083#1072#1090#1072
      ImageIndex = 2
      OnExecute = act_kassa_addExecute
    end
    object act_kassa_delete: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1083#1072#1090#1091
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1083#1072#1090#1091
      ImageIndex = 3
      OnExecute = act_kassa_deleteExecute
    end
    object act_kassa_edit: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1086#1087#1083#1072#1090#1091
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1086#1087#1083#1072#1090#1091
      ImageIndex = 4
      OnExecute = act_kassa_editExecute
    end
    object act_kass_gotobill: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1086#1087#1083#1072#1095#1080#1074#1072#1077#1084#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1086#1087#1083#1072#1095#1080#1074#1072#1077#1084#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 19
      OnExecute = act_kass_gotobillExecute
    end
    object act_kassa_print: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 5
      OnExecute = act_kassa_printExecute
    end
    object act_kassa_preview: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 6
      OnExecute = act_kassa_previewExecute
    end
    object act_kassa_refresh: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      ImageIndex = 65
      OnExecute = act_kassa_refreshExecute
    end
    object act_kassa_reset_date: TAction
      Category = #1050#1072#1089#1089#1072
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_kassa_reset_dateExecute
    end
    object act_client_new: TAction
      Category = #1050#1083#1080#1077#1085#1090#1099
      Caption = #1053#1086#1074#1099#1081' '#1082#1083#1080#1077#1085#1090
      ImageIndex = 2
      OnExecute = act_client_newExecute
    end
    object act_client_edit: TAction
      Category = #1050#1083#1080#1077#1085#1090#1099
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 4
      OnExecute = act_client_editExecute
    end
    object act_client_delete: TAction
      Category = #1050#1083#1080#1077#1085#1090#1099
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 3
      OnExecute = act_client_deleteExecute
    end
    object act_ostatki_refresh: TAction
      Category = #1054#1089#1090#1072#1090#1082#1080' '#1085#1072' '#1089#1082#1083#1072#1076#1072#1093
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      ImageIndex = 65
      OnExecute = act_ostatki_refreshExecute
    end
    object act_price_new: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1053#1086#1074#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1053#1086#1074#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 2
      OnExecute = act_price_newExecute
    end
    object act_price_newon: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      Hint = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 68
      OnExecute = act_price_newonExecute
    end
    object act_price_edit: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 4
      OnExecute = act_price_editExecute
    end
    object act_price_delete: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 3
      OnExecute = act_price_deleteExecute
    end
    object act_price_restore: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      Hint = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 1
      OnExecute = act_price_restoreExecute
    end
    object act_price_find: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1053#1072#1081#1090#1080' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      Hint = #1053#1072#1081#1090#1080' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 67
      OnExecute = act_price_findExecute
    end
    object act_price_refresh: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      ImageIndex = 65
      OnExecute = act_price_refreshExecute
    end
    object act_his_reset_all: TAction
      Category = #1048#1089#1090#1086#1088#1080#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      ImageIndex = 14
      OnExecute = act_his_reset_allExecute
    end
    object act_his_reset_datefrom: TAction
      Category = #1048#1089#1090#1086#1088#1080#1103
      Caption = 'act_his_reset_datefrom'
      ImageIndex = 59
      OnExecute = act_his_reset_datefromExecute
    end
    object act_his_reset_dateto: TAction
      Category = #1048#1089#1090#1086#1088#1080#1103
      Caption = 'act_his_reset_dateto'
      ImageIndex = 59
      OnExecute = act_his_reset_datetoExecute
    end
    object act_his_reset_client: TAction
      Category = #1048#1089#1090#1086#1088#1080#1103
      Caption = 'act_his_reset_client'
      ImageIndex = 59
      OnExecute = act_his_reset_clientExecute
    end
    object act_his_reset_depot: TAction
      Category = #1048#1089#1090#1086#1088#1080#1103
      Caption = 'act_his_reset_depot'
      ImageIndex = 59
      OnExecute = act_his_reset_depotExecute
    end
    object act_print_prior: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      ImageIndex = 87
      OnExecute = act_print_priorExecute
    end
    object act_print_next: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      ImageIndex = 86
      OnExecute = act_print_nextExecute
    end
    object act_print_first: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1077#1088#1074#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      Hint = #1055#1077#1088#1074#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      ImageIndex = 84
      OnExecute = act_print_firstExecute
    end
    object act_print_last: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      ImageIndex = 85
      OnExecute = act_print_lastExecute
    end
    object act_print_edit: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1088#1072#1074#1080#1090#1100' '#1086#1090#1095#1105#1090
      Hint = #1055#1088#1072#1074#1080#1090#1100' '#1086#1090#1095#1105#1090
      ImageIndex = 4
      OnExecute = act_print_editExecute
    end
    object act_print_settings: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1077#1095#1072#1090#1080
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1077#1095#1072#1090#1080
      ImageIndex = 76
      OnExecute = act_print_settingsExecute
    end
    object act_print_print: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1105#1090#1072
      Hint = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1105#1090#1072
      ImageIndex = 5
      OnExecute = act_print_printExecute
    end
    object act_print_open: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1086#1090#1095#1105#1090
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1086#1090#1095#1105#1090
      ImageIndex = 10
      OnExecute = act_print_openExecute
    end
    object act_print_save: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1090#1095#1105#1090
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1090#1095#1105#1090
      ImageIndex = 11
      OnExecute = act_print_saveExecute
    end
    object act_print_smaller: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1059#1084#1077#1085#1100#1096#1080#1090#1100' '#1084#1072#1089#1096#1090#1072#1073
      Hint = #1059#1084#1077#1085#1100#1096#1080#1090#1100' '#1084#1072#1089#1096#1090#1072#1073
      ImageIndex = 89
      OnExecute = act_print_smallerExecute
    end
    object act_print_bigger: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1059#1074#1077#1083#1080#1095#1080#1090#1100' '#1084#1072#1089#1096#1090#1072#1073
      Hint = #1059#1074#1077#1083#1080#1095#1080#1090#1100' '#1084#1072#1089#1096#1090#1072#1073
      ImageIndex = 88
      OnExecute = act_print_biggerExecute
    end
    object act_print_find: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1086#1080#1089#1082
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1086#1090#1095#1105#1090#1091
      ImageIndex = 67
      OnExecute = act_print_findExecute
    end
    object act_print_prepare: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1080#1090#1100' '#1086#1090#1095#1105#1090
      Hint = #1055#1086#1076#1075#1086#1090#1086#1074#1080#1090#1100' '#1086#1090#1095#1105#1090
      ImageIndex = 73
      OnExecute = act_print_prepareExecute
    end
    object act_print_reset_depot: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      ImageIndex = 59
      OnExecute = act_print_reset_depotExecute
    end
    object act_print_ondepot: TAction
      Category = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      AutoCheck = True
      Caption = 'act_print_ondepot'
      ImageIndex = 34
    end
    object act_arep_update: TAction
      Category = #1054#1090#1095#1105#1090' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Caption = 'act_arep_update'
      ImageIndex = 65
      OnExecute = act_arep_updateExecute
    end
    object act_rep_acc_report: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1054#1090#1095#1105#1090' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 73
      OnExecute = act_rep_acc_reportExecute
    end
    object act_arr_clear_nakl: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 90
      OnExecute = act_arr_clear_naklExecute
    end
    object act_price_recalc_ostatki: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1086#1089#1090#1072#1090#1082#1080
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1086#1089#1090#1072#1090#1082#1080
      ImageIndex = 74
      OnExecute = act_price_recalc_ostatkiExecute
    end
    object act_file_recalc_lux: TAction
      Category = #1060#1072#1081#1083
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1085#1072' '#1085#1080#1096#1077#1074#1099#1081' '#1090#1086#1074#1072#1088
      ImageIndex = 8
    end
    object act_arr_reprice: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1074' '#1087#1088#1072#1081#1089#1077' '#1087#1086' '#1101#1090#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 64
    end
    object act_rep_top100: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1058#1086#1087' 100 '#1087#1088#1086#1076#1072#1078
      Hint = #1058#1086#1087' 100 '#1090#1086#1074#1072#1088#1086#1074
      ImageIndex = 79
      OnExecute = act_rep_top100Execute
    end
    object act_file_email: TAction
      Category = #1060#1072#1081#1083
      Caption = #1056#1072#1089#1089#1099#1083#1082#1072' '#1087#1086#1095#1090#1099
      Enabled = False
      ImageIndex = 95
      OnExecute = act_file_emailExecute
    end
    object act_rep_customer_history: TAction
      Category = #1054#1090#1095#1105#1090#1099
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      ImageIndex = 35
      OnExecute = act_rep_customer_historyExecute
    end
    object act_file_prom_export: TAction
      Category = #1060#1072#1081#1083
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1082#1072#1090#1072#1083#1086#1075#1072' prom.ua'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1082#1072#1090#1072#1083#1086#1075#1072' '#1074' '#1092#1072#1081#1083' Microsoft Excel'
      ImageIndex = 94
    end
    object act_file_prom_import: TAction
      Category = #1060#1072#1081#1083
      Caption = #1048#1084#1087#1086#1088#1090' '#1082#1072#1090#1072#1083#1086#1075#1072' prom.ua'
      Hint = #1048#1084#1087#1086#1088#1090' '#1082#1072#1090#1072#1083#1086#1075#1072' '#1080#1079' '#1092#1072#1081#1083#1072' Microsoft Excel'
      ImageIndex = 10
    end
    object act_price_shop_edit: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = 'act_price_shop_edit'
      ImageIndex = 4
    end
    object act_arr_shopcard: TAction
      Category = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = 'act_arr_shopcard'
      ImageIndex = 4
      OnExecute = act_arr_shopcardExecute
    end
    object act_sale_shop_card: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = 'act_sale_shop_card'
      ImageIndex = 4
      OnExecute = act_sale_shop_cardExecute
    end
    object act_rc_shopcard: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Caption = 'act_rc_shopcard'
      ImageIndex = 4
      OnExecute = act_rc_shopcardExecute
    end
    object act_moves_shopcard: TAction
      Category = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = 'act_moves_shopcard'
      ImageIndex = 4
      OnExecute = act_moves_shopcardExecute
    end
    object act_rs_shopcard: TAction
      Category = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
      Caption = 'act_rs_shopcard'
      ImageIndex = 4
      OnExecute = act_rs_shopcardExecute
    end
    object act_cls_price_shop: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1050#1072#1090#1072#1083#1086#1075' '#1084#1072#1075#1072#1079#1080#1085#1072
      ImageIndex = 73
    end
    object act_shop_find: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075' '#1084#1072#1075#1072#1079#1080#1085#1072
      Caption = #1055#1086#1080#1089#1082
      Hint = #1053#1072#1081#1090#1080' '#1090#1086#1074#1072#1088
      ImageIndex = 67
    end
    object act_shop_edit: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075' '#1084#1072#1075#1072#1079#1080#1085#1072
      Caption = 'act_shop_edit'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088
      ImageIndex = 4
    end
    object act_curs_delete: TAction
      Category = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1099
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1082#1091#1088#1089#1072
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 3
    end
    object act_sale_update_prices: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = 'act_sale_update_prices'
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ImageIndex = 33
      OnExecute = act_sale_update_pricesExecute
    end
    object act_sale_clear: TAction
      Category = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 90
      OnExecute = act_sale_clearExecute
    end
    object act_price_deselect: TAction
      Category = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Caption = #1057#1085#1103#1090#1100' '#1074#1099#1073#1086#1088' '#1089' '#1090#1086#1074#1072#1088#1086#1074
      Hint = #1057#1085#1103#1090#1100' '#1074#1099#1073#1086#1088' '#1089' '#1090#1086#1074#1072#1088#1086#1074
      ImageIndex = 97
      OnExecute = act_price_deselectExecute
    end
    object act_doc_prod_exec: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = 'act_doc_prod_exec'
      ImageIndex = 98
      OnExecute = act_billsExecute
    end
    object act_doc_prod_wait: TAction
      Category = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      ImageIndex = 98
      OnExecute = act_billsExecute
    end
    object act_prod_new: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1053#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1053#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 2
      OnExecute = act_prod_newExecute
    end
    object act_prod_delete: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 3
      OnExecute = act_prod_deleteExecute
    end
    object act_prod_edit: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 4
      OnExecute = act_prod_editExecute
    end
    object act_prod_execute: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      OnExecute = act_prod_executeExecute
    end
    object act_prod_return: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnExecute = act_prod_returnExecute
    end
    object act_prod_item_history: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 18
      OnExecute = act_prod_item_historyExecute
    end
    object act_prod_item_card: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_prod_item_cardExecute
    end
    object act_prod_spec_item_history: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 18
      OnExecute = act_prod_spec_item_historyExecute
    end
    object act_prod_spec_item_card: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 19
      OnExecute = act_prod_spec_item_cardExecute
    end
    object act_prod_clear_nakl: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1099#1093' '#1090#1086#1074#1072#1088#1086#1074
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1099#1093' '#1090#1086#1074#1072#1088#1086#1074
      ImageIndex = 90
      OnExecute = act_prod_clear_naklExecute
    end
    object act_prod_spec_clear_nakl: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102
      ImageIndex = 90
      OnExecute = act_prod_spec_clear_naklExecute
    end
    object act_prod_spec_load_defaults: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      ImageIndex = 100
      OnExecute = act_prod_spec_load_defaultsExecute
    end
    object act_prod_spec_save_defaults: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      ImageIndex = 99
      OnExecute = act_prod_spec_save_defaultsExecute
    end
    object act_prod_reset: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      ImageIndex = 14
      OnExecute = act_prod_resetExecute
    end
    object act_prod_today: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Hint = #1057#1077#1075#1086#1076#1085#1103
      ImageIndex = 17
      OnExecute = act_prod_todayExecute
    end
    object act_prod_next_day: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 16
      OnExecute = act_prod_next_dayExecute
    end
    object act_prod_prev_day: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100
      ImageIndex = 15
      OnExecute = act_prod_prev_dayExecute
    end
    object act_prod_print: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Hint = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 5
      OnExecute = act_prod_printExecute
    end
    object act_prod_reset_date: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
      ImageIndex = 59
      OnExecute = act_prod_reset_dateExecute
    end
    object act_prod_reset_depot: TAction
      Category = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      ImageIndex = 59
      OnExecute = act_prod_reset_depotExecute
    end
  end
  object pm_DateRange: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N48'
      end
      item
        Visible = True
        ItemName = 'N44'
      end
      item
        Visible = True
        ItemName = 'N43'
      end
      item
        Visible = True
        ItemName = 'N45'
      end
      item
        Visible = True
        ItemName = 'N46'
      end>
    UseOwnFont = False
    Left = 256
    Top = 272
    PixelsPerInch = 96
  end
  object popup_kassa: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_kassa_edit'
      end
      item
        Visible = True
        ItemName = 'btn_kassa_delete'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btn_kassa_gotobill'
      end>
    UseOwnFont = False
    Left = 256
    Top = 560
    PixelsPerInch = 96
  end
  object popup_accounting: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_acc_billshow'
      end>
    UseOwnFont = False
    Left = 256
    Top = 512
    PixelsPerInch = 96
  end
  object popup_dolgclientlist: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_acc_exportexcel'
      end
      item
        Visible = True
        ItemName = 'btn_acc_closedebt'
      end>
    UseOwnFont = False
    Left = 256
    Top = 464
    PixelsPerInch = 96
  end
  object popup_arrival_n: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_arr_execute'
      end
      item
        Visible = True
        ItemName = 'btn_arr_return'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btn_arr_edit'
      end
      item
        Visible = True
        ItemName = 'btn_arr_delete'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btn_arr_preview'
      end
      item
        Visible = True
        ItemName = 'btn_arr_print'
      end
      item
        Visible = True
        ItemName = 'btn_arr_colprint'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btn_arr_exportexcel'
      end
      item
        Visible = True
        ItemName = 'btn_arr_export'
      end>
    UseOwnFont = False
    Left = 256
    Top = 416
    PixelsPerInch = 96
  end
  object popup_clients: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_client_new'
      end
      item
        Visible = True
        ItemName = 'btn_client_delete'
      end
      item
        Visible = True
        ItemName = 'btn_client_edit'
      end>
    UseOwnFont = False
    Left = 256
    Top = 368
    PixelsPerInch = 96
  end
  object pm_ExcelPriceExport: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSeparator1'
      end
      item
        Visible = True
        ItemName = 'N12'
      end>
    ItemOptions.Size = misNormal
    UseOwnFont = False
    Left = 256
    Top = 320
    PixelsPerInch = 96
  end
  object popup_newdoc: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_arr_add'
      end
      item
        Visible = True
        ItemName = 'btn_sale_new'
      end
      item
        Visible = True
        ItemName = 'btn_moves_add'
      end
      item
        Visible = True
        ItemName = 'btn_rs_add'
      end
      item
        Visible = True
        ItemName = 'btn_rc_new'
      end>
    ItemOptions.Size = misLarge
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 344
    Top = 464
    PixelsPerInch = 96
  end
  object FindShopDialog: TFindDialog
    Options = [frDown, frHideMatchCase, frHideWholeWord, frHideUpDown]
    Left = 344
    Top = 272
  end
end
