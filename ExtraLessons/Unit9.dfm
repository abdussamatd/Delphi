object Form9: TForm9
  Left = 0
  Top = 0
  ClientHeight = 277
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
    Width = 62
    Height = 23
    Caption = 'Sublect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 152
    Width = 52
    Height = 23
    Caption = 'Phone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 200
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
  object Edit4: TEdit
    Left = 112
    Top = 157
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 112
    Top = 205
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 128
    Top = 240
    Width = 137
    Height = 25
    Caption = 'Cancel the extra lesson'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 240
    Width = 70
    Height = 25
    Caption = 'Back'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 96
    Top = 104
  end
end
