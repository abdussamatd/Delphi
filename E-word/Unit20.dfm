object Form20: TForm20
  Left = 0
  Top = 0
  Caption = 'Password change'
  ClientHeight = 205
  ClientWidth = 302
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
    Left = 24
    Top = 24
    Width = 100
    Height = 19
    Caption = 'Last password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 103
    Height = 19
    Caption = 'New password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 57
    Height = 19
    Caption = 'Confirm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 163
    Width = 73
    Height = 25
    Caption = 'Back'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 136
    Top = 74
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 122
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 206
    Top = 163
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 26
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 128
    Top = 152
  end
end
