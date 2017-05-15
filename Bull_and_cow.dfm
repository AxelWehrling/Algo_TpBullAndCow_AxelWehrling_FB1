object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'BullAndCow'
  ClientHeight = 325
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bulls: TLabel
    Left = 40
    Top = 136
    Width = 21
    Height = 13
    Caption = 'Bulls'
  end
  object Cows: TLabel
    Left = 40
    Top = 179
    Width = 26
    Height = 13
    Caption = 'Cows'
  end
  object Essai: TLabel
    Left = 208
    Top = 179
    Width = 33
    Height = 13
    Caption = 'Essais:'
  end
  object Label1: TLabel
    Left = 40
    Top = 91
    Width = 70
    Height = 13
    Caption = 'Entrer un mot:'
  end
  object Entrer: TEdit
    Left = 162
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Cow: TEdit
    Left = 88
    Top = 176
    Width = 49
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object Bull: TEdit
    Left = 88
    Top = 133
    Width = 49
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object Check: TButton
    Left = 40
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Check'
    TabOrder = 3
    OnClick = CheckClick
  end
  object Erase: TButton
    Left = 166
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Erase'
    TabOrder = 4
    OnClick = EraseClick
  end
  object Quit: TButton
    Left = 295
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Quit'
    TabOrder = 5
    OnClick = QuitClick
  end
  object CaseEssai: TEdit
    Left = 258
    Top = 176
    Width = 25
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object Dico: TMemo
    Left = 368
    Top = 164
    Width = 57
    Height = 89
    Lines.Strings = (
      'Dico')
    TabOrder = 7
    Visible = False
  end
  object Mot: TEdit
    Left = 258
    Top = 216
    Width = 81
    Height = 21
    TabOrder = 8
    Visible = False
  end
end
