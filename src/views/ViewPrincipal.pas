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
    panVers�o: TPanel;
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
    get_Line_Menu(Sender);
end;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin    // abrir a view clientes
  get_Line_Menu(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try
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
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
begin    // abrir a view produtos
  get_Line_Menu(Sender);
  ViewProdutos := TViewProdutos.Create(Self);
  try
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin   // sair do sistema
  Application.Terminate;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin  // show (quando executar o sistema a linha j� vai estar no bot�o clientes)
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
