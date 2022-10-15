object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'New Good'
  ClientHeight = 279
  ClientWidth = 339
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
    Left = 16
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
  object Label1: TLabel
    Left = 16
    Top = 66
    Width = 63
    Height = 18
    Caption = 'Caption'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 114
    Width = 44
    Height = 18
    Caption = 'Label'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 162
    Width = 70
    Height = 18
    Caption = 'Producer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 210
    Width = 39
    Height = 18
    Caption = 'Price'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 145
    Top = 19
    Width = 153
    Height = 21
    Style = csDropDownList
    TabOrder = 0
  end
  object Button1: TButton
    Left = 304
    Top = 19
    Width = 25
    Height = 21
    Caption = '+'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 145
    Top = 63
    Width = 184
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 145
    Top = 111
    Width = 184
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 145
    Top = 159
    Width = 184
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 145
    Top = 207
    Width = 184
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 232
    Top = 245
    Width = 97
    Height = 25
    Caption = 'Insert'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Photo'
    TabOrder = 7
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'jpg|*.jpg|jpeg|*.jpeg|png|*.png|bmp|*.bmp'
    Left = 104
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    Parameters = <
      item
        Name = 'a'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'b'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'c'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'd'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'e'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO items(Category,Caption,label,Producer,Price) VALUES(' +
        ':a,:b,:c,:d,:e)')
    Left = 112
    Top = 144
  end
  object ADODataSet1: TADODataSet
    Connection = Form2.ADOConnection1
    CommandText = 'select id from items'
    Parameters = <>
    Left = 160
    Top = 240
  end
end
