unit View.clientes;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.Base.Listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Service.cadastro,
  Vcl.ColorGrd,
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TViewClientes = class(TViewBaseListas)
    panTituloCadCliente: TPanel;
    lblTituloCadastro: TLabel;
    lblCodCli: TLabel;
    edtCodCli: TDBEdit;
    lblNomeCli: TLabel;
    edtNomeCli: TDBEdit;
    lblCpf_Cnpj: TLabel;
    edtCpf_Cnpj: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    rgTipoCliente: TRadioGroup;
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GET_Clientes(iCod: integer);
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }


procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin   // Cancelar
  inherited;
  if DMcadastro.QryClientes.State in dsEditModes then
  begin
  DMcadastro.QryClientes.Cancel;
  cardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin  // Editar cadastro
  inherited;
  cardPanel_Listas.ActiveCard := card_cadastro;
  edtNomeCli.SetFocus; // quando estiver em edição o primeiro foco é no campo nome
  DMcadastro.QryClientes.Edit;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin    // Excluir
  inherited;
  if DMcadastro.QryClientes.RecordCount > 0 then
  begin
  DMcadastro.QryClientes.Delete;
  ShowMessage('Cliente deletado com sucesso!');
  cardPanel_listas.ActiveCard := card_pesquisa;  //quando salvar, irá voltar para a tela de pesquisa
  end;
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin  // Novo cadastro
  inherited;
  cardPanel_Listas.ActiveCard := card_cadastro;
  edtNomeCli.SetFocus; // quando estiver cadastrando um cliente novo, o primeiro foco é no campo nome
  DMcadastro.QryClientes.Insert;
end;

procedure TViewClientes.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
var
  TipoCliente: Integer;

begin  // Salvar cadastro
  inherited;
  // O bloco if verifica se o estado atual do QryClientes está em modo de edição usando a função State. Se estiver em modo de edição, o código dentro do bloco if é executado. Neste caso, o código dentro do bloco if chama o método Post do QryClientes, que salva as alterações feitas no registro atual do conjunto de dados.
   if DMcadastro.QryClientes.State in dsEditModes then
   begin
   case rgTipoCliente.ItemIndex of

    0: TipoCliente := 1; // Físico
    1: TipoCliente := 2; // Jurídico

   end;

   Dmcadastro.QryClientesTIPO_CLI.AsInteger := TipoCliente;  // define o tipo de cliente no TQuery
   DMcadastro.QryClientes.Post;  // salva as alterações no TQuery
   ShowMessage('Cliente salvo com sucesso!'); // exibe uma mensagem de sucesso
   cardPanel_Listas.ActiveCard := card_pesquisa;  // quando salvar, irá voltar para a tela de pesquisa
   end;
end;

procedure TViewClientes.GET_Clientes(iCod: integer);
begin
  DMcadastro.QryClientes.Close;
  DMcadastro.QryClientes.SQL.Clear;
  DMcadastro.QryClientes.SQL.Add('SELECT * FROM TAB_CLIENTE');
   DMcadastro.QryClientes.SQL.Add('ORDER BY COD_CLI 1 CRESC'); // para ordernar por código do cliente em ordem crescente (1,2,3,4)
  DMcadastro.QryClientes.Open();
end;

end.
