object table2form: Ttable2form
  Left = 224
  Top = 369
  BorderStyle = bsDialog
  Caption = 'Table - 2'
  ClientHeight = 142
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 45
    Width = 45
    Height = 13
    Caption = 'Set Time:'
  end
  object Label2: TLabel
    Left = 184
    Top = 43
    Width = 9
    Height = 13
    Caption = 'or'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 33
    Caption = 'Table - 2'
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 40
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Set Time'
    Items.Strings = (
      '1 Minute'
      '10 Minute'
      '20 Minute'
      '30 Minute'
      '40 Minute'
      '1 Hour'
      '1 Hour and 30 Minute'
      '2 Hour'
      '3 Hour')
  end
  object Edit1: TEdit
    Left = 200
    Top = 40
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 72
    Width = 249
    Height = 25
    Caption = 'Turn On'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 108
    Width = 89
    Height = 25
    Caption = 'VIP Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Free Time'
    Enabled = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 160
    Width = 97
    Height = 17
    Caption = 'free'
    TabOrder = 6
  end
  object CheckBox2: TCheckBox
    Left = 120
    Top = 160
    Width = 97
    Height = 17
    Caption = 'VIP'
    TabOrder = 7
  end
end
