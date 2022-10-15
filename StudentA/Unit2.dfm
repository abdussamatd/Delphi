object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Sign up'
  ClientHeight = 245
  ClientWidth = 305
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
    Left = 32
    Top = 32
    Width = 39
    Height = 19
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 67
    Height = 19
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 42
    Height = 19
    Caption = 'Grade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 168
    Width = 69
    Height = 19
    Caption = 'Full name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 34
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 82
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 200
    Top = 130
    Width = 73
    Height = 21
    Style = csDropDownList
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 136
    Top = 170
    Width = 137
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 200
    Top = 207
    Width = 73
    Height = 25
    Caption = 'Sign up'
    TabOrder = 4
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 32
    Top = 200
  end
end
