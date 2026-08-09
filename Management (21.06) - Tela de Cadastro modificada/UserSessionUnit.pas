unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TIWUserSession = class(TIWUserSessionBase)
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    ZQuery4: TZQuery;
    ZConnection2: TZConnection;
    ZConnection3: TZConnection;
    ZConnection4: TZConnection;
    ZQuery5: TZQuery;
    ZConnection5: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }

    ID_user: string;
    AuxValidacao: string; // Utilizado para gerar o código de validação eviado ao usuário
    Analyst: integer; // -1: a conta não é de analista, 0 conta de analista
    // variaveis cadastro
    genero, statuscurso, nescolaridade: string;
    AuxsalvarBD: integer;
    primeiroacesso : boolean;
    email : string;
    senha : string;
    nome  : string;


  end;

implementation

uses ServerController, untCadastro;

{$R *.dfm}

end.