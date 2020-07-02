object SelectSupplForm: TSelectSupplForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1085#1072' '#1085#1080#1096#1091
  ClientHeight = 172
  ClientWidth = 187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cg_Suppliers: TcxCheckListBox
    Left = 8
    Top = 8
    Width = 169
    Height = 113
    Items = <
      item
        State = cbsChecked
        Text = #1050#1080#1077#1074' Brandperfumez'
      end
      item
        State = cbsChecked
        Text = #1054#1076#1077#1089#1089#1072' '#1042#1086#1074#1072
      end
      item
        State = cbsChecked
        Text = #1044#1085#1077#1087#1088#1086#1087#1077#1090#1088#1086#1074#1089#1082
      end
      item
        State = cbsChecked
        Text = 'Parfex'
      end
      item
        State = cbsChecked
        Text = #1060#1083#1072#1082#1086#1085' '#1044#1085#1077#1087#1088
      end
      item
        State = cbsChecked
        Text = #1054#1083#1077#1075' '#1050#1086#1089#1084#1077#1090#1080#1082#1072
      end>
    TabOrder = 0
  end
  object btn_OK: TcxButton
    Left = 8
    Top = 139
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btn_Cancel: TcxButton
    Left = 101
    Top = 139
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
