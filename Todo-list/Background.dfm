object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1077#1083
  ClientHeight = 204
  ClientWidth = 147
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 6
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 102
    Top = 6
    Width = 5
    Height = 19
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Button1: TButton
    Left = 0
    Top = 179
    Width = 147
    Height = 25
    Align = alBottom
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object MediaPlayer1: TMediaPlayer
    Left = 208
    Top = 136
    Width = 253
    Height = 30
    FileName = 'Sound_19482.mp3'
    Visible = False
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 0
    Top = 31
    Width = 147
    Height = 148
    Align = alBottom
    Enabled = False
    TabOrder = 2
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 144
    Top = 456
  end
  object Timer2: TTimer
    Interval = 2000
    OnTimer = Timer2Timer
    Left = 88
    Top = 448
  end
end
