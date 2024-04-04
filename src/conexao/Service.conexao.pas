unit Service.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  System.IniFiles,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDMconexao = class(TDataModule)
    conexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMconexao: TDMconexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMconexao.DataModuleCreate(Sender: TObject);
var
  LIniFile   : TIniFile;
  LDatabase  : string;
  LUser_Name : string;
  LPassword  : string;
  LServidor  : string;
  LPorta     : integer;
  LCaminho   : string;
begin
  try
    conexao.Connected := false;

    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.Ini';
    // FDPhysFDBDriverLink.Vendorhome := ExtracFileDir(ParamStr(0)) + '\dlls';

    LIniFile := TIniFile.Create(LCaminho);

    LDatabase := LIniFile.ReadString('Conexao', 'Database', LDatabase);
    LServidor := LIniFile.ReadString('Conexao', 'Servidor', LServidor);
    LPorta    := LIniFile.ReadInteger('Conexao', 'Porta', LPorta);

    LUSer_Name := 'SYSDBA';
    LPassword  := 'masterkey';

    conexao.Params.Values['Database'] := LDatabase;
    conexao.Params.Values['User_Name'] := LUser_Name;
    conexao.Params.Values['Password'] := LPassword;
    conexao.Params.Values['Server'] := LServidor;
    conexao.Params.Values['Porta'] := LPorta.ToString;

    // conexao.Connected := true;

  finally
    FreeAndNil(lIniFile);
  end;

end;

end.
