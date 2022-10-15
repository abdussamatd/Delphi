object Form8: TForm8
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 191
  ClientWidth = 281
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
    Left = 16
    Top = 16
    Width = 49
    Height = 23
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 76
    Height = 23
    Caption = 'Surname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 51
    Height = 23
    Caption = 'Grade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 112
    Top = 21
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 69
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 117
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 128
    Top = 153
    Width = 137
    Height = 25
    Caption = 'Cancel the extra lessons'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 17
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 200
    Top = 32
  end
end
