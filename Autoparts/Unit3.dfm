object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Deal'
  ClientHeight = 327
  ClientWidth = 476
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
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 101
    Height = 18
    Caption = 'Customer Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 74
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
    Left = 16
    Top = 130
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
    Left = 16
    Top = 186
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
  object Image1: TImage
    Left = 311
    Top = 8
    Width = 153
    Height = 144
    Proportional = True
    Visible = False
    OnClick = Image1Click
  end
  object Label6: TLabel
    Left = 16
    Top = 245
    Width = 79
    Height = 18
    Caption = 'Total (tg)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Image2: TImage
    Left = 311
    Top = 168
    Width = 153
    Height = 150
    Proportional = True
    Visible = False
    OnClick = Image2Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 20
    Width = 106
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 240
    Top = 187
    Width = 57
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 222
    Top = 291
    Width = 75
    Height = 25
    Caption = 'Enter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 152
    Top = 75
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 152
    Top = 131
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    OnChange = ComboBox2Change
  end
  object Edit3: TEdit
    Left = 218
    Top = 246
    Width = 79
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 264
    Top = 18
    Width = 33
    Height = 25
    Caption = 'New'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADODataSet1: TADODataSet
    Connection = Form2.ADOConnection1
    CommandText = 'select * from items'
    Parameters = <>
    Left = 18
    Top = 282
  end
end
