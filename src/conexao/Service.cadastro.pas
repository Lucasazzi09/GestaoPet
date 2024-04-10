unit Service.cadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMcadastro = class(TDataModule)
    QryClientes: TFDQuery;
    QryFornecedores: TFDQuery;
    QryClientesCOD_CLI: TIntegerField;
    QryClientesNOME_CLI: TStringField;
    QryClientesCPFCNPJ: TStringField;
    QryClientesTELEFONE: TStringField;
    QryClientesTIPO_CLI: TStringField;
    QryClientesCEP: TStringField;
    QryClientesCIDADE: TStringField;
    QryClientesENDERECO: TStringField;
    QryClientesBAIRRO: TStringField;
    QryClientesNUMERO: TStringField;
    QryFornecedoresCOD_FORN: TIntegerField;
    QryFornecedoresNOME_FORN: TStringField;
    QryFornecedoresCNPJ: TStringField;
    QryFornecedoresTELEFONE: TStringField;
    QryFornecedoresCEP: TStringField;
    QryFornecedoresCIDADE: TStringField;
    QryFornecedoresENDERECO: TStringField;
    QryFornecedoresBAIRRO: TStringField;
    QryFornecedoresOBSERVACAO: TStringField;
    QryFornecedoresNUMERO: TStringField;
    QryClientesOBSERVACAO: TStringField;
    QryProdutos: TFDQuery;
    QryProdutosCOD_PROD: TIntegerField;
    QryProdutosNOME_PROD: TStringField;
    QryProdutosDESCRICAO: TStringField;
    QryProdutosCOD_BARRA: TStringField;
    QryProdutosGRUPO: TIntegerField;
    QryProdutosSUBGRUPO: TIntegerField;
    QryProdutosSIT_TRIBUTARIA: TIntegerField;
    QryProdutosNCM: TIntegerField;
    QryProdutosCUSTO: TFMTBCDField;
    QryProdutosPRECO_VENDA: TFMTBCDField;
    QryProdutosESTOQUE: TFMTBCDField;
    QryFuncionarios: TFDQuery;
    QryFuncionariosCOD_FUNC: TIntegerField;
    QryFuncionariosNOME_FUNC: TStringField;
    QryFuncionariosTELEFONE: TStringField;
    QryFuncionariosCPFCNPJ: TStringField;
    procedure QryClientesTIPO_CLIGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMcadastro: TDMcadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Service.conexao;

{$R *.dfm}

procedure TDMcadastro.QryClientesTIPO_CLIGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   // Verifica se o valor é 1 e define o texto como "Físico"
  if Sender.AsInteger = 1 then
    Text := 'Físico'
  // Verifica se o valor é 2 e define o texto como "Jurídico"
  else if Sender.AsInteger = 2 then
    Text := 'Jurídico'
end;

end.
