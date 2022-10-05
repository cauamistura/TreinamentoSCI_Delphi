object frConsulta: TfrConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 294
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbSexoFilter: TLabel
    Left = 8
    Top = 27
    Width = 37
    Height = 18
    Caption = 'Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNomeFilter: TLabel
    Left = 160
    Top = 26
    Width = 49
    Height = 18
    Caption = 'Nome: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 95
    Width = 421
    Height = 199
    Align = alBottom
    DataSource = DataModule1.srControladorCadastro
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Caption = 'Codigo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSexo'
        Title.Caption = 'Sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdEStrangeiro'
        Title.Caption = 'Estrangeiro '
        Visible = True
      end>
  end
  object cbSexoFilter: TComboBox
    Left = 46
    Top = 23
    Width = 108
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      'Feminino'
      'Masculino')
  end
  object edNomeFilter: TEdit
    Left = 207
    Top = 23
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btFiltrar: TButton
    Left = 338
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = btFiltrarClick
  end
end
