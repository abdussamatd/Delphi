object Form11: TForm11
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1091#1088#1086#1074#1085#1103' '#1079#1085#1072#1085#1080#1081' '#1103#1079#1099#1082#1072
  ClientHeight = 422
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 0
    Top = 398
    Width = 450
    Height = 24
    Align = alBottom
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1086#1090#1074#1077#1090#1099
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
    ExplicitTop = 480
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 450
    Height = 398
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 480
    object RadioGroup1: TRadioGroup
      Left = 3
      Top = 3
      Width = 422
      Height = 150
      Caption = '1. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1048'?'
      Items.Strings = (
        #1095#1080#1090#1072'..'#1096#1100
        #1074#1086#1079#1085#1077#1085#1072#1074#1080#1076'..'#1084
        #1076#1091#1084#1072'..'#1090#1077
        #1073#1086#1088'..'#1096#1100#1089#1103)
      TabOrder = 0
    end
    object RadioGroup2: TRadioGroup
      Left = 3
      Top = 159
      Width = 422
      Height = 150
      Caption = '2. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1045'?'
      Items.Strings = (
        #1090#1077#1088#1087'..'#1090
        #1079#1072#1082#1083#1077'..'#1084
        #1086#1075#1088#1072#1085#1080#1095'..'#1096#1100
        #1082#1086#1083'..'#1090)
      TabOrder = 1
    end
    object RadioGroup3: TRadioGroup
      Left = 3
      Top = 315
      Width = 422
      Height = 150
      Caption = '3. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1048'?'
      Items.Strings = (
        #1089#1086#1073#1072#1082#1072' '#1083#1072'..'#1090
        #1073#1088#1077'..'#1096#1100#1089#1103
        #1086#1090#1099#1097'..'#1090#1089#1103
        #1085#1077#1085#1072#1074#1080#1076'..'#1096#1100)
      TabOrder = 2
    end
    object RadioGroup4: TRadioGroup
      Left = 3
      Top = 471
      Width = 422
      Height = 150
      Caption = '4. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1048'?'
      Items.Strings = (
        #1089#1090#1077#1083'..'#1096#1100#1089#1103
        #1087#1083#1072#1095'..'#1090
        #1087#1077#1095#1072#1083'..'#1096#1100#1089#1103
        #1084#1072'..'#1096#1100#1089#1103)
      TabOrder = 3
    end
    object RadioGroup5: TRadioGroup
      Left = 3
      Top = 627
      Width = 422
      Height = 150
      Caption = '5. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1045'?'
      Items.Strings = (
        #1089#1086#1083#1086#1074#1077#1081' '#1079#1072#1089#1074#1080#1097'..'#1090
        #1091#1093#1086#1076'..'#1096#1100
        #1079#1085#1072#1095'..'#1096#1100#1089#1103' '#1087#1086' '#1089#1087#1080#1089#1082#1091
        #1086#1090#1087#1088#1072#1074'..'#1096#1100#1089#1103' '#1074' '#1087#1091#1090#1100)
      TabOrder = 4
    end
    object RadioGroup6: TRadioGroup
      Left = 3
      Top = 783
      Width = 422
      Height = 150
      Caption = '6. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1070'?'
      Items.Strings = (
        #1086#1085#1080' '#1073#1077#1089#1087#1086#1082#1086'..'#1090#1089#1103
        #1090#1091#1088#1080#1089#1090#1099' '#1091#1074#1080#1076'..'#1090' '#1084#1086#1088#1077
        #1103#1084#1097#1080#1082#1080' '#1075#1086#1085'..'#1090' '#1083#1086#1096#1072#1076#1077#1081
        #1079#1074#1077#1088#1080' '#1095#1091'..'#1090' '#1086#1087#1072#1089#1085#1086#1089#1090#1100)
      TabOrder = 5
    end
    object RadioGroup7: TRadioGroup
      Left = 3
      Top = 939
      Width = 422
      Height = 150
      Caption = '7. '#1042' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1072#1082#1086#1075#1086' '#1075#1083#1072#1075#1086#1083#1072' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1073#1091#1082#1074#1072' '#1071'?'
      Items.Strings = (
        #1086#1085#1080' '#1075#1088#1077'..'#1090' '#1074#1086#1076#1091
        #1090#1091#1084#1072#1085#1099' '#1089#1090#1077#1083'..'#1090#1089#1103
        #1091#1095#1077#1085#1080#1082#1080' '#1074#1077#1088#1090'..'#1090#1089#1103
        #1074#1077#1090#1088#1099' '#1074#1077'..'#1090)
      TabOrder = 6
    end
    object RadioGroup8: TRadioGroup
      Left = 3
      Top = 1095
      Width = 422
      Height = 150
      Caption = 
        '8. '#1059#1082#1072#1078#1080#1090#1077' '#1088#1103#1076', '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1074' '#1086#1073#1086#1080#1093' '#1089#1083#1086#1074#1072#1093' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1086#1076#1085#1072' '#1080' '#1090#1072' '#1078#1077' ' +
        #1073#1091#1082#1074#1072'.'
      Items.Strings = (
        #1075#1074#1086#1079#1076#1080' '#1076#1077#1088#1078'..'#1090#1089#1103', '#1086#1085#1080' '#1090#1072#1097'..'#1090' '#1085#1077#1074#1086#1076
        #1086#1085' '#1079#1072#1074#1103#1078'..'#1090' '#1091#1079#1077#1083', '#1082#1088#1091#1078'..'#1090#1089#1103' '#1082#1086#1083#1077#1089#1086
        #1086#1075#1085#1080' '#1084#1072#1103#1095'..'#1090', '#1090#1088#1072#1074#1099' '#1082#1086#1083#1099#1096'..'#1090#1089#1103
        #1090#1088#1091#1076'..'#1096#1100#1089#1103', '#1084#1077#1083#1100#1085#1080#1082' '#1084#1077#1083'..'#1090' '#1079#1077#1088#1085#1086)
      TabOrder = 7
    end
    object RadioGroup9: TRadioGroup
      Left = 3
      Top = 1251
      Width = 422
      Height = 150
      Caption = 
        '9. '#1059#1082#1072#1078#1080#1090#1077' '#1088#1103#1076', '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1074' '#1086#1073#1086#1080#1093' '#1089#1083#1086#1074#1072#1093' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1086#1076#1085#1072' '#1080' '#1090#1072' '#1078#1077' ' +
        #1073#1091#1082#1074#1072'.'
      Items.Strings = (
        #1089#1077'..'#1096#1100', '#1084#1091#1095'..'#1096#1100#1089#1103
        #1074#1080#1076'..'#1096#1100', '#1088#1077'..'#1090
        #1086#1085#1080' '#1087#1086#1084#1080#1088'..'#1090#1089#1103', '#1074#1089#1072#1076#1085#1080#1082#1080' '#1089#1082#1072#1095'..'#1090
        #1086#1085#1080' '#1085#1077' '#1074#1099#1090#1077#1088#1087'..'#1090', '#1076#1077#1090#1080' '#1082#1086#1088#1084'..'#1090' '#1075#1086#1083#1091#1073#1077#1081)
      TabOrder = 8
    end
    object RadioGroup10: TRadioGroup
      Left = 3
      Top = 1407
      Width = 422
      Height = 150
      Caption = 
        '10. '#1059#1082#1072#1078#1080#1090#1077' '#1088#1103#1076', '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1074' '#1086#1073#1086#1080#1093' '#1089#1083#1086#1074#1072#1093' '#1087#1088#1086#1087#1091#1097#1077#1085#1072' '#1085#1077' '#1086#1076#1085#1072' '#1080' '#1090#1072 +
        ' '#1078#1077' '#1073#1091#1082#1074#1072'.'
      Items.Strings = (
        #1086#1085' '#1076#1099#1096'..'#1090', '#1086#1085#1072' '#1080#1097'..'#1090' '#1076#1086#1088#1086#1075#1091
        #1074#1099#1076#1077#1083'..'#1084' '#1075#1083#1072#1074#1085#1086#1077', '#1087#1077#1088#1077#1082#1083#1077'..'#1084' '#1086#1073#1086#1080
        #1086#1085' '#1093#1074#1072#1083'..'#1090' '#1092#1080#1083#1100#1084', '#1087#1072#1089#1090#1091#1093' '#1075#1086#1085'..'#1090' '#1089#1090#1072#1076#1086
        #1086#1085' '#1076#1086#1073#1080#1088#1072'..'#1090#1089#1103' '#1076#1086' '#1076#1086#1084#1072', '#1086#1085#1072' '#1089#1090#1077#1083'..'#1090' '#1082#1086#1074#1077#1088)
      TabOrder = 9
      OnClick = RadioGroup10Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'a'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'c'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO lessons([studentid],[Language],[Level],[Passing date' +
        ']) VALUES(:a,"Russian",:c,:d)')
    Left = 312
    Top = 64
  end
end
