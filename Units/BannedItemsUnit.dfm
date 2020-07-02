object BannedItemsForm: TBannedItemsForm
  Left = 347
  Top = 147
  Caption = #1048#1089#1082#1083#1102#1095#1077#1085#1080#1103
  ClientHeight = 602
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TB_Banned: TDBGridEh
    Left = 0
    Top = 31
    Width = 712
    Height = 571
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data.S_Banned
    DynProps = <>
    EditActions = [geaCopyEh]
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentFont = False
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUPPLIER'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FULLNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 332
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
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = SysContainer.SmallImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 128
    Top = 512
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
      Caption = #1043#1083#1072#1074#1085#1072#1103
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 592
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_delete'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 140
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
          UserWidth = 304
          Visible = True
          ItemName = 'edit_filter'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btn_DeleteClick
    end
    object edit_client: TdxBarCombo
      Caption = #1050#1083#1080#1077#1085#1090
      Category = 0
      Hint = #1050#1083#1080#1077#1085#1090
      Visible = ivAlways
      OnChange = edit_clientChange
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = edit_clientCloseUp
      ItemIndex = -1
    end
    object btn_reset_client: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
      Visible = ivAlways
      ImageIndex = 59
      OnClick = btn_reset_clientClick
    end
    object edit_filter: TdxBarEdit
      Caption = #1060#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088
      Visible = ivAlways
      OnCurChange = edit_clientChange
    end
  end
end
