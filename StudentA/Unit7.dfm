object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Student A'
  ClientHeight = 140
  ClientWidth = 314
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
    Top = 64
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
  object Label1: TLabel
    Left = 16
    Top = 16
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
  object Edit2: TEdit
    Left = 160
    Top = 66
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 160
    Top = 18
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 222
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Change'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 112
    Top = 88
  end
end
