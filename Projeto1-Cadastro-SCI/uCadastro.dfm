object frCadastroAluno: TfrCadastroAluno
  Left = 0
  Top = 0
  Caption = 'Cadastro de aluno'
  ClientHeight = 406
  ClientWidth = 399
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbTitulo: TLabel
    Left = 0
    Top = 0
    Width = 399
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'IFSC - Estagio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 124
  end
  object lbNome: TLabel
    Left = 42
    Top = 56
    Width = 49
    Height = 21
    Caption = 'Nome:'
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbSexo: TLabel
    Left = 50
    Top = 104
    Width = 41
    Height = 21
    Caption = 'Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbIdade: TLabel
    Left = 43
    Top = 152
    Width = 48
    Height = 21
    Caption = 'Idade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbCurso: TLabel
    Left = 43
    Top = 210
    Width = 48
    Height = 21
    Caption = 'Curso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbFase: TLabel
    Left = 207
    Top = 210
    Width = 41
    Height = 21
    Caption = 'Fase:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbMediaNota: TLabel
    Left = 43
    Top = 253
    Width = 121
    Height = 21
    Caption = 'Media de Notas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edNome: TEdit
    Left = 97
    Top = 59
    Width = 124
    Height = 21
    TabOrder = 0
    OnExit = edNomeExit
  end
  object edIdade: TEdit
    Left = 97
    Top = 155
    Width = 41
    Height = 21
    TabOrder = 2
    OnExit = edIdadeExit
  end
  object cbFase: TComboBox
    Left = 254
    Top = 213
    Width = 40
    Height = 21
    Enabled = False
    TabOrder = 4
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object cbCurso: TComboBox
    Left = 97
    Top = 213
    Width = 104
    Height = 21
    Enabled = False
    TabOrder = 3
    OnClick = cbCursoClick
    Items.Strings = (
      'Informatica'
      'Quimica')
  end
  object edMediaNota: TEdit
    Left = 170
    Top = 256
    Width = 49
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object cbSexo: TComboBox
    Left = 97
    Top = 107
    Width = 124
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Feminino'
      'Masculino')
  end
  object btResultado: TButton
    Left = 8
    Top = 303
    Width = 97
    Height = 41
    Caption = 'Resultado'
    TabOrder = 7
    OnClick = btResultadoClick
  end
  object ckEstagio: TCheckBox
    Left = 97
    Top = 182
    Width = 95
    Height = 25
    HelpType = htKeyword
    Caption = 'Desejo Estagiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnClick = ckEstagioClick
  end
  object btLista: TButton
    Left = 148
    Top = 310
    Width = 97
    Height = 41
    Caption = 'Listar'
    TabOrder = 8
    OnClick = btListaClick
  end
  object btSalvar: TButton
    Left = 148
    Top = 357
    Width = 97
    Height = 41
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btSalvarClick
  end
  object btEstagioDesejada: TButton
    Left = 286
    Top = 303
    Width = 97
    Height = 41
    Caption = 'Estagio'
    Enabled = False
    TabOrder = 10
    OnClick = btEstagioDesejadaClick
  end
end
