unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCadastro, uConsulta;

type
  TfrMenu = class(TForm)
    btAdicionarP: TButton;
    btConsultarCDS: TButton;
    btExit: TButton;
    procedure btExitClick(Sender: TObject);
    procedure btAdicionarPClick(Sender: TObject);
    procedure btConsultarCDSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frMenu: TfrMenu;

implementation

{$R *.dfm}

procedure TfrMenu.btAdicionarPClick(Sender: TObject);
var
  wTela: TfrPessoa;
begin
  wTela := TfrPessoa.Create(self);
  wTela.Show;
end;

procedure TfrMenu.btConsultarCDSClick(Sender: TObject);
var
  wTela: TfrConsulta;
begin
  wTela := TfrConsulta.Create(self);
  wTela.Show;
end;

procedure TfrMenu.btExitClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair? Seus dados ser�o perdidos.', TMsgDlgType.mtWarning, [mbYes, mbNo], 0) = mrNo then
  Exit;
  Application.Terminate;
end;

end.
