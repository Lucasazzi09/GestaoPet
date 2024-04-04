unit View.Base;

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
  Vcl.Dialogs;

type
  TViewBase = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}

procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  // codifiquei nessa tela base, se caso pressionar ESC vai fechar a tela automaticamente.
  if Key = VK_ESCAPE then
  Self.Close;

  // a tecla ENTER vai ter a mesma função da tecla TAB, ou seja, quando o usuário
  // apertar o ENTER o cursor vai mudar para o próximo EDIT.
  if Key = VK_RETURN then
  Perform(WM_NEXTDLGCTL,0,0);

end;

end.
