object FilterEditForm: TFilterEditForm
  Left = 268
  Top = 321
  BorderStyle = bsDialog
  Caption = #1041#1099#1089#1090#1088#1099#1077' '#1092#1080#1083#1100#1090#1088#1099
  ClientHeight = 255
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 4
    Width = 88
    Height = 13
    Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1083#1103':'
  end
  object Label3: TLabel
    Left = 332
    Top = 44
    Width = 42
    Height = 13
    Caption = #1060#1080#1083#1100#1090#1088':'
  end
  object btn_Add: TSpeedButton
    Left = 340
    Top = 220
    Width = 84
    Height = 23
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    OnClick = btn_AddClick
  end
  object btn_Delete: TSpeedButton
    Left = 446
    Top = 220
    Width = 84
    Height = 23
    Caption = #1059#1076#1072#1083#1080#1090#1100
    OnClick = btn_DeleteClick
  end
  object Label4: TLabel
    Left = 448
    Top = 4
    Width = 23
    Height = 13
    Caption = #1048#1084#1103':'
  end
  object btn_Close: TSpeedButton
    Left = 553
    Top = 220
    Width = 84
    Height = 23
    Caption = #1047#1072#1082#1088#1099#1090#1100
    OnClick = btn_CloseClick
  end
  object Label2: TLabel
    Left = 12
    Top = 4
    Width = 50
    Height = 13
    Caption = #1060#1080#1083#1100#1090#1088#1099':'
  end
  object Label5: TLabel
    Left = 336
    Top = 4
    Width = 59
    Height = 13
    Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090':'
  end
  object FieldsList: TListBox
    Left = 172
    Top = 20
    Width = 153
    Height = 226
    ItemHeight = 13
    TabOrder = 0
    OnDblClick = FieldsListDblClick
  end
  object Button2: TButton
    Left = 340
    Top = 92
    Width = 25
    Height = 25
    Caption = '7'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 92
    Width = 25
    Height = 25
    Caption = '8'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 396
    Top = 92
    Width = 25
    Height = 25
    Caption = '9'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 340
    Top = 120
    Width = 25
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 368
    Top = 120
    Width = 25
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 396
    Top = 120
    Width = 25
    Height = 25
    Caption = '6'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 340
    Top = 148
    Width = 25
    Height = 25
    Caption = '1'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 368
    Top = 148
    Width = 25
    Height = 25
    Caption = '2'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 396
    Top = 148
    Width = 25
    Height = 25
    Caption = '3'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 340
    Top = 176
    Width = 25
    Height = 25
    Caption = '0'
    TabOrder = 10
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 368
    Top = 176
    Width = 25
    Height = 25
    Caption = '.'
    TabOrder = 11
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 440
    Top = 148
    Width = 25
    Height = 25
    Caption = '( )'
    TabOrder = 12
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 440
    Top = 176
    Width = 25
    Height = 25
    Caption = '('
    TabOrder = 13
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 468
    Top = 176
    Width = 25
    Height = 25
    Caption = ')'
    TabOrder = 14
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 440
    Top = 92
    Width = 25
    Height = 25
    Caption = '<'
    TabOrder = 15
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 468
    Top = 92
    Width = 25
    Height = 25
    Caption = '>'
    TabOrder = 16
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 440
    Top = 120
    Width = 25
    Height = 25
    Caption = '<='
    TabOrder = 17
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 468
    Top = 120
    Width = 25
    Height = 25
    Caption = '>='
    TabOrder = 18
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 396
    Top = 176
    Width = 25
    Height = 25
    Caption = '='
    TabOrder = 19
    OnClick = Button20Click
  end
  object Button21: TButton
    Left = 468
    Top = 148
    Width = 25
    Height = 25
    Caption = '<>'
    TabOrder = 20
    OnClick = Button21Click
  end
  object Button22: TButton
    Left = 508
    Top = 92
    Width = 53
    Height = 25
    Caption = 'AND'
    TabOrder = 21
    OnClick = Button22Click
  end
  object Button23: TButton
    Left = 508
    Top = 120
    Width = 53
    Height = 25
    Caption = 'OR'
    TabOrder = 22
    OnClick = Button23Click
  end
  object Button24: TButton
    Left = 508
    Top = 148
    Width = 53
    Height = 25
    Caption = 'NOT'
    TabOrder = 23
    OnClick = Button24Click
  end
  object Button25: TButton
    Left = 584
    Top = 120
    Width = 53
    Height = 25
    Caption = 'C'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    OnClick = Button25Click
  end
  object Button26: TButton
    Left = 584
    Top = 176
    Width = 53
    Height = 25
    Caption = 'END'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    OnClick = Button26Click
  end
  object Button27: TButton
    Left = 508
    Top = 176
    Width = 25
    Height = 25
    Caption = #39
    TabOrder = 26
    OnClick = Button27Click
  end
  object Button28: TButton
    Left = 536
    Top = 176
    Width = 25
    Height = 25
    Caption = #39' '#39
    TabOrder = 27
    OnClick = Button28Click
  end
  object Button29: TButton
    Left = 584
    Top = 148
    Width = 53
    Height = 25
    Caption = 'HOME'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
    OnClick = Button29Click
  end
  object Button31: TButton
    Left = 584
    Top = 92
    Width = 53
    Height = 25
    Caption = 'DATE'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 29
    OnClick = Button31Click
  end
  object FilterEdit: TDBEditEh
    Left = 336
    Top = 64
    Width = 301
    Height = 19
    AlwaysShowBorder = True
    DataField = 'FILTER'
    DataSource = Data.S_Filters
    DynProps = <>
    EditButtons = <>
    Flat = True
    TabOrder = 30
    Visible = True
  end
  object PresetNameEdit: TDBEditEh
    Left = 448
    Top = 20
    Width = 190
    Height = 19
    AlwaysShowBorder = True
    DataField = 'NAME'
    DataSource = Data.S_Filters
    DynProps = <>
    EditButtons = <>
    Flat = True
    TabOrder = 31
    Visible = True
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 20
    Width = 149
    Height = 226
    DataSource = Data.S_Filters
    Options = [dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 32
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NAME'
        Width = 128
        Visible = True
      end>
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 336
    Top = 20
    Width = 105
    Height = 19
    DataField = 'OGROUP'
    DataSource = Data.S_Filters
    DynProps = <>
    EditButtons = <>
    Flat = True
    Items.Strings = (
      #1053#1080#1079#1082#1080#1081
      #1057#1088#1077#1076#1085#1080#1081
      #1042#1099#1089#1086#1082#1080#1081
      #1047#1072#1082#1088#1077#1083#1077#1085#1085#1099#1081)
    KeyItems.Strings = (
      '2'
      '1'
      '0'
      '-1')
    TabOrder = 33
    Visible = True
  end
end
