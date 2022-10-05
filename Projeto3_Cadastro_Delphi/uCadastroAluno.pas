unit uCadastroAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrRegistroAluno = class(TForm)
    lbTitulo: TLabel;
    lbMatricula: TLabel;
    lbCidade: TLabel;
    lbFase: TLabel;
    lbCurso: TLabel;
    lbNome: TLabel;
    edCidade: TEdit;
    edNome: TEdit;
    cbCurso: TComboBox;
    edMatricula: TEdit;
    cbFase: TComboBox;
    ckTrabalha: TCheckBox;
    btAdicionar: TButton;
    grPrintDataBase: TDBGrid;
    cdsCadastroAluno: TClientDataSet;
    cdsCadastroAlunobdMatricula: TIntegerField;
    cdsCadastroAlunobdNome: TStringField;
    cdsCadastroAlunobdCurso: TStringField;
    cdsCadastroAlunobdFase: TIntegerField;
    cdsCadastroAlunobdCidade: TStringField;
    cdsCadastroAlunobdTrabalha: TBooleanField;
    srGerenciadorCDS: TDataSource;
    procedure btAdicionarClick(Sender: TObject);
    procedure grPrintDataBaseTitleClick(Column: TColumn);
  private
    { Private declarations }
    function fCurso: String;
  public
    { Public declarations }
  end;

var
  frRegistroAluno: TfrRegistroAluno;

implementation

{$R *.dfm}

procedure TfrRegistroAluno.btAdicionarClick(Sender: TObject);
begin

 cdsCadastroAluno.IndexFieldNames := 'bdMatricula';
 if cdsCadastroAluno.FindKey([edMatricula.Text]) then
  cdsCadastroAluno.Edit
 else
  cdsCadastroAluno.Insert;

  cdsCadastroAlunobdMatricula.AsInteger := StrToInt(edMatricula.Text);
  cdsCadastroAlunobdNome.AsString       := edNome.Text;
  cdsCadastroAlunobdCurso.AsString      := fCurso;
  cdsCadastroAlunobdFase.AsInteger      := cbFase.ItemIndex+1;
  cdsCadastroAlunobdCidade.AsString     := edCidade.Text;
  cdsCadastroAlunobdTrabalha.AsBoolean  := ckTrabalha.Checked;

  cdsCadastroAluno.Post;

end;

function TfrRegistroAluno.fCurso: String;
begin

  Result := 'Não atribuido';
  if cbCurso.ItemIndex = 0 then
   Result := 'Informatica';
  if cbCurso.ItemIndex = 1 then
    Result := 'Quimica';

end;

procedure TfrRegistroAluno.grPrintDataBaseTitleClick(Column: TColumn);
begin
  if Column.FieldName = 'bdMatricula' then
     cdsCadastroAluno.IndexFieldNames := 'bdMatricula';
  if Column.FieldName = 'bdNome' then
     cdsCadastroAluno.IndexFieldNames := 'bdNome';
  if Column.FieldName = 'bdCurso' then
     cdsCadastroAluno.IndexFieldNames := 'bdCurso';
  if Column.FieldName = 'bdFase' then
     cdsCadastroAluno.IndexFieldNames := 'bdFase';
  if Column.FieldName = 'bdCidade' then
     cdsCadastroAluno.IndexFieldNames := 'bdCidade';

end;


end.
