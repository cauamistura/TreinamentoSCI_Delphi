object frCadastroVeiculos: TfrCadastroVeiculos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Veiculos'
  ClientHeight = 416
  ClientWidth = 795
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 24
    Top = 20
    Width = 57
    Height = 18
    Caption = 'Codigo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbTipo: TLabel
    Left = 24
    Top = 62
    Width = 33
    Height = 18
    Caption = 'Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbMarca: TLabel
    Left = 24
    Top = 105
    Width = 45
    Height = 18
    Caption = 'Marca:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbFinal: TLabel
    Left = 24
    Top = 149
    Width = 92
    Height = 18
    Caption = 'Final da Placa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbPreco: TLabel
    Left = 24
    Top = 191
    Width = 41
    Height = 18
    Caption = 'Pre'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 248
    Top = 16
    Width = 539
    Height = 392
    DataSource = srControladorCDS1
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTipoVeiculo'
        Title.Caption = 'Tipo do Veiculo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMarca'
        Title.Caption = 'Marca'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdFinalPlaca'
        Title.Caption = 'Final da Placa'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdPreco'
        Title.Caption = 'Pre'#231'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdFabricacaoNacional'
        Title.Caption = 'Nacional'
        Visible = True
      end>
  end
  object ckFrabricacao: TCheckBox
    Left = 24
    Top = 241
    Width = 129
    Height = 17
    Caption = 'Fabrica'#231#227'o Nacional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edCodigo: TEdit
    Left = 24
    Top = 38
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = edCodigoExit
  end
  object edMarca: TEdit
    Left = 24
    Top = 123
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
  object edPreco: TEdit
    Left = 24
    Top = 209
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object cbTipo: TComboBox
    Left = 24
    Top = 81
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      'Carro'
      'Moto'
      'Caminh'#227'o')
  end
  object cbFinalPlaca: TComboBox
    Left = 24
    Top = 166
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object btAdicionarCDS: TButton
    Left = 64
    Top = 280
    Width = 105
    Height = 33
    Caption = 'Adicionar ao CDS'
    TabOrder = 6
    OnClick = btAdicionarCDSClick
  end
  object btPrintar: TButton
    Left = 40
    Top = 319
    Width = 153
    Height = 33
    Caption = 'Printar CDS e Adicionar SL'
    TabOrder = 8
    OnClick = btPrintarClick
  end
  object btSalvartxt: TButton
    Left = 64
    Top = 358
    Width = 113
    Height = 33
    Caption = 'Salvar em txt'
    TabOrder = 9
    OnClick = btSalvartxtClick
  end
  object cdsCadastroVeiculo: TClientDataSet
    PersistDataPacket.Data = {
      BF0000009619E0BD010000001800000006000000000003000000BF0008626443
      6F6469676F04000100000000000D62645469706F56656963756C6F0100490000
      0001000557494454480200020064000762644D61726361010049000000010005
      57494454480200020064000C626446696E616C506C6163610400010000000000
      076264507265636F080004000000010007535542545950450200490006004D6F
      6E6579001462644661627269636163616F4E6163696F6E616C02000300000000
      000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCodigo'
        DataType = ftInteger
      end
      item
        Name = 'bdTipoVeiculo'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bdMarca'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bdFinalPlaca'
        DataType = ftInteger
      end
      item
        Name = 'bdPreco'
        DataType = ftCurrency
      end
      item
        Name = 'bdFabricacaoNacional'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'iCodigo'
        Fields = 'bdCodigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'iTipo'
        Fields = 'bdTipoVeiculo'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'iMarca'
        Fields = 'bdMarca'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'iFinalPlaca'
        Fields = 'bdFinalPlaca'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'iPreco'
        Fields = 'bdPreco'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'iFabricacao'
        Fields = 'bdFabricacaoNacional'
        Options = [ixCaseInsensitive]
      end>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 24
    object cdsCadastroVeiculobdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object cdsCadastroVeiculobdTipoVeiculo: TStringField
      FieldName = 'bdTipoVeiculo'
      Size = 100
    end
    object cdsCadastroVeiculobdMarca: TStringField
      FieldName = 'bdMarca'
      Size = 100
    end
    object cdsCadastroVeiculobdFinalPlaca: TIntegerField
      FieldName = 'bdFinalPlaca'
    end
    object cdsCadastroVeiculobdPreco: TCurrencyField
      FieldName = 'bdPreco'
    end
    object cdsCadastroVeiculobdFabricacaoNacional: TBooleanField
      FieldName = 'bdFabricacaoNacional'
    end
  end
  object srControladorCDS1: TDataSource
    DataSet = cdsCadastroVeiculo
    Left = 184
    Top = 88
  end
end
