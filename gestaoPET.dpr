program gestaoPET;

uses
  Vcl.Forms,
  ViewPrincipal in 'src\views\ViewPrincipal.pas' {frmPrincipal},
  Service.conexao in 'src\conexao\Service.conexao.pas' {DMconexao: TDataModule},
  Service.cadastro in 'src\conexao\Service.cadastro.pas' {DMcadastro: TDataModule},
  View.Base in 'src\views\View.Base.pas' {ViewBase},
  View.Base.Listas in 'src\views\View.Base.Listas.pas' {ViewBaseListas},
  View.clientes in 'src\views\View.clientes.pas' {ViewClientes},
  View.Fornecedores in 'src\views\View.Fornecedores.pas' {ViewFornecedores},
  View.Produtos in 'src\views\View.Produtos.pas' {ViewProdutos},
  View.funcionarios in 'src\views\View.funcionarios.pas' {ViewFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMconexao, DMconexao);
  Application.CreateForm(TDMcadastro, DMcadastro);
  Application.Run;
  end.
Application.CreateForm(TfrmPrincipalApplication.CreateForm(TfrmPrincipal, frmPrincipal);Application.CreateForm(TfrmPrincApplication.CreateForm(TfrmPrincipal, frmPrincipal);
  Principal);
  l);

