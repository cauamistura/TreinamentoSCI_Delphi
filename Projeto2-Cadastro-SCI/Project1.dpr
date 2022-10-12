program Project1;

uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frPessoa},
  uDMDataModule in 'uDMDataModule.pas' {DataModule1: TDataModule},
  uConsulta in 'uConsulta.pas' {frConsulta},
  uMenu in 'uMenu.pas' {frMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrMenu, frMenu);
  Application.CreateForm(TfrPessoa, frPessoa);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrConsulta, frConsulta);
  Application.CreateForm(TfrMenu, frMenu);
  Application.Run;
end.
