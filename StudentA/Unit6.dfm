object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'StudentA'
  ClientHeight = 103
  ClientWidth = 178
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
  object Button1: TButton
    Left = 16
    Top = 59
    Width = 137
    Height = 25
    Caption = 'Delete'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 16
    Width = 137
    Height = 21
    Style = csDropDownList
    TabOrder = 1
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 160
    Top = 24
  end
end
