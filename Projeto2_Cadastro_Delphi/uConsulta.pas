unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, uDMDataModule,
  Vcl.StdCtrls;

type
  TfrConsulta = class(TForm)
    DBGrid1: TDBGrid;
    cbSexoFilter: TComboBox;
    lbSexoFilter: TLabel;
    lbNomeFilter: TLabel;
    edNomeFilter: TEdit;
    btFiltrar: TButton;
    procedure btFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsulta: TfrConsulta;

implementation

{$R *.dfm}

procedure TfrConsulta.btFiltrarClick(Sender: TObject);
begin
  DataModule1.cdsCadastro2.Filter   := '';
  DataModule1.cdsCadastro2.Filtered := False;

  if cbSexoFilter.ItemIndex >= 0 then
    DataModule1.cdsCadastro2.Filter := 'bdSexo = ' + IntToStr(cbSexoFilter.ItemIndex);
  if edNomeFilter.Text <> ''then
    DataModule1.cdsCadastro2.Filter := 'bdNome = ' + QuotedStr(edNomeFilter.Text);

    DataModule1.cdsCadastro2.Filtered := True;
end;

end.
