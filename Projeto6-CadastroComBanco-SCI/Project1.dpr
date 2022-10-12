program Project1;

uses
  Vcl.Forms,
  uCadastroComBanco in 'uCadastroComBanco.pas' {frCadastroPaciente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastroPaciente, frCadastroPaciente);
  Application.Run;
end.
