object Form10: TForm10
  Left = 413
  Top = 302
  BorderStyle = bsDialog
  Caption = 'Register Admin'
  ClientHeight = 132
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 63
    Height = 13
    Caption = 'Admin Name:'
  end
  object Label2: TLabel
    Left = 8
    Top = 44
    Width = 49
    Height = 13
    Caption = 'Password:'
  end
  object Label3: TLabel
    Left = 8
    Top = 68
    Width = 66
    Height = 13
    Caption = 'Re-Password:'
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 145
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 0
    Text = 'admin'
  end
  object Edit2: TEdit
    Left = 88
    Top = 40
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 64
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 88
    Top = 96
    Width = 145
    Height = 25
    Caption = 'Create Admin Account'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 144
    Width = 377
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
end
