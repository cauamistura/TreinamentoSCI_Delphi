program Project1;

uses
  Vcl.Forms,
  uCadastroAluno in 'uCadastroAluno.pas' {frRegistroAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrRegistroAluno, frRegistroAluno);
  Application.Run;
end.
