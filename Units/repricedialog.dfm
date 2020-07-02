object RepriceForm: TRepriceForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1074' '#1087#1088#1072#1081#1089#1077' '#1087#1086' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
  ClientHeight = 392
  ClientWidth = 320
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
  object cxButton1: TcxButton
    Left = 224
    Top = 8
    Width = 87
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object cxButton2: TcxButton
    Left = 224
    Top = 45
    Width = 87
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 135
    Width = 201
    Height = 121
    Caption = #1052#1080#1085#1080#1072#1090#1102#1088#1099
    TabOrder = 2
    object perc_mini_general_edit: TcxSpinEdit
      Left = 19
      Top = 37
      TabOrder = 0
      Width = 163
    end
    object perc_mini_special_edit: TcxSpinEdit
      Left = 19
      Top = 80
      TabOrder = 1
      Width = 163
    end
    object cxLabel1: TcxLabel
      Left = 19
      Top = 22
      Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
    end
    object cxLabel3: TcxLabel
      Left = 19
      Top = 64
      Caption = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
    end
  end
  object GrBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 201
    Height = 121
    Caption = #1054#1073#1098#1077#1084#1099
    TabOrder = 3
    object perc_other_general_edit: TcxSpinEdit
      Left = 19
      Top = 37
      TabOrder = 0
      Width = 163
    end
    object perc_other_special_edit: TcxSpinEdit
      Left = 19
      Top = 80
      TabOrder = 1
      Width = 163
    end
    object cxLabel2: TcxLabel
      Left = 19
      Top = 22
      Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
    end
    object cxLabel4: TcxLabel
      Left = 19
      Top = 64
      Caption = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 262
    Width = 201
    Height = 121
    Caption = #1042#1080#1072#1083#1082#1080
    TabOrder = 4
    object perc_vial_general_edit: TcxSpinEdit
      Left = 19
      Top = 37
      TabOrder = 0
      Value = 30
      Width = 163
    end
    object perc_vial_special_edit: TcxSpinEdit
      Left = 19
      Top = 80
      TabOrder = 1
      Value = 30
      Width = 163
    end
    object cxLabel5: TcxLabel
      Left = 19
      Top = 22
      Caption = #1054#1073#1099#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
    end
    object cxLabel6: TcxLabel
      Left = 19
      Top = 64
      Caption = #1057#1087#1077#1094'. '#1087#1088#1072#1081#1089
    end
  end
end
