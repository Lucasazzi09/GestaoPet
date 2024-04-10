unit View.Produtos;

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
  TViewProdutos = class(TViewBaseListas)
    panDetalheProd: TPanel;
    DBG_Detalhe: TDBGrid;
    lblCodProd: TLabel;
    edtCodProd: TDBEdit;
    lblNomeProd: TLabel;
    edtNomeProd: TDBEdit;
    lblDescricaoProd: TLabel;
    edtDescricao: TDBEdit;
    lblCodBarra: TLabel;
    edtCodBarra: TDBEdit;
    lblGrupo: TLabel;
    edtGrupoProd: TDBEdit;
    lblSubgrupo: TLabel;
    edtSubgrupoProd: TDBEdit;
    lblTribProd: TLabel;
    lblNcmProd: TLabel;
    LComboBoxTribut: TDBLookupComboBox;
    LComboBoxNcm: TDBLookupComboBox;
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GET_Produtos (iCod: Integer);
    procedure GET_Detalhe_produto (iCOD_PROD: Integer);
end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnCancelarClick(Sender: TObject);
begin  // cancelar edição
  inherited;
  if DMcadastro.QryProdutos.State in dsEditModes then
  begin
  DMcadastro.QryProdutos.Cancel;
  cardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin  // Editar cadastro de produtos
  inherited;
  cardPanel_Listas.ActiveCard := card_cadastro;
  edtNomeProd.SetFocus; // quando estiver em edição o primeiro foco é no campo nome
  DMcadastro.QryProdutos.Edit;

end;

procedure TViewProdutos.btnExcluirClick(Sender: TObject);
begin    // Excluir cadastro de produtos
  inherited;
  if DMcadastro.QryProdutos.RecordCount > 0 then
  begin
  DMcadastro.QryProdutos.Delete;
  ShowMessage('Produto deletado com sucesso!');
  cardPanel_listas.ActiveCard := card_pesquisa;  // quando salvar, irá voltar para a tela de pesquisa
  end;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin  // Novo cadastro de produto
  inherited;
  cardPanel_Listas.ActiveCard := card_cadastro;
  edtNomeProd.SetFocus; // quando estiver cadastrando um produto novo, o primeiro foco é no campo nome
  DMcadastro.QryProdutos.Insert;
end;

procedure TViewProdutos.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin  // Salvar cadastro Produtos
  inherited;
  // O bloco if verifica se o estado atual do QryProdutos está em modo de edição usando a função State.
  // Se estiver em modo de edição, o código dentro do bloco if é executado.
  // Neste caso, o código dentro do bloco if chama o método Post do QryProdutos, que salva as alterações feitas no registro atual do conjunto de dados.
   if DMcadastro.QryProdutos.State in dsEditModes then
   begin
   DMcadastro.QryProdutos.Post;  // salva as alterações no TQuery
   ShowMessage('Produto salvo com sucesso!'); // exibe uma mensagem de sucesso
   cardPanel_Listas.ActiveCard := card_pesquisa;  // quando salvar, irá voltar para a tela de pesquisa
   end;
end;

procedure TViewProdutos.GET_Produtos(iCod: integer);
begin  // busca todos os produtos
  DMcadastro.QryProdutos.Close;
  DMcadastro.QryProdutos.SQL.Clear;
  DMcadastro.QryProdutos.SQL.Add('SELECT * FROM TAB_PRODUTO');
  DMcadastro.QryProdutos.SQL.Add('ORDER BY COD_PROD 1 CRESC'); // para ordernar por código dos produtos em ordem crescente (1,2,3,4)
  DMcadastro.QryProdutos.Open();
end;


procedure TViewProdutos.GET_Detalhe_produto(iCOD_PROD: Integer);
begin   // busca apenas o detalhe de um produto
  DMcadastro.QryProdutos.Close;
  DMcadastro.QryProdutos.SQL.Clear;
  DMcadastro.QryProdutos.SQL.Add('SELECT * FROM TAB_PRODUTO WHERE COD_PROD = :COD_PROD');
  DMcadastro.QryProdutos.ParamByName('COD_PROD').AsInteger := iCOD_PROD;
  DMcadastro.QryProdutos.Open();
end;

end.
