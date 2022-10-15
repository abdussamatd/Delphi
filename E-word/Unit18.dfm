object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'Passed lessons'
  ClientHeight = 127
  ClientWidth = 267
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
  object Edit1: TEdit
    Left = 32
    Top = 40
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 158
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Enter'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 72
    Top = 80
  end
end
