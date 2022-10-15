object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'StudentA'
  ClientHeight = 97
  ClientWidth = 213
  Color = clInactiveCaptionText
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
  object Label1: TLabel
    Left = 8
    Top = 43
    Width = 198
    Height = 13
    Caption = 'For example: "Monitoring 1", "Kinematics"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 198
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 59
    Width = 198
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 224
    Top = 65520
  end
end
