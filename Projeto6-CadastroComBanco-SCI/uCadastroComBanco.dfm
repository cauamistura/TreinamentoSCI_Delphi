object frCadastroPaciente: TfrCadastroPaciente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Paciente'
  ClientHeight = 261
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 80
    Top = 40
    Width = 44
    Height = 16
    Caption = 'Codigo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNomePaciente: TLabel
    Left = 16
    Top = 72
    Width = 108
    Height = 16
    Caption = 'Nome do Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbSexo: TLabel
    Left = 91
    Top = 104
    Width = 33
    Height = 16
    Caption = 'Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbTitulo: TLabel
    Left = 0
    Top = 0
    Width = 764
    Height = 19
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Pacientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 154
  end
  object lbTelefone: TLabel
    Left = 69
    Top = 134
    Width = 55
    Height = 16
    Caption = 'Telefone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbAlerta: TLabel
    Left = 16
    Top = 42
    Width = 60
    Height = 13
    Caption = 'Obrigat'#243'rio*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    Visible = False
  end
  object edCodigo: TEdit
    Left = 130
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edCodigoExit
    OnKeyPress = edCodigoKeyPress
  end
  object edNome: TEdit
    Left = 130
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edTelefone: TEdit
    Left = 130
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object cbSexo: TComboBox
    Left = 130
    Top = 103
    Width = 121
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Feminino'
      'Masculino')
  end
  object ckHistorico: TCheckBox
    Left = 46
    Top = 168
    Width = 205
    Height = 17
    Caption = 'Tem Hist'#243'rico de Comorbidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btCadastrar: TButton
    Left = 91
    Top = 205
    Width = 94
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = btCadastrarClick
  end
  object DBGrid1: TDBGrid
    Left = 265
    Top = 39
    Width = 491
    Height = 191
    DataSource = srControlador1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCodigo'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSexo'
        Title.Alignment = taCenter
        Title.Caption = 'Sexo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTelefone'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdHistorico'
        Title.Alignment = taCenter
        Title.Caption = 'Historico de Comorbidade'
        Visible = True
      end>
  end
  object cdsCadastroPaciente: TClientDataSet
    PersistDataPacket.Data = {
      940000009619E0BD010000001800000005000000000003000000940008626443
      6F6469676F04000100000000000662644E6F6D65020049000000010005574944
      544802000200FF000662645365786F0100490000000100055749445448020002
      0014000A626454656C65666F6E65010049000000010005574944544802000200
      0E000B6264486973746F7269636F02000300000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCodigo'
        DataType = ftInteger
      end
      item
        Name = 'bdNome'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'bdSexo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bdTelefone'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'bdHistorico'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'iCodigo'
        Fields = 'bdCodigo'
        Options = [ixPrimary, ixUnique]
      end>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 224
    object cdsCadastroPacientebdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object cdsCadastroPacientebdNome: TStringField
      FieldName = 'bdNome'
      Size = 255
    end
    object cdsCadastroPacientebdSexo: TStringField
      FieldName = 'bdSexo'
    end
    object cdsCadastroPacientebdTelefone: TStringField
      FieldName = 'bdTelefone'
      Size = 14
    end
    object cdsCadastroPacientebdHistorico: TBooleanField
      FieldName = 'bdHistorico'
    end
  end
  object srControlador1: TDataSource
    DataSet = cdsCadastroPaciente
    Left = 16
    Top = 192
  end
end