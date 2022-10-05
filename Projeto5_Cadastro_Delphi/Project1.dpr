program Project1;

uses
  Vcl.Forms,
  uCadastroVeiculo in 'uCadastroVeiculo.pas' {frCadastroVeiculos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastroVeiculos, frCadastroVeiculos);
  Application.Run;
end.
