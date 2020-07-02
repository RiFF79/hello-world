object ProcentForm: TProcentForm
  Left = 217
  Top = 152
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' MS Excel'
  ClientHeight = 113
  ClientWidth = 241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object btn_Cancel: TButton
    Left = 127
    Top = 66
    Width = 90
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object btn_OK: TButton
    Left = 24
    Top = 66
    Width = 97
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object edit_prc: TcxSpinEdit
    Left = 116
    Top = 23
    Properties.ValueType = vtFloat
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    TabOrder = 1
    Value = -4.000000000000000000
    Width = 101
  end
  object c_Skidka: TcxCheckBox
    Left = 24
    Top = 23
    Caption = #1057#1082#1080#1076#1082#1072' (+/-)'
    State = cbsChecked
    TabOrder = 0
    OnClick = c_SkidkaClick
  end
end
