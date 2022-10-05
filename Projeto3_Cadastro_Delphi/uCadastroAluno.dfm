object frRegistroAluno: TfrRegistroAluno
  Left = 0
  Top = 0
  Caption = 'Registro Do Aluno'
  ClientHeight = 500
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTitulo: TLabel
    Left = 0
    Top = 0
    Width = 530
    Height = 19
    Align = alTop
    Alignment = taCenter
    Caption = 'Registro do Aluno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 128
  end
  object lbMatricula: TLabel
    Left = 28
    Top = 104
    Width = 47
    Height = 13
    Caption = 'Matricula:'
  end
  object lbCidade: TLabel
    Left = 38
    Top = 248
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object lbFase: TLabel
    Left = 48
    Top = 200
    Width = 27
    Height = 13
    Caption = 'Fase:'
  end
  object lbCurso: TLabel
    Left = 43
    Top = 152
    Width = 32
    Height = 13
    Caption = 'Curso:'
  end
  object lbNome: TLabel
    Left = 44
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object edCidade: TEdit
    Left = 81
    Top = 245
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edNome: TEdit
    Left = 81
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cbCurso: TComboBox
    Left = 81
    Top = 149
    Width = 121
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Informatica'
      'Quimica')
  end
  object edMatricula: TEdit
    Left = 81
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cbFase: TComboBox
    Left = 81
    Top = 197
    Width = 121
    Height = 21
    TabOrder = 3
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object ckTrabalha: TCheckBox
    Left = 96
    Top = 288
    Width = 97
    Height = 17
    Caption = 'Trabalha'
    TabOrder = 5
  end
  object btAdicionar: TButton
    Left = 312
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = btAdicionarClick
  end
  object grPrintDataBase: TDBGrid
    Left = 8
    Top = 328
    Width = 514
    Height = 164
    DataSource = srGerenciadorCDS
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = grPrintDataBaseTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdMatricula'
        Title.Caption = 'Matricula'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Caption = 'Nome'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCurso'
        Title.Caption = 'Curso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdFase'
        Title.Caption = 'Fase'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCidade'
        Title.Caption = 'Cidade'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTrabalha'
        Title.Caption = 'Trabalha'
        Width = 50
        Visible = True
      end>
  end
  object cdsCadastroAluno: TClientDataSet
    PersistDataPacket.Data = {
      A40000009619E0BD010000001800000006000000000003000000A4000B62644D
      6174726963756C6104000100000000000662644E6F6D65020049000000010005
      574944544802000200FF00076264437572736F02004900000001000557494454
      4802000200FF0006626446617365040001000000000008626443696461646502
      0049000000010005574944544802000200FF000A626454726162616C68610200
      0300000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdMatricula'
        DataType = ftInteger
      end
      item
        Name = 'bdNome'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'bdCurso'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'bdFase'
        DataType = ftInteger
      end
      item
        Name = 'bdCidade'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'bdTrabalha'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'iMatricula'
        Fields = 'bdMatricula'
        Options = [ixPrimary, ixUnique]
      end>
    Params = <>
    StoreDefs = True
    Left = 304
    Top = 248
    object cdsCadastroAlunobdMatricula: TIntegerField
      FieldName = 'bdMatricula'
    end
    object cdsCadastroAlunobdNome: TStringField
      FieldName = 'bdNome'
      Size = 255
    end
    object cdsCadastroAlunobdCurso: TStringField
      FieldName = 'bdCurso'
      Size = 255
    end
    object cdsCadastroAlunobdFase: TIntegerField
      FieldName = 'bdFase'
    end
    object cdsCadastroAlunobdCidade: TStringField
      FieldName = 'bdCidade'
      Size = 255
    end
    object cdsCadastroAlunobdTrabalha: TBooleanField
      FieldName = 'bdTrabalha'
    end
  end
  object srGerenciadorCDS: TDataSource
    DataSet = cdsCadastroAluno
    Left = 392
    Top = 232
  end
end
