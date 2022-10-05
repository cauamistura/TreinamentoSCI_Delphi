unit uDMDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDataModule1 = class(TDataModule)
    cdsCadastro2: TClientDataSet;
    cdsCadastro2bdCodigo: TIntegerField;
    cdsCadastro2bdNome: TStringField;
    cdsCadastro2bdSexo: TIntegerField;
    cdsCadastro2bdEStrangeiro: TBooleanField;
    srControladorCadastro: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
