unit View.funcionarios;

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
  Data.DB, Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Service.cadastro;

type
  TViewFuncionarios = class(TViewBaseListas)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFuncionarios: TViewFuncionarios;

implementation

{$R *.dfm}

end.
