unit ViewPrincipal;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    panTopo: TPanel;
    panMenu: TPanel;
    panImgPrincipal: TPanel;
    panVersão: TPanel;
    lblVersao: TLabel;
    lblNroVersao: TLabel;
    panUser: TPanel;
    imgUser: TImage;
    panLineUser: TPanel;
    panNomeUsuario: TLabel;
    panSair: TPanel;
    btnSair: TSpeedButton;
    btnClientes: TSpeedButton;
    panModulosMenu: TPanel;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfig: TSpeedButton;
    ShapeMenu: TShape;
    panShapeMenu: TPanel;
    panLicenca: TPanel;
    lblTituloLicenciado: TLabel;
    imgBackgroud: TImage;
    lblLicenciado: TLabel;
    btnVendas: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloLicenciadoMouseEnter(Sender: TObject);
    procedure lblTituloLicenciadoMouseLeave(Sender: TObject);
    procedure lblVersaoMouseEnter(Sender: TObject);
    procedure lblVersaoMouseLeave(Sender: TObject);
    procedure lblNroVersaoMouseEnter(Sender: TObject);
    procedure lblNroVersaoMouseLeave(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
  private
    procedure get_Line_Menu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses View.clientes, View.Fornecedores, View.Produtos;

procedure TfrmPrincipal.btnCaixaClick(Sender: TObject);
begin    // abrir a view caixa
    get_Line_Menu(Sender); // Para aparecer o Shape ao lado de cada Módulo do menu
end;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin    // abrir a view clientes
  get_Line_Menu(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try
    // O Round faz o arredondamento.
    ViewClientes.Top  := Round(panTopo.Height + ((panImgPrincipal.Height - ViewClientes.Height) / 2));
    ViewClientes.Left := Round(panMenu.Width  + ((panImgPrincipal.Width - ViewClientes.Width) / 2));

    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TfrmPrincipal.btnConfigClick(Sender: TObject);
begin    //  abrir a view config
    get_Line_Menu(Sender);
end;

procedure TfrmPrincipal.btnFornecedoresClick(Sender: TObject);
begin   // fornecedores
    get_Line_Menu(Sender);
    ViewFornecedores := TViewFornecedores.Create(Self);
  try
    // O Round faz o arredondamento.
    ViewFornecedores.Top  := Round(panTopo.Height + ((panImgPrincipal.Height - ViewFornecedores.Height) / 2));
    ViewFornecedores.Left := Round(panMenu.Width  + ((panImgPrincipal.Width - ViewFornecedores.Width) / 2));

    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TfrmPrincipal.btnFuncionariosClick(Sender: TObject);
begin // Abrir a View Funcionarios
  get_Line_Menu(Sender);
end;

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
begin    // abrir a view produtos
  get_Line_Menu(Sender);
  ViewProdutos := TViewProdutos.Create(Self);
  try
    // O Round faz o arredondamento.
    ViewProdutos.Top  := Round(panTopo.Height + ((panImgPrincipal.Height - ViewProdutos.Height) / 2));
    ViewProdutos.Left := Round(panMenu.Width  + ((panImgPrincipal.Width - ViewProdutos.Width) / 2));

    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin   // sair do sistema
  Application.Terminate;
end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin // Abrir a View Vendas
  get_Line_Menu(Sender);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin  // show (quando executar o sistema a linha já vai estar no botão clientes)
  get_Line_Menu(btnClientes);
end;

procedure TfrmPrincipal.get_Line_Menu(Sender: TObject);
begin
  ShapeMenu.Left      := 0;
  ShapeMenu.Top       := 0;
  ShapeMenu.Height    := TSpeedButton(Sender).Height;
  ShapeMenu.Top       := TSpeedButton(Sender).Top;
  panShapeMenu.Repaint;
end;

procedure TfrmPrincipal.lblNroVersaoMouseEnter(Sender: TObject);
begin
  lblNroVersao.Font.Color := clHotLight;
end;

procedure TfrmPrincipal.lblNroVersaoMouseLeave(Sender: TObject);
begin
  lblNroVersao.Font.Color := clBlack;
end;

procedure TfrmPrincipal.lblTituloLicenciadoMouseEnter(Sender: TObject);
begin
  lblTituloLicenciado.Font.Color := clHotLight;
end;

procedure TfrmPrincipal.lblTituloLicenciadoMouseLeave(Sender: TObject);
begin
  lblTituloLicenciado.Font.Color := clBlack;
end;

procedure TfrmPrincipal.lblVersaoMouseEnter(Sender: TObject);
begin
  lblVersao.Font.Color := clHotLight;
end;

procedure TfrmPrincipal.lblVersaoMouseLeave(Sender: TObject);
begin
  lblVersao.Font.Color := clBlack;
end;

end.
