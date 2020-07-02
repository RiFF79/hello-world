object WaitForm: TWaitForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'WaitForm'
  ClientHeight = 71
  ClientWidth = 263
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
  object dxBevel1: TdxBevel
    Left = 0
    Top = 0
    Width = 263
    Height = 71
    Align = alClient
    Shape = dxbsFrame
    ExplicitLeft = 136
    ExplicitTop = 32
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alClient
    AutoSize = False
    Caption = #1055#1086#1076#1086#1078#1076#1080#1090#1077' '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072'...'
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Height = 71
    Width = 263
    AnchorX = 132
    AnchorY = 36
  end
end
