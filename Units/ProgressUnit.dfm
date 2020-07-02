object ProgressForm: TProgressForm
  Left = 485
  Top = 395
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1094#1077#1085'...'
  ClientHeight = 57
  ClientWidth = 305
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
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 86
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' 1 '#1080#1079' 100'
  end
  object ProgressBar: TProgressBar
    Left = 8
    Top = 32
    Width = 289
    Height = 17
    Smooth = True
    TabOrder = 0
  end
end
