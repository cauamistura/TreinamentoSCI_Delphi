object frMenu: TfrMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 280
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btAdicionarP: TButton
    Left = 48
    Top = 32
    Width = 161
    Height = 49
    Caption = 'Adicionar Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btAdicionarPClick
  end
  object btConsultarCDS: TButton
    Left = 48
    Top = 104
    Width = 161
    Height = 49
    Caption = 'Consultar CDS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btConsultarCDSClick
  end
  object btExit: TButton
    Left = 48
    Top = 176
    Width = 161
    Height = 49
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btExitClick
  end
end
