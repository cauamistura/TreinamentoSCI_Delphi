program Project1;

uses
  Vcl.Forms,
  uCadastroRoupa in 'uCadastroRoupa.pas' {frCadastroRoupa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastroRoupa, frCadastroRoupa);
  Application.Run;
end.
