object frPessoa: TfrPessoa
  Left = 0
  Top = 0
  Caption = 'Pessoas'
  ClientHeight = 348
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 8
    Top = 47
    Width = 56
    Height = 23
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbSexo: TLabel
    Left = 17
    Top = 78
    Width = 47
    Height = 23
    Caption = 'Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbCPF: TLabel
    Left = 26
    Top = 20
    Width = 38
    Height = 23
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbAlerta1: TLabel
    Left = 217
    Top = 25
    Width = 96
    Height = 13
    Caption = '*Campo Obrigat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    Visible = False
  end
  object ckEstrangeiro: TCheckBox
    Left = 70
    Top = 106
    Width = 97
    Height = 17
    Caption = 'Estrangeiro'
    TabOrder = 3
  end
  object edNome: TEdit
    Left = 70
    Top = 49
    Width = 141
    Height = 21
    TabOrder = 1
  end
  object edCPF: TEdit
    Left = 70
    Top = 22
    Width = 141
    Height = 21
    TabOrder = 0
    OnExit = edCPFExit
    OnKeyPress = edCPFKeyPress
  end
  object cbSexo: TComboBox
    Left = 70
    Top = 79
    Width = 141
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Feminino'
      'Masculino')
  end
  object btAdicionar: TButton
    Left = 26
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = btAdicionarClick
  end
  object btPrintTabela: TButton
    Left = 291
    Top = 158
    Width = 94
    Height = 25
    Caption = 'Printar Tabela'
    TabOrder = 5
    OnClick = btPrintTabelaClick
  end
  object btSalvarDados: TButton
    Left = 159
    Top = 158
    Width = 94
    Height = 25
    Caption = 'Salvar txt'
    TabOrder = 6
    OnClick = btSalvarDadosClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 200
    Width = 403
    Height = 140
    DataSource = DataModule1.srControladorCadastro
    TabOrder = 7
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
end