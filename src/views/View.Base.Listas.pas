unit View.Base.Listas;

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
  View.Base,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls;

type
  TViewBaseListas = class(TViewBase)
    panTopo: TPanel;
    panRodape: TPanel;
    panIcone: TPanel;
    ImgIcone: TImage;
    panFechar: TPanel;
    btnSair: TSpeedButton;
    lblTituloTela: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    panFundo: TPanel;
    cardPanel_Listas: TCardPanel;
    card_cadastro: TCard;
    card_pesquisa: TCard;
    panTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    caixaPesquisa: TSearchBox;
    DBG_Dados: TDBGrid;
    dsDados: TDataSource;
    procedure panTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}


// mover o formulário (tela) sem as bordas;
procedure TViewBaseListas.FormShow(Sender: TObject);
begin   // show
  inherited;
  cardPanel_Listas.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.panTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const
   sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
