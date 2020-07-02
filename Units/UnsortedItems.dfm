object UnsortedItemsForm: TUnsortedItemsForm
  Left = 266
  Top = 172
  Caption = #1053#1077#1080#1079#1074#1077#1089#1090#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
  ClientHeight = 679
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TB_Unsorted: TStringGrid
    Left = 0
    Top = 41
    Width = 969
    Height = 638
    Align = alClient
    ColCount = 7
    DefaultRowHeight = 16
    FixedCols = 2
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing]
    TabOrder = 0
    OnDblClick = TB_UnsortedDblClick
    OnDrawCell = TB_UnsortedDrawCell
    OnKeyDown = TB_UnsortedKeyDown
    ColWidths = (
      128
      138
      436
      435
      96
      24
      107)
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btn1: TButton
      Left = 8
      Top = 8
      Width = 113
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 647
      Top = 8
      Width = 113
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = btn2Click
    end
    object btn_Ignore: TButton
      Left = 128
      Top = 8
      Width = 113
      Height = 25
      Caption = #1048#1075#1085#1086#1088#1080#1088#1086#1074#1072#1090#1100' (F5)'
      TabOrder = 1
      OnClick = btn_IgnoreClick
    end
    object Button2: TButton
      Left = 528
      Top = 8
      Width = 113
      Height = 25
      Caption = #1048#1075#1085#1086#1088'-'#1083#1080#1089#1090
      TabOrder = 2
      OnClick = Button2Click
    end
    object btn_del_art: TButton
      Left = 248
      Top = 8
      Width = 113
      Height = 25
      Caption = #1059#1073#1088#1072#1090#1100' '#1072#1088#1090#1080#1082#1091#1083' (Del)'
      TabOrder = 4
      OnClick = btn_del_artClick
    end
    object Button1: TButton
      Left = 766
      Top = 8
      Width = 113
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1087#1088#1072#1081#1089
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 367
      Top = 8
      Width = 113
      Height = 25
      Caption = #1053#1072#1081#1090#1080' '#1080' '#1079#1072#1084#1077#1085#1080#1090#1100
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object ReplaceDialog: TReplaceDialog
    Options = [frDown, frHideMatchCase, frHideWholeWord]
    OnReplace = ReplaceDialogReplace
    Left = 32
    Top = 104
  end
end
