object OptionsForm: TOptionsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 605
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object aaa: TcxPageControl
    Left = 0
    Top = 0
    Width = 762
    Height = 605
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = P_Reports
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    Properties.Rotate = True
    Properties.Style = 11
    Properties.TabPosition = tpLeft
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Silver'
    ClientRectBottom = 599
    ClientRectLeft = 138
    ClientRectRight = 756
    ClientRectTop = 3
    object P_Defaults: TcxTabSheet
      Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 618
        Height = 596
        Align = alClient
        TabOrder = 0
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 152
          Top = 28
          DataBinding.DataField = 'SUPPLIER'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Data.S_Customers
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 163
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 152
          Top = 82
          DataBinding.DataField = 'DEPOT'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Data.S_Depots
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 163
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 420
          Top = 28
          DataBinding.DataField = 'CUSTOMER'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Data.S_Customers
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 163
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 152
          Top = 55
          DataBinding.DataField = 'DEPOT_FROM'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Data.S_Depots
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 163
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 420
          Top = 55
          DataBinding.DataField = 'DEPOT_TO'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Data.S_Depots
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 163
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 420
          Top = 82
          DataBinding.DataField = 'GOODTYPE'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = Data.S_GoodTypes
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 163
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 420
          Top = 109
          AutoSize = False
          DataBinding.DataField = 'DISCOUNT'
          DataBinding.DataSource = Data.S_Defaults
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = '0.00#'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Height = 21
          Width = 163
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 152
          Top = 109
          DataBinding.DataField = 'NEW_DAYS'
          DataBinding.DataSource = Data.S_Defaults
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 5
          Width = 163
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          CaptionOptions.Text = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          Control = cxDBLookupComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = #1057#1082#1083#1072#1076' '#1079#1072#1082#1091#1087#1082#1072'/'#1087#1088#1086#1076#1072#1078#1072
          Control = cxDBLookupComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahClient
          CaptionOptions.Text = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
          Control = cxDBLookupComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          CaptionOptions.Text = #1057#1082#1083#1072#1076' '#1080#1089#1090#1086#1095#1085#1080#1082
          Control = cxDBLookupComboBox4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          AlignHorz = ahClient
          CaptionOptions.Text = #1057#1082#1083#1072#1076' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
          Control = cxDBLookupComboBox5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          CaptionOptions.Text = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
          Control = cxDBLookupComboBox6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group8
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = #1047#1085#1072#1095#1077#1085#1080#1103' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
          ButtonOptions.Buttons = <>
          ItemIndex = 1
          Index = 0
        end
        object dxLayoutControl3Item9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          CaptionOptions.Text = #1057#1082#1080#1076#1082#1072
          Control = cxDBCurrencyEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = #1053#1086#1074#1080#1085#1082#1072' ('#1076#1085#1077#1081')'
          Control = cxDBSpinEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 163
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 1
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          Parent = dxLayoutControl3Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          Parent = dxLayoutControl3Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group6
          AlignHorz = ahClient
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group6
          Index = 0
        end
      end
    end
    object P_Reports: TcxTabSheet
      Caption = #1055#1077#1095#1072#1090#1085#1099#1077' '#1086#1090#1095#1105#1090#1099
      ImageIndex = 2
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 618
        Height = 596
        Align = alClient
        TabOrder = 0
        object edit_ArrivalReport: TcxButtonEdit
          Left = 182
          Top = 28
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Text = '.\Reports\'#1055#1088#1080#1093#1086#1076#1085#1072#1103'.frf'
          Width = 414
        end
        object edit_SaleReport: TcxButtonEdit
          Left = 182
          Top = 109
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Text = '.\Reports\'#1056#1072#1089#1093#1086#1076#1085#1072#1103'.frf'
          Width = 414
        end
        object edit_SaleReportSbor: TcxButtonEdit
          Left = 182
          Top = 136
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 4
          Text = '.\Reports\'#1056#1072#1089#1093#1086#1076#1085#1072#1103' ('#1085#1072' '#1089#1073#1086#1088').frf'
          Width = 414
        end
        object edit_MovesReport: TcxButtonEdit
          Left = 182
          Top = 163
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 5
          Text = '.\Reports\'#1055#1077#1088#1077#1093#1086#1076#1085#1072#1103'.frf'
          Width = 414
        end
        object edit_RetSupplReport: TcxButtonEdit
          Left = 182
          Top = 217
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 7
          Text = '.\Reports\'#1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091'.frf'
          Width = 414
        end
        object edit_RetCustReport: TcxButtonEdit
          Left = 182
          Top = 190
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 6
          Text = '.\Reports\'#1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1072'.frf'
          Width = 414
        end
        object edit_PriceReport: TcxButtonEdit
          Left = 182
          Top = 274
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 8
          Text = '.\Reports\'#1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1054#1089#1085#1086#1074#1085#1086#1081').frf'
          Width = 414
        end
        object edit_SpecPriceReport: TcxButtonEdit
          Left = 182
          Top = 301
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 9
          Text = '.\Reports\'#1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1057#1087#1077#1094').frf'
          Width = 414
        end
        object edit_RetPriceReport: TcxButtonEdit
          Left = 182
          Top = 328
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 10
          Text = '.\Reports\'#1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1056#1086#1079#1085#1080#1094#1072').frf'
          Width = 414
        end
        object edit_CountOnDepot_Report: TcxButtonEdit
          Left = 182
          Top = 385
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 11
          Width = 414
        end
        object edit_SaleBillsReport: TcxButtonEdit
          Left = 182
          Top = 412
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 12
          Text = '.\Report\'#1057#1087#1080#1089#1086#1082' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1085#1072#1082#1083#1072#1076#1085#1099#1093'.frf'
          Width = 414
        end
        object edit_KassaReport: TcxButtonEdit
          Left = 182
          Top = 439
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 13
          Text = '.\Report\'#1050#1072#1089#1089#1072'.frf'
          Width = 414
        end
        object edit_DolgiReport: TcxButtonEdit
          Left = 182
          Top = 466
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 14
          Width = 414
        end
        object edit_ArrivalCheckReport: TcxButtonEdit
          Left = 182
          Top = 55
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Text = '.\Reports\'#1055#1088#1080#1093#1086#1076#1085#1072#1103' ('#1087#1088#1086#1074#1077#1088#1082#1072').fr3'
          Width = 414
        end
        object edit_Cenniki: TcxButtonEdit
          Left = 182
          Top = 493
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 15
          Width = 414
        end
        object edit_ProductionReport: TcxButtonEdit
          Left = 182
          Top = 82
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportSelectButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Text = '.\Reports\'#1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086'.frf'
          Width = 414
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1055#1088#1080#1093#1086#1076
          Control = edit_ArrivalReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1056#1072#1089#1093#1086#1076
          Control = edit_SaleReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1056#1072#1089#1093#1086#1076' ('#1085#1072' '#1089#1073#1086#1088')'
          Control = edit_SaleReportSbor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1055#1077#1088#1077#1093#1086#1076
          Control = edit_MovesReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
          Control = edit_RetSupplReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1042#1086#1079#1074#1088#1072#1090' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1072
          Control = edit_RetCustReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1054#1089#1085#1086#1074#1085#1086#1081')'
          Control = edit_PriceReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1057#1087#1077#1094'.)'
          Control = edit_SpecPriceReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1056#1086#1079#1085#1080#1094#1072')'
          Control = edit_RetPriceReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
          Control = edit_CountOnDepot_Report
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
          Control = edit_SaleBillsReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = #1050#1072#1089#1089#1072
          Control = edit_KassaReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item17: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = #1054#1090#1095#1105#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
          Control = edit_DolgiReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Text = #1053#1072#1082#1083#1072#1076#1085#1099#1077
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Text = #1055#1088#1072#1081#1089#1099
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = #1056#1072#1079#1085#1086#1077
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1055#1088#1080#1093#1086#1076' ('#1087#1088#1080#1077#1084' '#1090#1086#1074#1072#1088#1072')'
          Control = edit_ArrivalCheckReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object cap_edit_Cenniki: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = #1062#1077#1085#1085#1080#1082#1080
          Control = edit_Cenniki
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
          Control = edit_ProductionReport
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 414
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object P_Reports_excel: TcxTabSheet
      Caption = #1054#1090#1095#1105#1090#1099' MS Excel'
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 618
        Height = 596
        Align = alClient
        TabOrder = 0
        object edit_ExcelArrivalTemplate: TcxButtonEdit
          Left = 147
          Top = 28
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Text = '.\Reports\'#1055#1088#1080#1093#1086#1076#1085#1072#1103'.xls'
          Width = 449
        end
        object edit_ExcelSaleTemplate: TcxButtonEdit
          Left = 147
          Top = 55
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Text = '.\Reports\'#1056#1072#1089#1093#1086#1076#1085#1072#1103'.xls'
          Width = 449
        end
        object edit_ExcelMovesTemplate: TcxButtonEdit
          Left = 147
          Top = 109
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Text = '.\Reports\'#1055#1077#1088#1077#1093#1086#1076#1085#1072#1103'.xls'
          Width = 449
        end
        object edit_ExcelRetSupplTemplate: TcxButtonEdit
          Left = 147
          Top = 136
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 4
          Text = '.\Reports\'#1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091'.xls'
          Width = 449
        end
        object edit_ExcelPriceTemplate: TcxButtonEdit
          Left = 147
          Top = 193
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 5
          Text = '.\Reports\'#1055#1088#1072#1081#1089'1.xls'
          Width = 449
        end
        object edit_ExcelSpecPriceTemplate: TcxButtonEdit
          Left = 147
          Top = 220
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 6
          Text = '.\Reports\'#1055#1088#1072#1081#1089'2.xls'
          Width = 449
        end
        object edit_ExcelRetPriceTemplate: TcxButtonEdit
          Left = 147
          Top = 247
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 7
          Text = '.\Reports\'#1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1056#1086#1079#1085#1080#1094#1072').xls'
          Width = 449
        end
        object edit_AccountingTemplate: TcxButtonEdit
          Left = 147
          Top = 304
          AutoSize = False
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 8
          Height = 21
          Width = 449
        end
        object edit_ExcelProductionTemplate: TcxButtonEdit
          Left = 147
          Top = 82
          AutoSize = False
          Properties.Buttons = <
            item
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ReportExcelButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Text = '.\Reports\'#1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086'.xls'
          Height = 21
          Width = 449
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
          Control = edit_ExcelArrivalTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
          Control = edit_ExcelSaleTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = #1055#1077#1088#1077#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
          Control = edit_ExcelMovesTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = #1042#1086#1079#1074#1088#1072#1090#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
          Control = edit_ExcelRetSupplTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = #1053#1072#1082#1083#1072#1076#1085#1099#1077
          ButtonOptions.Buttons = <>
          ItemIndex = 4
          Index = 0
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1054#1089#1085#1086#1074#1085#1086#1081')'
          Control = edit_ExcelPriceTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1057#1087#1077#1094'.)'
          Control = edit_ExcelSpecPriceTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' ('#1056#1086#1079#1085#1080#1094#1072')'
          Control = edit_ExcelRetPriceTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl2Group2: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090#1099
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          Parent = dxLayoutControl2Group3
          CaptionOptions.Text = #1054#1090#1095#1105#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
          Control = edit_AccountingTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Group3: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = #1056#1072#1079#1085#1086#1077
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
          Control = edit_ExcelProductionTemplate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 449
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object P_Colors: TcxTabSheet
      Caption = #1042#1099#1076#1077#1083#1077#1085#1080#1077' '#1094#1074#1077#1090#1086#1084
      ImageIndex = 1
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 618
        Height = 596
        Align = alClient
        TabOrder = 0
        object ec_arrival: TShape
          Left = 193
          Top = 28
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_sale: TShape
          Left = 193
          Top = 51
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_move: TShape
          Left = 193
          Top = 120
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_return_cust: TShape
          Left = 193
          Top = 143
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_return_suppl: TShape
          Left = 193
          Top = 166
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_dolg: TShape
          Left = 193
          Top = 189
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_kassa: TShape
          Left = 193
          Top = 212
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_Encashment: TShape
          Left = 193
          Top = 235
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_Minus: TShape
          Left = 193
          Top = 258
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_production: TShape
          Left = 193
          Top = 74
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object ec_specification: TShape
          Left = 193
          Top = 97
          Width = 49
          Height = 17
          Cursor = crHandPoint
          OnMouseUp = ColorPickMouseUp
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
          Control = ec_arrival
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
          Control = ec_sale
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1055#1077#1088#1077#1093#1086#1076#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
          Control = ec_move
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1055#1086#1079#1080#1094#1080#1080' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1072
          Control = ec_return_cust
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1055#1086#1079#1080#1094#1080#1080' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
          Control = ec_return_suppl
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1055#1077#1088#1074#1086#1085#1072#1095#1072#1083#1100#1085#1099#1081' '#1076#1086#1083#1075
          Control = ec_dolg
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1050#1072#1089#1089#1086#1074#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
          Control = ec_kassa
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1048#1085#1082#1072#1089#1089#1072#1094#1080#1103
          Control = ec_Encashment
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1077' '#1082#1072#1089#1089#1099
          Control = ec_Minus
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl4Group1: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = #1056#1072#1089#1082#1088#1072#1089#1082#1072' '#1090#1072#1073#1083#1080#1094
          ButtonOptions.Buttons = <>
          ItemIndex = 3
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086
          Control = ec_production
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Text = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1086' '#1087#1088#1080' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077
          Control = ec_specification
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
  end
end
