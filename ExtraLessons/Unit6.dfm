object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Profile'
  ClientHeight = 384
  ClientWidth = 349
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
    Width = 45
    Height = 23
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 88
    Height = 23
    Caption = 'First name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 86
    Height = 23
    Caption = 'Last name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 192
    Width = 63
    Height = 23
    Caption = 'Subject'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 240
    Width = 124
    Height = 23
    Caption = 'Phone number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 296
    Width = 52
    Height = 23
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 29
    Width = 169
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 85
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 141
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 160
    Top = 245
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 160
    Top = 301
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 197
    Width = 139
    Height = 21
    Style = csDropDownList
    TabOrder = 5
  end
  object Button3: TButton
    Left = 305
    Top = 197
    Width = 24
    Height = 21
    Caption = '+'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 254
    Top = 342
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 342
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 8
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'a'
        Size = -1
        Value = Null
      end
      item
        Name = 'b'
        Size = -1
        Value = Null
      end
      item
        Name = 'c'
        Size = -1
        Value = Null
      end
      item
        Name = 'd'
        Size = -1
        Value = Null
      end
      item
        Name = 'e'
        Size = -1
        Value = Null
      end
      item
        Name = 'login'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE teachers SET [First name]=:a,[Last name]=:b,[Subject]=:c,' +
        '[Phone number]=:d,[E-mail]=:e WHERE login=:login')
    Left = 120
    Top = 336
  end
end
