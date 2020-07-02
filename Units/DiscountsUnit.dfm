object DiscountsForm: TDiscountsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1082#1080#1076#1082#1080' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
  ClientHeight = 310
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TB_Discounts: TDBGridEh
    Left = 0
    Top = 22
    Width = 308
    Height = 288
    Align = alClient
    ColumnDefValues.Title.Alignment = taCenter
    DataSource = Data.S_Discounts
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.Color = clWindow
    IndicatorOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DESC'
        Footers = <>
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 199
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DISCOUNT'
        Footers = <>
        Title.Caption = #1057#1082#1080#1076#1082#1072
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 40
    Top = 256
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      22
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 332
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'but_add'
        end
        item
          Visible = True
          ItemName = 'but_delete'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object but_add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      ImageIndex = 0
    end
    object but_delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      ImageIndex = 19
    end
  end
end
