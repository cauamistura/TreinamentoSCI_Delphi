object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 245
  Width = 354
  object cdsCadastro2: TClientDataSet
    PersistDataPacket.Data = {
      6B0000009619E0BD0100000018000000040000000000030000006B0008626443
      6F6469676F04000100000000000662644E6F6D65020049000000010005574944
      544802000200FF000662645365786F04000100000000000D626445537472616E
      676569726F02000300000000000000}
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
        DataType = ftInteger
      end
      item
        Name = 'bdEStrangeiro'
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
    Left = 32
    Top = 24
    object cdsCadastro2bdCodigo: TIntegerField
      FieldName = 'bdCodigo'
    end
    object cdsCadastro2bdNome: TStringField
      FieldName = 'bdNome'
      Size = 255
    end
    object cdsCadastro2bdSexo: TIntegerField
      FieldName = 'bdSexo'
    end
    object cdsCadastro2bdEStrangeiro: TBooleanField
      FieldName = 'bdEStrangeiro'
    end
  end
  object srControladorCadastro: TDataSource
    DataSet = cdsCadastro2
    Left = 136
    Top = 24
  end
end
