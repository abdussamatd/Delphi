object Form10: TForm10
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Enter the new price in the field bellow'
  ClientHeight = 75
  ClientWidth = 248
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
    Left = 8
    Top = 16
    Width = 232
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Button1: TButton
    Left = 0
    Top = 50
    Width = 248
    Height = 25
    Align = alBottom
    Caption = 'Update'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 64
    ExplicitTop = 72
    ExplicitWidth = 75
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    Parameters = <>
    Left = 184
    Top = 16
  end
end
