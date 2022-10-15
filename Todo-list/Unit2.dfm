object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1045#1078#1077#1076#1085#1077#1074#1085#1080#1082
  ClientHeight = 310
  ClientWidth = 408
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
  object Label1: TLabel
    Left = 78
    Top = 50
    Width = 7
    Height = 25
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 191
    Top = 284
    Width = 89
    Height = 18
    Caption = #1053#1086#1084#1077#1088' '#1083#1080#1085#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 35
    Width = 26
    Height = 13
    Caption = #1063#1072#1089#1099
  end
  object Label4: TLabel
    Left = 104
    Top = 35
    Width = 40
    Height = 13
    Caption = #1052#1080#1085#1091#1090#1099
  end
  object Label5: TLabel
    Left = 208
    Top = 35
    Width = 42
    Height = 13
    Caption = #1047#1072#1084#1077#1090#1082#1072
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 97
    Height = 21
    TabOrder = 0
    Items.Strings = (
      #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
      #1042#1090#1086#1088#1085#1080#1082
      #1057#1088#1077#1076#1072
      #1063#1077#1090#1074#1077#1088#1075
      #1055#1103#1090#1085#1080#1094#1072
      #1057#1091#1073#1073#1086#1090#1072)
  end
  object Button1: TButton
    Left = 325
    Top = 280
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 54
    Width = 65
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 91
    Top = 54
    Width = 65
    Height = 21
    TabOrder = 3
    OnChange = Edit2Change
    OnKeyDown = Edit2KeyDown
  end
  object Edit3: TEdit
    Left = 162
    Top = 54
    Width = 144
    Height = 21
    TabOrder = 4
    OnKeyDown = Edit3KeyDown
  end
  object Memo1: TMemo
    Left = 8
    Top = 88
    Width = 392
    Height = 186
    Enabled = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 312
    Top = 52
    Width = 88
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 286
    Top = 282
    Width = 33
    Height = 21
    TabOrder = 7
    OnKeyDown = Edit4KeyDown
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 152
  end
end
