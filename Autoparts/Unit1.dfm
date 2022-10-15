object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sign in'
  ClientHeight = 201
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 53
    Height = 23
    Caption = 'Login'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 90
    Height = 23
    Caption = 'Password'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 45
    Width = 161
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 136
    Top = 109
    Width = 161
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = Edit2KeyDown
  end
  object Button1: TButton
    Left = 222
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Sign in'
    TabOrder = 2
    OnClick = Button1Click
  end
  object IdEncoderXXE1: TIdEncoderXXE
    FillChar = '+'
    Left = 40
    Top = 144
  end
end
