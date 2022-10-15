object Form10: TForm10
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Confirm extra lesson!'
  ClientHeight = 125
  ClientWidth = 393
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
    Left = 24
    Top = 24
    Width = 343
    Height = 23
    Caption = 'Do you really want to start extra lessons?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 248
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Yes'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 72
    Width = 75
    Height = 25
    Caption = 'No'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 176
    Top = 64
  end
end
