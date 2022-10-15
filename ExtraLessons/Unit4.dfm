object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Registration'
  ClientHeight = 262
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 262
    Align = alClient
    TabOrder = 0
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
      Width = 78
      Height = 23
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 117
      Width = 65
      Height = 23
      Caption = 'Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 120
      Top = 29
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 120
      Top = 85
      Width = 153
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 120
      Top = 122
      Width = 153
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 183
      Top = 149
      Width = 90
      Height = 65
      Caption = 'User type'
      Items.Strings = (
        'Teacher'
        'Student')
      TabOrder = 3
    end
    object Button1: TButton
      Left = 183
      Top = 220
      Width = 90
      Height = 25
      Caption = 'Next'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 262
    Align = alClient
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 14
      Top = 16
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
    object Label5: TLabel
      Left = 14
      Top = 56
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
    object Label9: TLabel
      Left = 14
      Top = 98
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
    object Edit4: TEdit
      Left = 120
      Top = 21
      Width = 160
      Height = 21
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 120
      Top = 61
      Width = 160
      Height = 21
      TabOrder = 1
    end
    object Edit8: TEdit
      Left = 205
      Top = 103
      Width = 75
      Height = 21
      TabOrder = 3
    end
    object Button5: TButton
      Left = 205
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Enter'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 14
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Back'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Panel3: TPanel
      Left = 1
      Top = 85
      Width = 295
      Height = 176
      Align = alBottom
      TabOrder = 2
      Visible = False
      object Label6: TLabel
        Left = 13
        Top = 13
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
      object Label7: TLabel
        Left = 13
        Top = 53
        Width = 102
        Height = 23
        Caption = 'Phone      +'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 13
        Top = 93
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
      object Edit7: TEdit
        Left = 119
        Top = 97
        Width = 160
        Height = 21
        TabOrder = 0
      end
      object Button2: TButton
        Left = 204
        Top = 136
        Width = 75
        Height = 25
        Caption = 'Enter'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Edit6: TEdit
        Left = 119
        Top = 58
        Width = 160
        Height = 21
        TabOrder = 2
      end
      object ComboBox1: TComboBox
        Left = 119
        Top = 18
        Width = 130
        Height = 21
        Style = csDropDownList
        TabOrder = 3
      end
      object Button3: TButton
        Left = 255
        Top = 18
        Width = 24
        Height = 21
        Caption = '+'
        TabOrder = 4
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 13
        Top = 136
        Width = 75
        Height = 25
        Caption = 'Back'
        TabOrder = 5
        OnClick = Button4Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 264
    Top = 32
  end
end
