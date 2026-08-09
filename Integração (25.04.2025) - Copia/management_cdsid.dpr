program management_cdsid;
//library management_cdsid;

uses
 // ISAPIApp,
 // IWInitISAPI,
  Forms,
  IWMain,
  untCadastro in 'untCadastro.pas' {IWForm2: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

//exports

  //GetExtensionVersion, HttpExtensionProc, TerminateExtension;

begin
  //IwRun;
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run
end.
