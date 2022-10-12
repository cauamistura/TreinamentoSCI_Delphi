unit uCadastroComBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Stan.Def, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBWrapper;

type
  TfrCadastroPaciente = class(TForm)
    lbCodigo: TLabel;
    lbNomePaciente: TLabel;
    lbSexo: TLabel;
    lbTitulo: TLabel;
    lbTelefone: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    edTelefone: TEdit;
    cbSexo: TComboBox;
    ckHistorico: TCheckBox;
    btCadastrar: TButton;
    cdsCadastroPaciente: TClientDataSet;
    cdsCadastroPacientebdCodigo: TIntegerField;
    cdsCadastroPacientebdNome: TStringField;
    cdsCadastroPacientebdSexo: TStringField;
    cdsCadastroPacientebdTelefone: TStringField;
    cdsCadastroPacientebdHistorico: TBooleanField;
    srControlador1: TDataSource;
    lbAlerta: TLabel;
    DBGrid1: TDBGrid;
    procedure btCadastrarClick(Sender: TObject);
    procedure edCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
    function fSexo: String;
  public
    { Public declarations }
  end;

var
  frCadastroPaciente: TfrCadastroPaciente;

implementation

{$R *.dfm}

{ TfrCadastroPaciente }

procedure TfrCadastroPaciente.btCadastrarClick(Sender: TObject);
begin
  cdsCadastroPaciente.IndexFieldNames := 'bdCodigo';
  if cdsCadastroPaciente.FindKey([edCodigo.Text]) then
    cdsCadastroPaciente.Edit
  else
    cdsCadastroPaciente.Insert;

  cdsCadastroPacientebdCodigo.AsInteger     := StrToInt(edCodigo.Text);
  cdsCadastroPacientebdNome.AsString        := edNome.Text;
  cdsCadastroPacientebdSexo.AsString        := fSexo;
  cdsCadastroPacientebdTelefone.AsString    := edTelefone.Text;
  cdsCadastroPacientebdHistorico.AsBoolean  := ckHistorico.Checked;

  cdsCadastroPaciente.Post;

  edCodigo.SetFocus;
end;

procedure TfrCadastroPaciente.edCodigoExit(Sender: TObject);
begin
  if edCodigo.Text = '' then
    begin
      edCodigo.SetFocus;
      lbAlerta.Visible := true;
    end
    else
      lbAlerta.Visible := false;
end;

procedure TfrCadastroPaciente.edCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  key := #0;
end;

function TfrCadastroPaciente.fSexo: String;
begin
  Result := 'N�o Atribuido';
  if cbSexo.ItemIndex = 0 then
    Result := 'Feminino';
  if cbSexo.ItemIndex = 1 then
    Result := 'Masculino';
end;

end.
