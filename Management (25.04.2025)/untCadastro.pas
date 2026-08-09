unit untCadastro;

interface

uses
 Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWExtCtrls, IWCompLabel, IWCompButton, jpeg, IWCompEdit, IWCompListbox,
  pngimage, IWCompText, IWWebGrid, IWAdvWebGrid, IWCompRectangle, ActnList,
  IWGrids, IWTMSCtrls, IWAdvWebGridExcel, Comobj, IWHTMLControls,
  IWCompCheckbox,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, Math,

  /// //////////////////uses vindas do FITradeoff//////////////////

  TeeGDIPlus, TeEngine, ExtCtrls, TeeProcs, Chart, Series,
  IWDBStdCtrls, WebComp, WebAdapt, IdMessage, IdTCPConnection,
  IdTCPClient, Graphics, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdBaseComponent, IdComponent, IdIOHandler,
  IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdText, IWProgressIndicator,
  IWCompProgressBar, TeePolar, IWTMSPopup, Menus, IWHelpTip, IdSASLPlain;

type
  TIWForm2 = class(TIWAppForm)
    IWTimer1: TIWTimer;
    rgnCadusuario: TIWRegion;
    IWButton9: TIWButton;
    lblcadusuario: TIWLabel;
    IWLabel89: TIWLabel;
    IWLabel90: TIWLabel;
    IWLabel91: TIWLabel;
    lblpasswarning: TIWLabel;
    IWLabel93: TIWLabel;
    cmbbxAffiliation: TIWComboBox;
    IWLabel94: TIWLabel;
    edtconfirmpass: TIWEdit;
    IWLabel96: TIWLabel;
    IWLabel97: TIWLabel;
    IWLabel98: TIWLabel;
    IWLabel99: TIWLabel;
    IWComboBox1: TIWComboBox;
    IWRadioGroup1: TIWRadioGroup;
    IWLabel101: TIWLabel;
    IWLabel102: TIWLabel;
    IWImage10: TIWImage;
    IWLabel103: TIWLabel;
    IWRadioGroup2: TIWRadioGroup;
    chckbxanalyst: TIWCheckBox;
    IWImage11: TIWImage;
    IWLabel104: TIWLabel;
    IWLabel105: TIWLabel;
    edtcadname: TIWEdit;
    IWLabel106: TIWLabel;
    edtcadtitle: TIWEdit;
    IWLabel107: TIWLabel;
    IWLabel108: TIWLabel;
    edtcadaddcity: TIWEdit;
    IWLabel109: TIWLabel;
    IWLabel110: TIWLabel;
    edtcadaddresscoun: TIWEdit;
    IWLabel111: TIWLabel;
    IWLabel112: TIWLabel;
    edtano: TIWEdit;
    IWLabel113: TIWLabel;
    edtcadwhats: TIWEdit;
    IWLabel114: TIWLabel;
    edtcadlast: TIWEdit;
    IWLabel115: TIWLabel;
    IWLabel116: TIWLabel;
    IWLabel117: TIWLabel;
    IWLabel118: TIWLabel;
    IWLabel119: TIWLabel;
    edtpassword: TIWEdit;
    IWLabel120: TIWLabel;
    IWLabel121: TIWLabel;
    txtconfirmation: TIWText;
    IWLabel19: TIWLabel;
    edtcadinstname: TIWEdit;
    edtcadaddresscity: TIWEdit;
    edtcruso: TIWEdit;
    IWLabel23: TIWLabel;
    IWLabel28: TIWLabel;
    IWLabel34: TIWLabel;
    IWLabel59: TIWLabel;
    IWLabel1: TIWLabel;
    edtcademail: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel5: TIWLabel;
    IWRegion7: TIWRegion;
    btnsave: TIWButton;
    rgnintro: TIWRegion;
    lblWarning: TIWLabel;
    txtwarnning: TIWText;
    IWLabel46: TIWLabel;
    IWImage2: TIWImage;
    IWImage27: TIWImage;
    IWLabel47: TIWLabel;
    IWRegion16: TIWRegion;
    rgnlogin: TIWRegion;
    lbluserid: TIWLabel;
    edtemail: TIWEdit;
    IWLabel9: TIWLabel;
    lblSenha: TIWLabel;
    edtSenha: TIWEdit;
    IWLabel8: TIWLabel;
    btnEnter: TIWButton;
    IWLink2: TIWLink;
    txtpassrecover: TIWText;
    txtnewcode: TIWText;
    btnLogin: TIWButton;
    IWLink6: TIWLink;
    btnRegister: TIWButton;
    IWLabel6: TIWLabel;
    rgnvalidationpassword: TIWRegion;
    IWImage5: TIWImage;
    IWLabel18: TIWLabel;
    rgnnewpassword: TIWRegion;
    IWLabel20: TIWLabel;
    edtnewpassword: TIWEdit;
    edtnewpassconfir: TIWButton;
    IWLabel21: TIWLabel;
    edtnewpasswordconfirm: TIWEdit;
    lbldifcamp: TIWLabel;
    IWButton2: TIWButton;
    rgnuser: TIWRegion;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWText2: TIWText;
    IWLabel7: TIWLabel;
    IWLink1: TIWLink;
    edtdia: TIWEdit;
    edtmes: TIWEdit;
    btnSend: TIWButton;
    btnVoltarinicio: TIWButton;
    rgnSoftwares: TIWRegion;
    IWLabel15: TIWLabel;
    IWButton3: TIWButton;
    IWLabel24: TIWLabel;
    IWLabel16: TIWLabel;
    IWLabel17: TIWLabel;
    IWLabel22: TIWLabel;
    IWImage3: TIWImage;
    IWImage4: TIWImage;
    IWRegion1: TIWRegion;
    imgfitradeoff: TIWImage;
    imgsidmcpm: TIWImage;
    imgbashe: TIWImage;
    imgprometheeroc: TIWImage;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocketOpenSSL;
    IWLabel25: TIWLabel;
    IWRegion2: TIWRegion;
    procedure btnSendClick(Sender: TObject);
    procedure SalvarBD;
    function send_email(destinatario, assunto, corpoMensagem: string): boolean;
    procedure btnRegisterClick(Sender: TObject);
    procedure btnVoltarinicioClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure edtnewpassconfirClick(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure lblnewvalidationcodeAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure rgnvalidationpasswordCreate(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure IWLink5Click(Sender: TObject);
    procedure IWLink4Click(Sender: TObject);
    procedure IWLink3Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWTimer1Timer(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure imgprometheerocClick(Sender: TObject);
    procedure imgfitradeoffClick(Sender: TObject);
    procedure imgsidmcpmClick(Sender: TObject);
    procedure imgbasheClick(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWLabel46AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

uses ServerController, UserSessionUnit;

{$R *.dfm}

function TIWForm2.send_email(destinatario: string; assunto: string;
  corpoMensagem: string): boolean;
var
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
  // Result:=False;

  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;
    IdSSLIOHandlerSocket.ReadTimeout := 30000;

    // Configuração do servidor SMTP (TIdSMTP)
    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.hostinger.com';
    IdSMTP.Username := 'support@fitradeoff.org';
    IdSMTP.Password := 'fitradeoff.Cdsid2025';
    // IdSMTP.ReadTimeout:=30000;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'support@fitradeoff.org';
    IdMessage.From.Name := 'support';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.EMailAddresses := destinatario;
    IdMessage.Subject := assunto;
    IdMessage.Body.Clear;
    IdMessage.Body.Add(corpoMensagem);

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E: Exception do
      begin
        // WebApplication.ShowMessage('Erro na conexão ou autenticação: '+
        // MessageDlg('Erro na conexão ou autenticação: ' +
        // E.Message);
        Result := false;
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      Result := true;
      // MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E: Exception do
      begin
        // MessageDlg('Erro ao enviar a mensagem: ' +
        // E.Message, mtWarning, [mbOK], 0);
        Result := false;
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    // UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;

end;



procedure TIWForm2.imgfitradeoffClick(Sender: TObject);
begin
WebApplication.GoToURL('http://www.cdsid.org.br/fitradeoff');
end;

procedure TIWForm2.btnEnterClick(Sender: TObject);
// procedimento de login no sistema
var
  email, id_email: string;
  senha, validation: string;
  quantregis: integer;
  nome : string;

begin
  IWLabel9.Visible := false;
  IWLabel8.Visible := false;
  TIWUserSession(WebApplication.Data).email := edtemail.Text;
  TIWUserSession(WebApplication.Data).primeiroacesso := false;
  // inicialmente fazendo um selectcount para verificar se já existe algum cadastro com esse email
  with UserSession.ZQuery1 do
  begin

    SQL.Text := 'SELECT count(*) FROM user WHERE email="' + (edtemail.Text)
      + '"';
    ExecSQL;
    open;
    quantregis := FieldByName('count(*)').AsInteger;
    close;
  end;
  if quantregis = 0 then
  begin
    IWLabel9.Visible := true;
    //IWButton1.Visible := true;
    exit;
  end
  else
  begin
    TIWUserSession(WebApplication.Data).email := edtemail.Text;
    with UserSession.ZQuery1 do
    begin

      SQL.Text := 'SELECT validacao FROM user WHERE email ="' + (edtemail.Text)
        + '"';
      ExecSQL;
      open;
      validation := FieldByName('validacao').AsString;
      close;

      SQL.Text := 'SELECT password FROM user WHERE email ="' + (edtemail.Text)
        + '"';
      ExecSQL;
      open;
      senha := FieldByName('password').AsString;
      close;

    end;
    if senha = edtSenha.Text then
    begin
      with UserSession.ZQuery1 do
      begin
        SQL.Text := 'SELECT id FROM user WHERE email="' + (edtemail.Text) + '"';
        ExecSQL;
        open;
        TIWUserSession(WebApplication.Data).ID_user := FieldByName('id')
          .AsString;
        close;
          TIWUserSession(WebApplication.Data).email := edtemail.Text;
          TIWUserSession(WebApplication.Data).senha := edtSenha.Text;

      end;

      // * Caso o usuário esteja trocando a senha de cadastro *//
      if validation = 'password' then
      begin
        rgnvalidationpassword.visible := True;
        rgnvalidationpassword.Left := rgnlogin.Left;
        rgnvalidationpassword.Top := rgnLogin.Top;
        //rgnnewpassword.show;
        rgnlogin.Visible := false;
        Exit;
      end;





  with UserSession.ZQuery1 do
begin
  SQL.Text := 'SELECT name, title FROM user WHERE email ="' + TIWUserSession(WebApplication.Data).email
        + '"';
      ExecSQL;
      open;
      nome := ' ' + FieldByName('name').AsString;
      close;
end;

iwlabel7.Text := 'Hello,' +  nome +  '!';
edtemail.Text := '';
edtsenha.Text := '';
iwlabel7.left := 15;
rgnLogin.Visible := false;
rgnuser.Visible := true;
//rgnuser.Left := 600 - ceil(rgnuser.Width/2);
//iwlabel7.left := 220 - ceil(iwlabel7.Width/2);
rgnuser.Top := rgnlogin.Top;
  //IWButton5Click(self);

    end
    else
    begin
      IWLabel8.Visible := true;
      //IWButton1.Visible := true;
    end;

  end;


  // end;

end;

procedure TIWForm2.btnLoginClick(Sender: TObject);
begin
rgnlogin.visible := True;
btnlogin.Visible := False;
//btnregister.Visible := False;
//Iwtext1.Visible := False;

 {rgnInicial.Align := alclient;
  rgnCadusuario.Align := alclient;
  rgnlogin.Align := alclient;
  rgnvalidation.Align := alclient;
  rgnvalidationpassword.Align := alclient;
  rgnnewpassword.Align := alclient;}
end;

procedure TIWForm2.btnRegisterClick(Sender: TObject);
begin
{
rgnvalidation.visible := True;
rgnvalidation.Left := 15;
rgnvalidation.Top := 15;
rgninicial.Visible := false;
}
rgncadusuario.visible := True;
rgncadusuario.Left := 0;
rgncadusuario.Top := 0;
rgnintro.Visible := False;



{
  rgnInicial.Align := alclient;
  rgnCadusuario.Align := alclient;
  rgnlogin.Align := alclient;
  rgnvalidation.Align := alclient;
  rgnvalidationpassword.Align := alclient;
  rgnnewpassword.Align := alclient;
 }

end;

procedure TIWForm2.btnsaveClick(Sender: TObject);
var
  genero, statuscurso, nescolaridade, P, email,dia,mes,ano: string;
  vetchar, numeros: array [0 .. 9] of string;
  i, a, j: integer;
  H: boolean;
begin
  /// ////////////////////////////////////////////////////////////////////////////
  /// /////////  Travas para correto preenchimento do formulário /////////////////

  // ** Senhas diferentes **//
  if edtpassword.Text <> edtconfirmpass.Text then
  begin
    lblpasswarning.Visible := true;
    Exit;
  end
  else
  begin
    lblpasswarning.Visible := false;
  end;

  // ** Campos obrigatórios não preenchidos **//
  if (edtcademail.Text = '') or (edtcadname.Text = '') or
    (edtcadlast.Text = '') or (cmbbxAffiliation.ItemIndex = -1) or
    (edtpassword.Text = '') or (edtcadaddcity.Text = '') or
    (edtcadaddresscoun.Text = '') or (edtcadwhats.Text = '') or
    (IWComboBox1.ItemIndex = -1) then
  begin
    WebApplication.ShowMessage('Please, fill in all fields.');
    Exit;
  end;

  /// Caso haja vínculo com alguma instituição, seu nome e cidade devem ser////
  /// informados /////////////////////////////////////////////////////////////
  if cmbbxAffiliation.ItemIndex <> 3 then
    if (edtcadinstname.Text = '') or (edtcadaddresscity.Text = '') then
    begin
      WebApplication.ShowMessage('Please, fill in all fields.');
      Exit;
    end;
  /// /////////////////////////////////////////////////////////////////////////////
  vetchar[0] := '!';
  vetchar[1] := '@';
  vetchar[2] := '#';
  vetchar[3] := '$';
  vetchar[4] := '%';
  vetchar[5] := '&';
  vetchar[6] := '*';
  vetchar[7] := '^';
  vetchar[8] := '-';
  vetchar[9] := '+';

  email := edtcademail.Text;
  a := 0;
  for i := 1 to length(email) do
  begin
    if (email[i] = '@') or (email[i] = '.') then
      INC(a);
  end;
  if a < 2 then
  begin
    WebApplication.ShowMessage('Please, introduce a valid E-mail Address.');
    Exit;
  end;

  dia := edtdia.Text;
  mes := edtmes.Text;
  ano := edtano.Text;
  numeros[0] := '0';
  numeros[1] := '1';
  numeros[2] := '2';
  numeros[3] := '3';
  numeros[4] := '4';
  numeros[5] := '5';
  numeros[6] := '6';
  numeros[7] := '7';
  numeros[8] := '8';
  numeros[9] := '9';
  a := 0;
  for i := 1 to length(dia) do
    for j := 0 to 9 do begin
     if dia[i] = numeros[j] then
     inc(a);
  end;
  if a < 2 then
  begin
    WebApplication.ShowMessage('Please, introduce a date of birth correctly. Ex: MM/DD/YYYY.');
    Exit;
  end;

  a := 0;
  for i := 1 to length(mes) do
    for j := 0 to 9 do begin
     if mes[i] = numeros[j] then
     inc(a);
  end;
  if a < 2 then
  begin
    WebApplication.ShowMessage('Please, introduce a date of birth correctly. Ex: MM/DD/YYYY.');
    Exit;
  end;

  a := 0;
  for i := 1 to length(ano) do
    for j := 0 to 9 do begin
     if ano[i] = numeros[j] then
     inc(a);
  end;
  if a < 4 then
  begin
    WebApplication.ShowMessage('Please, introduce a date of birth correctly. Ex: MM/DD/YYYY.');
    Exit;
  end;


  // preenchimento do genero
  if IWRadioGroup2.ItemIndex = 0 then
  begin
    genero := 'Female';
  end;
  if IWRadioGroup2.ItemIndex = 1 then
  begin
    genero := 'Male';
  end;
  if IWRadioGroup2.ItemIndex = 2 then
  begin
    genero := 'Not report';
  end;

  // preenchimento do nível de escolaridade Elementary School, High School, University Education, Specialization, Masters Degree, Doctorate Degree
  case IWComboBox1.ItemIndex of
    0:
      begin
        nescolaridade := 'Elementary School';
      end;
    1:
      begin
        nescolaridade := 'High School';
      end;
    2:
      begin
        nescolaridade := 'University Education';
      end;
    3:
      begin
        nescolaridade := 'Specialization';
      end;
    4:
      begin
        nescolaridade := 'Masters Degree';
      end;
    5:
      begin
        nescolaridade := 'Doctorate Degree';
      end;
  end;



  // preenchimento do em progresso ou finalizado

  if IWRadioGroup1.ItemIndex = 0 then
  begin
    statuscurso := 'In Progress';
  end;

  if IWRadioGroup1.ItemIndex = 1 then
  begin
    statuscurso := 'Finished';
  end;
  for i := 0 to 5 - 1 do
  begin
    P := FloatToStr(RandomRange(0, 9));
    TIWUserSession(WebApplication.Data).auxvalidacao := TIWUserSession
      (WebApplication.Data).auxvalidacao + FloatToStr
      (Round(RandomRange(0, 1000) / 10)) + vetchar[StrToInt(P)];

  end;
  // passando para variáveis globais
  if chckbxanalyst.Checked then
    TIWUserSession(WebApplication.Data).analyst := 0
  else
    TIWUserSession(WebApplication.Data).analyst := -1;
  TIWUserSession(WebApplication.Data).genero := genero;
  TIWUserSession(WebApplication.Data).statuscurso := statuscurso;
  TIWUserSession(WebApplication.Data).nescolaridade := nescolaridade;

 with UserSession.ZQuery1 do
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 6;
  SalvarBD;
  end;



  WebApplication.ShowMessage('The requested changes to your CDSID account have been successfully completed! You can now access your account with the new information.');

btnsave.Visible := false;
btnsend.Visible := true;
rgnCadusuario.Visible := false;
rgnuser.Visible := true;
rgnintro.Visible := true;
    /// /////////////////////////////////////////////////////////////////////////
    // ** Limpando todos os campos do formulário **//
    edtcademail.Enabled := True;
    edtconfirmpass.Clear;
    edtpassword.Clear;
    edtcadlast.Clear;
    edtcadname.Clear;
    edtcadtitle.Clear;
    edtcademail.Clear;
    edtcadaddcity.Clear;
    edtcadaddresscoun.Clear;
    edtcadinstname.Clear;
    edtcadaddresscity.Clear;
    edtcadwhats.Clear;
    IWComboBox1.ItemIndex := -1;
    cmbbxAffiliation.ItemIndex := -1;
    edtcruso.Clear;
    edtdia.Clear;
    edtmes.Clear;
    edtano.Clear;
    chckbxanalyst.Checked := false;

    /// /////////////////////////////////////////////////////////////////////////


end;

procedure TIWForm2.btnSendClick(Sender: TObject);
var
  genero, statuscurso, nescolaridade, P, email, dia,mes,ano: string;
  vetchar: array [0 .. 9] of string;
  numeros : array [0 .. 9] of string;
  i, a, j: integer;
  H: boolean;
begin
  /// ////////////////////////////////////////////////////////////////////////////
  /// /////////  Travas para correto preenchimento do formulário /////////////////

  // ** Senhas diferentes **//
  if edtpassword.Text <> edtconfirmpass.Text then
  begin
    lblpasswarning.Visible := true;
    Exit;
  end
  else
  begin
    lblpasswarning.Visible := false;
  end;

  // ** Campos obrigatórios não preenchidos **//
  if (edtcademail.Text = '') or (edtcadname.Text = '') or
    (edtcadlast.Text = '') or (cmbbxAffiliation.ItemIndex = -1) or
    (edtpassword.Text = '') or (edtcadaddcity.Text = '') or
    (edtcadaddresscoun.Text = '') or (edtcadwhats.Text = '') or
    (IWComboBox1.ItemIndex = -1) then
  begin
    WebApplication.ShowMessage('Please, fill in all fields.');
    Exit;
  end;

  /// Caso haja vínculo com alguma instituição, seu nome e cidade devem ser////
  /// informados /////////////////////////////////////////////////////////////
  if cmbbxAffiliation.ItemIndex <> 3 then
    if (edtcadinstname.Text = '') or (edtcadaddresscity.Text = '') then
    begin
      WebApplication.ShowMessage('Please, fill in all fields.');
      Exit;
    end;
  /// /////////////////////////////////////////////////////////////////////////////
  vetchar[0] := '!';
  vetchar[1] := '@';
  vetchar[2] := '#';
  vetchar[3] := '$';
  vetchar[4] := '%';
  vetchar[5] := '&';
  vetchar[6] := '*';
  vetchar[7] := '^';
  vetchar[8] := '-';
  vetchar[9] := '+';



  email := edtcademail.Text;
  a := 0;
  for i := 1 to length(email) do
  begin
    if (email[i] = '@') or (email[i] = '.') then
      INC(a);
  end;
  if a < 2 then
  begin
    WebApplication.ShowMessage('Please, introduce a valid E-mail Address.');
    Exit;
  end;

  dia := edtdia.Text;
  mes := edtmes.Text;
  ano := edtano.Text;
  numeros[0] := '0';
  numeros[1] := '1';
  numeros[2] := '2';
  numeros[3] := '3';
  numeros[4] := '4';
  numeros[5] := '5';
  numeros[6] := '6';
  numeros[7] := '7';
  numeros[8] := '8';
  numeros[9] := '9';
  a := 0;
  for i := 1 to length(dia) do
    for j := 0 to 9 do begin
     if dia[i] = numeros[j] then
     inc(a);
  end;
  if a < 2 then
  begin
    WebApplication.ShowMessage('Please, introduce a date of birth correctly. Ex: MM/DD/YYYY.');
    Exit;
  end;

  a := 0;
  for i := 1 to length(mes) do
    for j := 0 to 9 do begin
     if mes[i] = numeros[j] then
     inc(a);
  end;
  if a < 2 then
  begin
    WebApplication.ShowMessage('Please, introduce a date of birth correctly. Ex: MM/DD/YYYY.');
    Exit;
  end;

  a := 0;
  for i := 1 to length(ano) do
    for j := 0 to 9 do begin
     if ano[i] = numeros[j] then
     inc(a);
  end;
  if a < 4 then
  begin
    WebApplication.ShowMessage('Please, introduce a date of birth correctly. Ex: MM/DD/YYYY.');
    Exit;
  end;



  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery1 do
  begin
    SQL.Text := 'SELECT id FROM user WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;

  // * se o e-mail já estiver cadastrado *//
  if (TIWUserSession(WebApplication.Data).ID_user <> '') then
  begin
    WebApplication.ShowMessage(
      'The e-mail adress informed has already been registered. If you do not remember your password, it is possible to create a new one in the login page.');
    Exit;
  end;

  // preenchimento do genero
  if IWRadioGroup2.ItemIndex = 0 then
  begin
    genero := 'Female';
  end;
  if IWRadioGroup2.ItemIndex = 1 then
  begin
    genero := 'Male';
  end;
  if IWRadioGroup2.ItemIndex = 2 then
  begin
    genero := 'Not report';
  end;

  // preenchimento do nível de escolaridade Elementary School, High School, University Education, Specialization, Masters Degree, Doctorate Degree
  case IWComboBox1.ItemIndex of
    0:
      begin
        nescolaridade := 'Elementary School';
      end;
    1:
      begin
        nescolaridade := 'High School';
      end;
    2:
      begin
        nescolaridade := 'University Education';
      end;
    3:
      begin
        nescolaridade := 'Specialization';
      end;
    4:
      begin
        nescolaridade := 'Masters Degree';
      end;
    5:
      begin
        nescolaridade := 'Doctorate Degree';
      end;
  end;



  // preenchimento do em progresso ou finalizado

  if IWRadioGroup1.ItemIndex = 0 then
  begin
    statuscurso := 'In Progress';
  end;

  if IWRadioGroup1.ItemIndex = 1 then
  begin
    statuscurso := 'Finished';
  end;
  for i := 0 to 5 - 1 do
  begin
    P := FloatToStr(RandomRange(0, 9));
    TIWUserSession(WebApplication.Data).auxvalidacao := TIWUserSession
      (WebApplication.Data).auxvalidacao + FloatToStr
      (Round(RandomRange(0, 1000) / 10)) + vetchar[StrToInt(P)];

  end;
  // passando para variáveis globais
  if chckbxanalyst.Checked then
    TIWUserSession(WebApplication.Data).analyst := 0
  else
    TIWUserSession(WebApplication.Data).analyst := -1;
  TIWUserSession(WebApplication.Data).genero := genero;
  TIWUserSession(WebApplication.Data).statuscurso := statuscurso;
  TIWUserSession(WebApplication.Data).nescolaridade := nescolaridade;
  if edtcadtitle.Text <> '' then
    txtconfirmation.Lines[0] := txtconfirmation.Lines[0]
      + ' ' + edtcadtitle.Text + ' ' + edtcadname.Text + ','
  else
    txtconfirmation.Lines[0] := txtconfirmation.Lines[0]
      + ' ' + edtcadname.Text + ',';
  txtconfirmation.Lines[6] := txtconfirmation.Lines[6] + ' ' + TIWUserSession
    (WebApplication.Data).auxvalidacao;
  // P := 'To confirmate your FITradeoff Web Based account, introduce the the following code during your first access. CODE = ' + TIWUserSession(WebApplication.Data).auxvalidacao;
  {H := false;
  H := send_email(email, 'Confirm your CDSID Account',
    txtconfirmation.Lines.Text);
  if H then
  begin
    WebApplication.ShowMessage(
      'Successful registration. A confirmation code was sent to your e-mail.' +
        ' You shall inform this code on your first access to CDSID systems.' + ' Please, check also your spam in case the e-mail does not reach your inbox.');
  end
  else
  begin
    WebApplication.ShowMessage(
      'It was not possible to conclude the registration. Please, try again later.'
        + ' If the problem persist, let us know about it.');
    Exit;
  end;
  }
  WebApplication.ShowMessage(
      'Successful registration. Your CDSID account already has been confirmed!');
  txtconfirmation.Lines[0] := 'Dear';
  txtconfirmation.Lines[6] := 'Activation Code =';


  // salvar banco de dados na tabela consequence
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarBD;



  //SALVANDO OS DADOS NO FITRADEOFF
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery2 do
  begin
    SQL.Text := 'SELECT id FROM user WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 1;
  SalvarBD;
  end;

  //SALVANDO OS DADOS NO FITRADEOFF
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery7 do
  begin
    SQL.Text := 'SELECT id FROM user WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 7;
  SalvarBD;
  end;


  //SALVANDO OS DADOS NO SID MCPM
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery3 do
  begin
    SQL.Text := 'SELECT id FROM user WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
  SalvarBD;
  end;

  //SALVANDO OS DADOS NO SID MCPM
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery3 do
  begin
    SQL.Text := 'SELECT id FROM user WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
  SalvarBD;
  end;



  //SALVANDO OS DADOS NO BASHE
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery4 do
  begin
    SQL.Text := 'SELECT id_user FROM user_experimento WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id_user').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 3;
  SalvarBD;
  end;

  //SALVANDO OS DADOS NO PROMETHEE ROC
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery5 do
  begin
    SQL.Text := 'SELECT id FROM usuario WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarBD;
  end;

  //SALVANDO OS DADOS NO PROMETHEE C OTIMO
  TIWUserSession(WebApplication.Data).ID_user := '';
  with UserSession.ZQuery6 do
  begin
    SQL.Text := 'SELECT id FROM usuario WHERE email ="' + (edtcademail.Text)
      + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).ID_user := FieldByName('id').AsString;
    close;
  end;
  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarBD;
  end;








   h := true;


  if H then
  begin
    rgnCadusuario.Visible := false;
    rgnintro.Visible := true;
    /// /////////////////////////////////////////////////////////////////////////
    // ** Limpando todos os campos do formulário **//
    edtconfirmpass.Clear;
    edtpassword.Clear;
    edtcadlast.Clear;
    edtcadname.Clear;
    edtcadtitle.Clear;
    edtcademail.Clear;
    edtcadaddcity.Clear;
    edtcadaddresscoun.Clear;
    edtcadinstname.Clear;
    edtcadaddresscity.Clear;
    edtcadwhats.Clear;
    IWComboBox1.ItemIndex := -1;
    cmbbxAffiliation.ItemIndex := -1;
    edtcruso.Clear;
    edtdia.Clear;
    edtmes.Clear;
    edtano.Clear;
    chckbxanalyst.Checked := false;
    rgncadusuario.Visible := false;
    /// /////////////////////////////////////////////////////////////////////////
  end;
end;



procedure TIWForm2.btnVoltarinicioClick(Sender: TObject);
begin
if lblcadusuario.Caption = 'Please fill the form below to complete your registration' then
rgnlogin.Visible := True
else
rgnuser.Visible := True;

rgnintro.visible := True;
//rgnintro.Left := 15;
//rgnintro.Top := 15;
rgncadusuario.Visible := false;


lblcadusuario.Caption := 'Please fill the form below to complete your registration';
btnsave.visible := false;
btnsend.visible := true;

// ** Limpando todos os campos do formulário **//
    edtconfirmpass.Clear;
    edtpassword.Clear;
    edtcadlast.Clear;
    edtcadname.Clear;
    edtcadtitle.Clear;
    edtcademail.Clear;
    edtcademail.Enabled := True;
    edtcadaddcity.Clear;
    edtcadaddresscoun.Clear;
    edtcadinstname.Clear;
    edtcadaddresscity.Clear;
    edtcadwhats.Clear;
    lblpasswarning.visible := false;
    IWComboBox1.ItemIndex := -1;
    IwRadioGroup2.itemIndex := 2;
    cmbbxAffiliation.ItemIndex := -1;
    edtcruso.Clear;
    edtdia.Clear;
    edtmes.Clear;
    edtano.Clear;
    chckbxanalyst.Checked := false;

    /// /////////////////////////////////////////////////////////////////////////


end;

procedure TIWForm2.edtnewpassconfirClick(Sender: TObject);
var
  senha: string;
begin
  with UserSession.ZQuery1 do
  begin
    if edtnewpassword.Text = edtnewpasswordconfirm.Text then
      senha := edtnewpassword.Text
    else
    begin
      lbldifcamp.Visible := true;
      Exit;
    end;

    with UserSession.ZQuery1 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

    with UserSession.ZQuery2 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

    with UserSession.ZQuery3 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

        with UserSession.ZQuery4 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user_experimento SET validacao ="validado" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user_experimento SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

    with UserSession.ZQuery5 do
    begin
      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE usuario SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

    with UserSession.ZQuery6 do
    begin
      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE usuario SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

    with UserSession.ZQuery7 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;

    with UserSession.ZQuery8 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user SET password ="' + (senha) + '" WHERE email="' +
        (TIWUserSession(WebApplication.Data).email) + '";';
      ExecSQL;
    end;


    WebApplication.ShowMessage('Password succesfuly saved.');

    edtnewpassword.Text := '';
    edtnewpasswordconfirm.Text := '';

    rgnvalidationpassword.Visible := false;
    rgnnewpassword.Visible := false;
    rgnLogin.Visible := true;

  end;

end;

procedure TIWForm2.IWAppFormCreate(Sender: TObject);
begin
rgnintro.Align := AlClient;
rgnCadusuario.Align := AlClient;
rgnsoftwares.Align := AlClient;
end;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
rgnlogin.visible := true;
iwlabel9.Visible := false;
iwlabel8.visible := false;

end;

procedure TIWForm2.IWButton2Click(Sender: TObject);
begin
rgnvalidationpassword.Visible := false;
rgnlogin.Visible := true;
end;

procedure TIWForm2.IWButton3Click(Sender: TObject);
begin
rgnsoftwares.Visible := false;
rgnintro.Visible := true;
end;

procedure TIWForm2.IWButton4Click(Sender: TObject);
begin
rgnsoftwares.Visible := True;
rgnintro.Visible := False;
end;

procedure TIWForm2.IWButton5Click(Sender: TObject);
var
i,j,k : integer;
nome,titulo,afiliacao,cidade,pais,instituicao,proposito,nascimento,genero,educacao,status,curso,senha,cidade_instituicao : string;
auxnome, auxsobrenome, auxdia, auxmes, auxano : string;
begin
rgnCadusuario.visible := True;
//rgnCadusuario.Left := 15;
//rgnCadusuario.Top := 15;
rgnintro.visible := False;
rgnuser.Visible := false;
btnsave.Visible := true;
btnsend.Visible := false;
rgnlogin.Visible := false;
lblCadusuario.Caption := 'Please fill the form below to edit your registration';
with UserSession.ZQuery1 do
  begin
    SQL.Text := 'SELECT name,title,affiliation_type,city,country,institution_name,purpose,date_of_birth,gender,education_level,status,course,password,institution_city FROM user WHERE email ="' + TIWUserSession(WebApplication.Data).email
      + '";';
    ExecSQL;
    open;
    nome := FieldByName('name').AsString;
    titulo := FieldByName('title').AsString;
    afiliacao := FieldByName('affiliation_type').AsString;
    cidade := FieldByName('city').AsString;
    pais := FieldByName('country').AsString;
    instituicao := FieldByName('institution_name').AsString;
    proposito := FieldByName('purpose').AsString;
    nascimento := FieldByName('date_of_birth').AsString;
    genero := FieldByName('gender').AsString;
    educacao := FieldByName('education_level').AsString;
    status := FieldByName('status').AsString;
    curso :=  FieldByName('course').AsString;
    senha := FieldByName('password').AsString;
    cidade_instituicao := FieldByName('institution_city').AsString;
    close;
  end;
  edtcademail.Text := TIWUserSession(WebApplication.Data).email;
  edtcademail.Enabled := False;
  edtcadtitle.Text := titulo;


  for i := 1 to length(nome) do
    begin
    if (nome[i] = ' ') and (auxnome <> '') then
    begin
      for j := i+1 to length(nome) do begin
      auxsobrenome := auxsobrenome + nome[j];
      end;
    break;

    end // if
      else
      auxnome := auxnome + nome[i];

    end; // i

    edtcadname.Text := auxnome;
    edtcadlast.Text := auxsobrenome;


    edtpassword.Text := senha;
    edtconfirmpass.Text := '';
    edtcadaddcity.Text := cidade;
    edtcadaddresscoun.Text := pais;

    if afiliacao = 'Academic' then
    cmbbxAffiliation.ItemIndex := 0;
    if afiliacao = 'Private Organization' then
    cmbbxaffiliation.ItemIndex := 1;
    if afiliacao = 'Public Organization' then
    cmbbxaffiliation.ItemIndex := 2;
    if afiliacao = 'Other' then
    cmbbxAffiliation.ItemIndex := 3;

    edtcadinstname.Text := instituicao;
    edtcadaddresscity.Text := cidade_instituicao;
    edtcadwhats.Text := proposito;

    if educacao = 'Elementary School' then
    iwcombobox1.ItemIndex := 0;
    if educacao = 'High School' then
    iwcombobox1.ItemIndex := 1;
    if educacao = 'University Education' then
    iwcombobox1.ItemIndex := 2;
    if educacao = 'Specialization' then
    iwcombobox1.ItemIndex := 3;
    if educacao = 'Masters Degree' then
    iwcombobox1.ItemIndex := 4;
    if educacao = 'Doctorate Degree' then
    iwcombobox1.ItemIndex := 5;
    if status = 'In progress' then
    iwradiogroup1.ItemIndex := 0;
    if status = 'Finished' then
    iwradiogroup1.ItemIndex := 1;

    edtcruso.Text := curso;
    for i := 1 to length(nascimento) do
      begin
      if (nascimento[i] = '/') and (auxdia <> '') then
      begin
      for j := i+1 to length(nascimento) do
      begin
      if (nascimento[j] = '/') and (auxmes <> '') then
      begin
      for k := j+1 to length(nascimento) do
      auxano := auxano + nascimento[k];

      break;

      end // if nascimento[j]
      else
      auxmes := auxmes + nascimento[j];
      end; // for j

       break;
      end // if
      else
        auxdia := auxdia + nascimento[i];
      end; // for i

      edtdia.Text := auxdia;
      edtmes.Text := auxmes;
      edtano.Text := auxano;

      if genero = 'Female' then
      iwradiogroup2.ItemIndex := 0;
      if genero = 'Male' then
      iwradiogroup2.ItemIndex := 1;
      if genero = 'Not Report' then
      iwradiogroup2.itemindex := 2;
end;


procedure TIWForm2.imgsidmcpmClick(Sender: TObject);
begin
WebApplication.GoToURL('http://15.229.155.120/SID-FWI');
end;

procedure TIWForm2.imgbasheClick(Sender: TObject);
begin
WebApplication.GoToURL('http://15.229.155.120/BASHE');
end;

procedure TIWForm2.imgprometheerocClick(Sender: TObject);
begin
WebApplication.GoToURL('http://15.229.155.120/prometheeroc');
end;

procedure TIWForm2.IWLabel46AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
WebApplication.SendFile('C:\inetpub\Access\Images\Guia Rápido do Usuário - Sistema de Cadastro Único' + '.pdf', true);
end;

procedure TIWForm2.IWLink1Click(Sender: TObject);
begin
rgnuser.Visible := false;
rgnlogin.Visible := true;
end;

procedure TIWForm2.IWLink2Click(Sender: TObject);
var
  P, email, nome, titulo: string;
  vetchar: array [0 .. 9] of string;
  i, a, quantregis: integer;
  H: boolean;
begin
  email := edtemail.Text;
  if email = '' then
  begin
    WebApplication.ShowMessage(
      'Please, fill in the field with the registered e-mail and try again.');
    Exit;
  end;


  with UserSession.ZQuery1 do
  begin

    SQL.Text := 'SELECT count(*) FROM user WHERE email="' + (edtemail.Text)
      + '"';
    ExecSQL;
    open;
    quantregis := FieldByName('count(*)').AsInteger;
    close;
  end;
  if quantregis = 0 then
  begin
    IWLabel9.Visible := true;
    Exit;
  end
  else
  begin
    IWLabel9.Visible := false;
  end;

  vetchar[0] := '!';
  vetchar[1] := '@';
  vetchar[2] := '#';
  vetchar[3] := '$';
  vetchar[4] := '%';
  vetchar[5] := '&';
  vetchar[6] := '*';
  vetchar[7] := '^';
  vetchar[8] := '-';
  vetchar[9] := '+';

  with UserSession.ZQuery1 do
  begin
    SQL.Text := 'SELECT name FROM user WHERE email ="' + (edtemail.Text) + '"';
    ExecSQL;
    open;
    nome := FieldByName('name').AsString;
    close;

    SQL.Text := 'SELECT title FROM user WHERE email ="' + (edtemail.Text) + '"';
    ExecSQL;
    open;
    titulo := FieldByName('title').AsString;
    close;
  end;

  for i := 0 to 5 - 1 do
  begin
    P := FloatToStr(RandomRange(0, 9));
    TIWUserSession(WebApplication.Data).auxvalidacao := TIWUserSession
      (WebApplication.Data).auxvalidacao + FloatToStr
      (Round(RandomRange(0, 1000) / 10)) + vetchar[StrToInt(P)];

  end;

  if titulo <> '' then
    txtpassrecover.Lines[0] := txtpassrecover.Lines[0] + ' ' + titulo + ' ' +
      nome + ','
  else
    txtpassrecover.Lines[0] := txtpassrecover.Lines[0] + ' ' + nome + ',';
  txtpassrecover.Lines[6] := txtpassrecover.Lines[6] + ' ' + TIWUserSession
    (WebApplication.Data).auxvalidacao;

  H := false;
  H := send_email(email, 'CDSID Softwares Temporary Password',
    txtpassrecover.Lines.Text);

  if H then
  begin
    WebApplication.ShowMessage(
      ' It was sent a temporary password to the e-mail informed. You shall change it on your next access to FITradeoff system.'
        + ' Please, check also your spam in case the e-mail does not reach your inbox.');
    with UserSession.ZQuery1 do
    begin
      // salvando no BD, o campo validacao atual
      SQL.Text := 'UPDATE user SET validacao ="password" WHERE email="' +
        (email) + '";';
      ExecSQL;

      // salvando no BD,a senha temporária
      SQL.Text := 'UPDATE user SET password ="' +
        (TIWUserSession(WebApplication.Data).auxvalidacao)
        + '" WHERE email="' + (email) + '";';
      ExecSQL;
    end;
  end
  else
    WebApplication.ShowMessage(
      'It was not possible to conclude this action. Please, try again later. If the problem persist, please contact us.');
  txtpassrecover.Lines[0] := 'Dear';
  txtpassrecover.Lines[6] := 'Temporary Password =';
end;



procedure TIWForm2.IWLink3Click(Sender: TObject);
begin
//WebApplication.SendFile('C:\Pedro - CDSID\Gerenciamento CDSID\Management (13.05)\Guia Rápido do Usuário - Sistema de Cadastro Único (15.05)' + '.pdf', true);
//IwTimer1.Enabled := True;
  Inherited;
  WebApplication.SendFile(
    'C:\inetpub\Access\Images\Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', true,
    'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', 'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf');
  LockOnSubmit := false;
  exit;


WebApplication.ShowMessage('User Guide downloaded successfully', smAlert);


end;
procedure TIWForm2.IWLink4Click(Sender: TObject);
begin
//WebApplication.SendFile('C:\Pedro - CDSID\Gerenciamento CDSID\Management (13.05)\Guia Rápido do Usuário - Sistema de Cadastro Único (15.05)' + '.pdf', true);
//IwTimer1.Enabled := True;

  Inherited;
  WebApplication.SendFile(
    'C:\inetpub\Access\Images\Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', true,
    'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', 'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf');
  LockOnSubmit := false;
  exit;

WebApplication.ShowMessage('User Guide downloaded successfully', smAlert);
end;

procedure TIWForm2.IWLink5Click(Sender: TObject);
begin
//IwTimer1.Enabled := True;
  Inherited;
  WebApplication.SendFile(
    'C:\inetpub\Access\Images\Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', true,
    'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', 'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf');
  LockOnSubmit := false;
  exit;

WebApplication.ShowMessage('User Guide downloaded successfully', smAlert);
//WebApplication.ShowMessage('User Guide downloaded successfully', smAlert);

end;




procedure TIWForm2.IWTimer1Timer(Sender: TObject);
begin
//WebApplication.SendFile('C:\Pedro - CDSID\Gerenciamento CDSID\Management (13.05)\Guia Rápido do Usuário - Sistema de Cadastro Único (15.05)' + '.pdf', true);
begin
  Inherited;
  WebApplication.SendFile(
    'C:\inetpub\Access\Images\Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', true,
    'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf', 'Guia Rápido do Usuário - Sistema de Cadastro Único.pdf');
  LockOnSubmit := false;
  exit;
end;

WebApplication.ShowMessage('User Guide downloaded successfully', smAlert);
iwtimer1.Enabled := False;
end;

procedure TIWForm2.lblnewvalidationcodeAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  P, email, nome, titulo: string;
  vetchar: array [0 .. 9] of string;
  i, a: integer;
  H: boolean;
begin
  email := TIWUserSession(WebApplication.Data).email;
  vetchar[0] := '!';
  vetchar[1] := '@';
  vetchar[2] := '#';
  vetchar[3] := '$';
  vetchar[4] := '%';
  vetchar[5] := '&';
  vetchar[6] := '*';
  vetchar[7] := '^';
  vetchar[8] := '-';
  vetchar[9] := '+';

  for i := 0 to 5 - 1 do
  begin
    P := FloatToStr(RandomRange(0, 9));
    TIWUserSession(WebApplication.Data).auxvalidacao := TIWUserSession
      (WebApplication.Data).auxvalidacao + FloatToStr
      (Round(RandomRange(0, 1000) / 10)) + vetchar[StrToInt(P)];
  end;

  with UserSession.ZQuery1 do
  begin
    SQL.Text := 'SELECT name FROM user WHERE email ="' + (edtemail.Text) + '"';
    ExecSQL;
    open;
    nome := FieldByName('name').AsString;
    close;

    SQL.Text := 'SELECT title FROM user WHERE email ="' + (edtemail.Text) + '"';
    ExecSQL;
    open;
    titulo := FieldByName('title').AsString;
    close;
  end;

  if titulo <> '' then
    txtnewcode.Lines[0] := txtnewcode.Lines[0] + ' ' + titulo + ' ' + nome + ','
  else
    txtnewcode.Lines[0] := txtnewcode.Lines[0] + ' ' + nome + ',';
  txtnewcode.Lines[6] := txtnewcode.Lines[6] + ' ' + TIWUserSession
    (WebApplication.Data).auxvalidacao;

  H := send_email(email, 'Confirm your CDSID Account',
    txtnewcode.Lines.Text);
  if H then
  begin
    WebApplication.ShowMessage(
      ' It was sent a new validation code to your e-mail. Introduce it on your next access to FITradeoff system.'
        + ' Please, check also your spam in case the e-mail does not reach your inbox.');

    with UserSession.ZQuery1 do
    begin
      // salvando no BD
      SQL.Text := 'UPDATE user SET validacao ="' +
        (TIWUserSession(WebApplication.Data).auxvalidacao)
        + '" WHERE email="' + (TIWUserSession(WebApplication.Data).email)
        + '";';
      ExecSQL;
    end;

  end
  else
    WebApplication.ShowMessage(
      'It was not possible to conclude this action. Please, try again later. If the problem persist, contact us.');

  txtnewcode.Lines[0] := 'Dear';
  txtnewcode.Lines[6] := 'Activation Code =';
  rgnvalidationpassword.Visible := false;
  //rgnvalidation.Visible := false;
  edtSenha.Clear;
  edtemail.Clear;

end;









procedure TIWForm2.rgnvalidationpasswordCreate(Sender: TObject);
begin
rgnvalidationpassword.Left := 15;
rgnvalidationpassword.Top := 15;
end;

procedure TIWForm2.SalvarBD;
var
auxnomesobrenome : string;
auxdatanascimento : string;
auxsalvarbd : integer;
begin
AuxsalvarBD := TIWUserSession(WebApplication.Data).AuxsalvarBD;
TIWUserSession(WebApplication.Data).auxvalidacao := 'validado';
      case TIWUserSession(WebApplication.Data).AuxsalvarBD of
        0: // Salva no banco de dados de cadastro do CDSID
          begin
            with UserSession.ZQuery1 do
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
            SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '","' + (inttostr(TIWUserSession(WebApplication.Data).analyst)) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // WITH
      end; // 0
      1:  //FITRADEOFF
      begin
       with UserSession.ZQuery2 do
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
            SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '","' + (inttostr(TIWUserSession(WebApplication.Data).analyst)) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            end;


      end;
      2:  // FRAMEWORK
      begin
      with UserSession.ZQuery3 do // sidfw
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
            SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            end;


      end;
      3: // BASHE
      begin
        with UserSession.ZQuery4 do
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
             SQL.Text :=
              'INSERT INTO user_experimento (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            end;
      end;
      4: //PROMETHEE ROC
      begin
          with UserSession.ZQuery5 do
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
             SQL.Text :=
              'INSERT INTO usuario (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
              end;
      end;
      5: //PROMETHEE C OTIMO
      begin
          with UserSession.ZQuery6 do
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
             SQL.Text :=
              'INSERT INTO usuario (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
              end;
      end;

      6: //Editar infos do cadastro
      begin
        with UserSession.ZQuery1 do
        begin
        Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE user SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

        with UserSession.ZQuery2 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE user SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

        with UserSession.ZQuery3 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE user SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

        with UserSession.ZQuery4 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE user_experimento SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

      with UserSession.ZQuery5 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE usuario SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

        with UserSession.ZQuery6 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE usuario SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

       with UserSession.ZQuery7 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE user SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with

        with UserSession.ZQuery8 do
        begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
          SQL.Text := 'UPDATE user SET title ="' + edtcadtitle.text + '",name = "' + Auxnomesobrenome + '",city = "' + edtcadaddcity.text + '", affiliation_type = "' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '",country = "' + edtcadaddresscoun.Text + '",institution_name = "' + edtcadinstname.Text + '",purpose = "' + edtcadwhats.Text + '",date_of_birth = "' + (Auxdatanascimento) + '",gender = "' + (TIWUserSession(WebApplication.Data).genero) + '",education_level = "' + (TIWUserSession(WebApplication.Data).nescolaridade) + '",status = "' + (TIWUserSession(WebApplication.Data).statuscurso) + '", course = "' + edtcruso.Text + '",password = "' + edtpassword.text + '",institution_city = "' + edtcadaddresscity.Text + '" WHERE email="' +
            (TIWUserSession(WebApplication.Data).email) + '";';
          ExecSQL;
        end; // with
      end; // 6

      7:  // Fitradeoff teste
      begin
      with UserSession.ZQuery7 do
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
            SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '","' + (inttostr(TIWUserSession(WebApplication.Data).analyst)) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            end;
      end;

      8:
      begin
       with UserSession.ZQuery8 do // sidmcpm
              begin
          // salvando as informações contidas na região cadusuario, email, titulo, primeiro nome, sobrenome, tipo de filiação, senha registrada, cidade,pais, nome da instituição, curso, qual o proposito para usar fitradeoff,data de nascimento, nível de escolaridade, status, genero

            // ESSE CASO FOI CHAMADO NO BOTÃO btnSend (SEND) DA REGIÃO rgnCadusuario (QUANDO SE FAZ O CADASTRO DE UM NOVO USUARIO)
            // como todas as informações já estão no formato de string basta utilizar o comando para salvar
            // não estou entendendo porque o ; esta marcado como errado
            // inicialmente juntando o nome e o sobrenome
            Auxnomesobrenome := edtcadname.Text + ' ' + edtcadlast.Text;
            Auxdatanascimento := edtdia.Text + '/' + edtmes.Text + '/' +
              edtano.Text;
            SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (edtcadtitle.Text) + '","' + (edtcademail.Text) + '","' + (cmbbxAffiliation.Items[cmbbxAffiliation.ItemIndex]) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadaddresscity.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + (Auxdatanascimento) + '","' + (TIWUserSession(WebApplication.Data).genero) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + (TIWUserSession(WebApplication.Data).statuscurso) + '","' + (edtcruso.Text) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            end;
      end;







    end;// case






end;
























initialization
  TIWForm2.SetAsMainForm;

end.
