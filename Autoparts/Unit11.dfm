object Form11: TForm11
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Goods Receipt'
  ClientHeight = 185
  ClientWidth = 297
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
  object Label2: TLabel
    Left = 8
    Top = 18
    Width = 115
    Height = 18
    Caption = 'Item category'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 66
    Width = 39
    Height = 18
    Caption = 'Item'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 114
    Width = 71
    Height = 18
    Caption = 'Quantity'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 19
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 144
    Top = 67
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = ComboBox2Change
  end
  object Edit1: TEdit
    Left = 232
    Top = 115
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 214
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ADODataSet1: TADODataSet
    Connection = Form2.ADOConnection1
    Parameters = <>
    Left = 120
    Top = 144
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    Parameters = <>
    Left = 16
    Top = 144
  end
end
