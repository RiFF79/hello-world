object CursForm: TCursForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072
  ClientHeight = 63
  ClientWidth = 140
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 140
    Height = 25
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 212
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072'  '
      Style.TextStyle = [fsBold]
      Properties.Alignment.Horz = taCenter
      ExplicitLeft = 104
      ExplicitTop = 16
      ExplicitWidth = 46
      AnchorX = 68
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 25
    Width = 140
    Height = 38
    Align = alClient
    BevelEdges = [beLeft, beRight, beBottom]
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 212
    ExplicitHeight = 123
    object edit_curs: TcxDBCurrencyEdit
      Left = 8
      Top = 6
      DataBinding.DataField = 'CURS'
      DataBinding.DataSource = Data.S_Sale_N
      TabOrder = 0
      Width = 121
    end
  end
end
