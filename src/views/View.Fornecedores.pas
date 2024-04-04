unit View.Fornecedores;

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
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    lblCodForn: TLabel;
    lblNomeForn: TLabel;
    lblCnpj: TLabel;
    lblTelefone: TLabel;
    panTituloCadForn: TPanel;
    lblTituloCadastro: TLabel;
    edtCodForn: TDBEdit;
    edtNomeForn: TDBEdit;
    edtCnpj: TDBEdit;
    edtTelefone: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GET_Fornecedores (iCod: Integer);
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

procedure TViewFornecedores.btnCancelarClick(Sender: TObject);
begin  // cancelar edição
  inherited;
  if DMcadastro.QryFornecedores.State in dsEditModes then
  begin
  DMcadastro.QryFornecedores.Cancel;
  cardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewFornecedores.btnEditarClick(Sender: TObject);
begin  // Editar cadastro fornecedores
  inherited;
  cardPanel_Listas.ActiveCard := card_cadastro;
  edtNomeForn.SetFocus; // quando estiver em edição o primeiro foco é no campo nome
  DMcadastro.QryFornecedores.Edit;
end;

procedure TViewFornecedores.btnExcluirClick(Sender: TObject);
begin    // Excluir cadastro de fornecedores
  inherited;
  if DMcadastro.QryFornecedores.RecordCount > 0 then
  begin
  DMcadastro.QryFornecedores.Delete;
  ShowMessage('Fornecedor deletado com sucesso!');
  cardPanel_listas.ActiveCard := card_pesquisa;  // quando salvar, irá voltar para a tela de pesquisa
  end;
end;

procedure TViewFornecedores.btnNovoClick(Sender: TObject);
begin  // Novo cadastro de fornecedor
  inherited;
  cardPanel_Listas.ActiveCard := card_cadastro;
  edtNomeForn.SetFocus; // quando estiver cadastrando um fornecedor novo, o primeiro foco é no campo nome
  DMcadastro.QryFornecedores.Insert;
end;

procedure TViewFornecedores.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewFornecedores.btnSalvarClick(Sender: TObject);
begin  // Salvar cadastro fornecedor
  inherited;
  // O bloco if verifica se o estado atual do QryFornecedores está em modo de edição usando a função State.
  // Se estiver em modo de edição, o código dentro do bloco if é executado.
  // Neste caso, o código dentro do bloco if chama o método Post do QryFornecedores, que salva as alterações feitas no registro atual do conjunto de dados.
   if DMcadastro.QryFornecedores.State in dsEditModes then
   begin
   DMcadastro.QryFornecedores.Post;  // salva as alterações no TQuery
   ShowMessage('Fornecedor salvo com sucesso!'); // exibe uma mensagem de sucesso
   cardPanel_Listas.ActiveCard := card_pesquisa;  // quando salvar, irá voltar para a tela de pesquisa
   end;
end;

procedure TViewFornecedores.GET_Fornecedores(iCod: integer);
begin
  DMcadastro.QryFornecedores.Close;
  DMcadastro.QryFornecedores.SQL.Clear;
  DMcadastro.QryFornecedores.SQL.Add('SELECT * FROM TAB_FORNECEDOR');
  DMcadastro.QryFornecedores.SQL.Add('ORDER BY COD_FORN 1 CRESC'); // para ordernar por código do fornecedor em ordem crescente (1,2,3,4)
  DMcadastro.QryFornecedores.Open();
end;

end.
