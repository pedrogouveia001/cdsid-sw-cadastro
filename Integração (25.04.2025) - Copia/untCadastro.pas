unit untCadastro;

interface

uses
 Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  IWCompText, pngimage, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWExtCtrls, Controls, Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, jpeg, IWCompButton,
  IWCompListbox, IWCompEdit, IWGrids, ActnList, Comobj, IWWebGrid, IWAdvWebGrid,
  IWAdvWebGridExcel, TeeGDIPlus, TeEngine, ExtCtrls, TeeProcs, Chart, Series,
  IWDBStdCtrls, WebComp, WebAdapt, Math, IdMessage, IdTCPConnection,
  IdTCPClient, Graphics,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdText, IWProgressIndicator,
  IWCompProgressBar, IWCompCheckbox, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWTMSPopup, IWHTMLControls, Menus, IWHelpTip,
  IWCompRadioButton, IWTMSLinks
  { , IdContext, IdBaseComponent, IdComponent, IdCustomTCPServer,
    IdTCPServer, IdCmdTCPServer, IdDICTServer } ;

type
  TIWForm2 = class(TIWAppForm)
    rgnCadusuario: TIWRegion;
    IWRegion15: TIWRegion;
    IWImage10: TIWImage;
    lblCadusuario: TIWLabel;
    lblOptional: TIWLabel;
    lblCademail: TIWLabel;
    IWLabel23: TIWLabel;
    edtcademail: TIWEdit;
    lblCadtitle: TIWLabel;
    edtcadtitle: TIWEdit;
    lblCadfirstname: TIWLabel;
    IWLabel27: TIWLabel;
    edtcadname: TIWEdit;
    lblCadLastname: TIWLabel;
    IWLabel28: TIWLabel;
    edtcadlast: TIWEdit;
    lblPassword: TIWLabel;
    IWLabel29: TIWLabel;
    edtpassword: TIWEdit;
    lblconfirmpassword: TIWLabel;
    IWLabel30: TIWLabel;
    edtconfirmpass: TIWEdit;
    lblpasswarning: TIWLabel;
    lblCadcity: TIWLabel;
    IWLabel31: TIWLabel;
    edtcadaddcity: TIWEdit;
    lblCadcountry: TIWLabel;
    IWLabel32: TIWLabel;
    edtcadaddresscoun: TIWEdit;
    lblCadaffiliation: TIWLabel;
    IWLabel33: TIWLabel;
    cmbbxAffiliation: TIWComboBox;
    lblCadinstiname: TIWLabel;
    lblAffiliation1: TIWLabel;
    edtcadinstname: TIWEdit;
    lblCadinsticity: TIWLabel;
    lblAffiliation2: TIWLabel;
    edtcadaddresscity: TIWEdit;
    lblCadwhats: TIWLabel;
    IWLabel36: TIWLabel;
    edtcadwhats: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel22: TIWLabel;
    IWComboBox1: TIWComboBox;
    IWRadioGroup1: TIWRadioGroup;
    IWLabel3: TIWLabel;
    edtcruso: TIWEdit;
    IWLabel4: TIWLabel;
    edtdia: TIWEdit;
    IWLabel5: TIWLabel;
    edtmes: TIWEdit;
    IWLabel6: TIWLabel;
    edtano: TIWEdit;
    IWImage28: TIWImage;
    IWLabel2: TIWLabel;
    IWRadioGroup2: TIWRadioGroup;
    chckbxanalyst: TIWCheckBox;
    btnVoltarinicio: TIWButton;
    btnSend: TIWButton;
    txtconfirmation: TIWText;
    rgnInicial: TIWRegion;
    IWImage1: TIWImage;
    btnLogin: TIWButton;
    btnRegister: TIWButton;
    IWImage2: TIWImage;
    rgnlogin: TIWRegion;
    IWImage3: TIWImage;
    lbluserid: TIWLabel;
    edtemail: TIWEdit;
    IWLabel9: TIWLabel;
    lblSenha: TIWLabel;
    edtSenha: TIWEdit;
    IWLabel8: TIWLabel;
    btnEnter: TIWButton;
    IWButton1: TIWButton;
    IWImage4: TIWImage;
    IWLink2: TIWLink;
    txtpassrecover: TIWText;
    txtnewcode: TIWText;
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
    IWText1: TIWText;
    IWLabel10: TIWLabel;
    rgnuser: TIWRegion;
    IWImage6: TIWImage;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWImage7: TIWImage;
    IWText2: TIWText;
    IWLabel7: TIWLabel;
    IWLink1: TIWLink;
    btnsave: TIWButton;
    IWRegion1: TIWRegion;
    IWImage8: TIWImage;
    IWButton6: TIWButton;
    IWImage9: TIWImage;
    IWText3: TIWText;
    IWLabel11: TIWLabel;
    IWButton3: TIWButton;
    IWButton7: TIWButton;
    IWButton8: TIWButton;
    IWButton9: TIWButton;
    procedure btnSendClick(Sender: TObject);
    procedure SalvarBD;
    function send_email(destinatario, assunto, corpoMensagem: string): boolean;
    procedure btnRegisterClick(Sender: TObject);
    procedure btnVoltarinicioClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure btnvalidaremailClick(Sender: TObject);
    procedure edtnewpassconfirClick(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure lblnewvalidationcodeAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure rgnuserCreate(Sender: TObject);
    procedure rgnloginCreate(Sender: TObject);
    procedure rgnvalidationpasswordCreate(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure IWButton6Click(Sender: TObject);
    procedure IWButton7Click(Sender: TObject);
    procedure IWButton8Click(Sender: TObject);
    procedure IWButton9Click(Sender: TObject);
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
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username := 'fitradeoff@cdsid.org.br';
    IdSMTP.Password := 'cdsid@ufpe';
    // IdSMTP.ReadTimeout:=30000;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'fitradeoff@cdsid.org.br';
    IdMessage.From.Name := 'FITRADEOFF TECHNICAL SUPPORT';
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
    IWButton1.Visible := true;
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

        SQL.Text := 'SELECT analyst FROM user WHERE email="' + (edtemail.Text)
          + '"';
        ExecSQL;
        open;
        TIWUserSession(WebApplication.Data).analyst := FieldByName('analyst')
          .AsInteger;
        close;

        if TIWUserSession(WebApplication.Data).analyst = 0 then
        begin
          TIWUserSession(WebApplication.Data).email := edtemail.Text;
          TIWUserSession(WebApplication.Data).senha := edtSenha.Text;
        end;

      end;

      // * Caso o usuário esteja trocando a senha de cadastro *//
      if validation = 'password' then
      begin
        rgnvalidationpassword.show;
        rgnnewpassword.show;
        rgnlogin.Visible := false;
        Exit;
      end;



  rgnLogin.Visible := false;
  rgnuser.Visible := true;


  with UserSession.ZQuery1 do
begin
  SQL.Text := 'SELECT name, title FROM user WHERE email ="' + TIWUserSession(WebApplication.Data).email
        + '"';
      ExecSQL;
      open;
      nome := FieldByName('title').AsString + '.' + ' ' + FieldByName('name').AsString;
      close;
end;

iwlabel7.Text := 'Hello,' +  nome +  '!';

    end
    else
    begin
      IWLabel8.Visible := true;
      IWButton1.Visible := true;
    end;

  end;

  IWButton5Click(self);
  // end;

end;

procedure TIWForm2.btnLoginClick(Sender: TObject);
begin
rgnlogin.visible := True;
rgnlogin.Left := 15;
rgnlogin.Top := 15;
rgninicial.Visible := false;


 {rgnInicial.Align := alclient;
  rgnCadusuario.Align := alclient;
  rgnlogin.Align := alclient;
  rgnvalidation.Align := alclient;
  rgnvalidationpassword.Align := alclient;
  rgnnewpassword.Align := alclient;}
end;

procedure TIWForm2.btnRegisterClick(Sender: TObject);
begin
rgnCadusuario.visible := True;
rgnCadusuario.Left := 15;
rgnCadusuario.Top := 15;
rgninicial.Visible := false;

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
  genero, statuscurso, nescolaridade, P, email: string;
  vetchar: array [0 .. 9] of string;
  i, a: integer;
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
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarBD;
  end;



  WebApplication.ShowMessage('The requested changes to your CDSID account have been successfully completed! You can now access your account with the new information.');

btnsave.Visible := false;
btnsend.Visible := true;
rgnCadusuario.Visible := false;
rgninicial.Visible := true;
    /// /////////////////////////////////////////////////////////////////////////
    // ** Limpando todos os campos do formulário **//
    edtemail.text := edtcademail.Text;
    edtsenha.Text := edtpassword.Text;
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
  genero, statuscurso, nescolaridade, P, email: string;
  vetchar: array [0 .. 9] of string;
  i, a: integer;
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
  H := false;
  H := send_email(email, 'Confirm your CDSID Account',
    txtconfirmation.Lines.Text);
  if H then
  begin
    WebApplication.ShowMessage(
      'Successful registration. A confirmation code was sent to your e-mail.' +
        ' You shall inform this code on your first access to FITradeoff system.' + ' Please, check also your spam in case the e-mail does not reach your inbox.');
  end
  else
  begin
    WebApplication.ShowMessage(
      'It was not possible to conclude the registration. Please, try again later.'
        + ' If the problem persist, let us know about it.');
    Exit;
  end;

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


  if TIWUserSession(WebApplication.Data).ID_user = '' then
  begin
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarBD;
  end;











  if H then
  begin
    rgnCadusuario.Visible := false;
    rgninicial.Visible := true;
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

procedure TIWForm2.btnvalidaremailClick(Sender: TObject);
var
    validation: string;
  begin
    {with UserSession.ZQuery1 do
    begin

      SQL.Text := 'SELECT validacao FROM user WHERE email ="' + (edtemail.Text)
        + '"';
      ExecSQL;
      open;
      validation := FieldByName('validacao').AsString;
      close;
    end;
    // * Verifica se o código inserido bate com o eviado *//
    if validation = edtvalidation.Text then
    begin

      with UserSession.ZQuery1 do
      begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
        SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
          (TIWUserSession(WebApplication.Data).email) + '";';
        ExecSQL;
      end;

      WebApplication.ShowMessage(
        'Your CDSID account has been successfuly confirmed.');


      with UserSession.ZQuery2 do
      begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
        SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
          (TIWUserSession(WebApplication.Data).email) + '";';
        ExecSQL;
      end;

      with UserSession.ZQuery3 do
      begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
        SQL.Text := 'UPDATE user SET validacao ="validado" WHERE email="' +
          (TIWUserSession(WebApplication.Data).email) + '";';
        ExecSQL;
      end;

      with UserSession.ZQuery4 do
      begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
        SQL.Text := 'UPDATE user_experimento SET validacao ="validado" WHERE email="' +
          (TIWUserSession(WebApplication.Data).email) + '";';
        ExecSQL;
      end;

      with UserSession.ZQuery5 do
      begin
        // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
        SQL.Text := 'UPDATE usuarios SET status = "1" WHERE email="' +
          (TIWUserSession(WebApplication.Data).email) + '";';
        ExecSQL;
      end;



      TIWUserSession(WebApplication.Data).primeiroacesso := true;
      rgnvalidationpassword.Visible := false;
      rgnvalidation.Visible := false;
      rgnLogin.Visible := false;
      //rgnproblematica.Visible := true;
      // rgnOpcaoInput.Visible := true;
      edtvalidation.Clear;
      edtSenha.Clear;
      edtemail.Clear;
      //btnContinueregist.Enabled := false;
    end
    else
    begin
      WebApplication.ShowMessage(
        'The code introduced does not match with the sent one. Please verify your e-mail address and try again.');
      WebApplication.ShowMessage(
        'You should insert all the numbers and characters present in the code. You can ask for a new confirmation code if you need.');
    end;
    edtvalidation.Clear;
     }
  end;

procedure TIWForm2.btnVoltarinicioClick(Sender: TObject);
begin
rgninicial.visible := True;
rgninicial.Left := 15;
rgninicial.Top := 15;
rgncadusuario.Visible := false;
lblcadusuario.Caption := 'Please fill the form below to complete your registration';

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




    WebApplication.ShowMessage('Password succesfuly saved.');

    edtnewpassword.Text := '';
    edtnewpasswordconfirm.Text := '';

    rgnvalidationpassword.Visible := false;
    rgnnewpassword.Visible := false;
    rgnLogin.Visible := true;

  end;

end;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
rgninicial.visible := True;
rgninicial.Left := 15;
rgninicial.Top := 15;
rgnlogin.Visible := false;
end;

procedure TIWForm2.IWButton2Click(Sender: TObject);
begin
rgnvalidationpassword.Visible := false;
rgnlogin.Visible := true;
end;



procedure TIWForm2.IWButton5Click(Sender: TObject);
var
i,j,k : integer;
nome,titulo,afiliacao,cidade,pais,instituicao,proposito,nascimento,genero,educacao,status,curso,senha,cidade_instituicao : string;
auxnome, auxsobrenome, auxdia, auxmes, auxano : string;
begin
rgnCadusuario.visible := True;
rgnCadusuario.Left := 15;
rgnCadusuario.Top := 15;
rgnuser.Visible := false;
btnsave.Visible := true;
btnsend.Visible := false;
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

procedure TIWForm2.IWButton6Click(Sender: TObject);
var
name0,title0,email0,affiliation_type0,city0,country0,institution_name0,purpose0,date_of_birth0,gender0,education_level0,status0,course0,password0,institution_city0,validacao0,analyst0 : array of string;
//Relacionados ao FITradeOff
name1,title1,email1,affiliation_type1,city1,country1,institution_name1,purpose1,date_of_birth1,gender1,education_level1,status1,course1,password1,institution_city1,validacao1,analyst1 : array of string;
// Relacionados ao SIDMCPM
name2,title2,email2,affiliation_type2,city2,country2,institution_name2,purpose2,date_of_birth2,gender2,education_level2,status2,course2,password2,institution_city2,validacao2,analyst2 : array of string;
//Relacionados ao BASHE
name3,title3,email3,affiliation_type3,city3,country3,institution_name3,purpose3,date_of_birth3,gender3,education_level3,status3,course3,password3,institution_city3,validacao3,analyst3 : array of string;
//Relacionados ao PROMETHEE
name4,title4,email4,affiliation_type4,city4,country4,institution_name4,purpose4,date_of_birth4,gender4,education_level4,status4,course4,password4,institution_city4,validacao4,analyst4 : array of string;

name5,title5,email5,affiliation_type5,city5,country5,institution_name5,purpose5,date_of_birth5,gender5,education_level5,status5,course5,password5,institution_city5,validacao5,analyst5 : array of string;

name6,title6,email6,affiliation_type6,city6,country6,institution_name6,purpose6,date_of_birth6,gender6,education_level6,status6,course6,password6,institution_city6,validacao6,analyst6 : array of string;
i, usuarios, usuarios1,usuarios2,usuarios3,usuarios4, usuarios5, usuarios6 : integer;
auxemail, analista : string;
begin

//INICIO DO CADASTRAMENTO DO FITRADEOFF



//for i := 1 to usuarios1 do
//begin
UserSession.ZQuery2.SQL.Text := 'SELECT * FROM user';
UserSession.ZQuery2.ExecSQL;
UserSession.ZQuery2.open;
i := 1;
UserSession.ZQuery2.First;
while not UserSession.ZQuery2.eof do
begin

Usuarios1 := i;
setlength(name1,usuarios1);
setlength(title1,usuarios1);
setlength(email1,usuarios1);
setlength(affiliation_type1,usuarios1);
setlength(city1,usuarios1);
setlength(country1,usuarios1);
setlength(institution_name1,usuarios1);
setlength(purpose1,usuarios1);
setlength(date_of_birth1,usuarios1);
setlength(gender1,usuarios1);
setlength(education_level1,usuarios1);
setlength(status1,usuarios1);
setlength(course1,usuarios1);
setlength(password1,usuarios1);
setlength(institution_city1,usuarios1);
setlength(validacao1,usuarios1);
setlength(analyst1,usuarios1);



name1[i-1] := UserSession.ZQuery2.FieldByName('name').AsString;
title1[i-1] := UserSession.ZQuery2.FieldByName('title').AsString;
email1[i-1] := UserSession.ZQuery2.FieldByName('email').AsString;
affiliation_type1[i-1] := UserSession.ZQuery2.FieldByName('affiliation_type').AsString;
city1[i-1] := UserSession.ZQuery2.FieldByName('city').AsString;
country1[i-1] := UserSession.ZQuery2.FieldByName('country').AsString;
institution_name1[i-1] := UserSession.ZQuery2.FieldByName('institution_name').AsString;
purpose1[i-1] := UserSession.ZQuery2.FieldByName('purpose').AsString;
date_of_birth1[i-1] := UserSession.ZQuery2.FieldByName('date_of_birth').AsString;
gender1[i-1] := UserSession.ZQuery2.FieldByName('gender').AsString;
education_level1[i-1]:= UserSession.ZQuery2.FieldByName('education_level').AsString;
status1[i-1] := UserSession.ZQuery2.FieldByName('status').AsString;
course1[i-1] := UserSession.ZQuery2.FieldByName('course').AsString;
password1[i-1] := UserSession.ZQuery2.FieldByName('password').AsString;
institution_city1[i-1] := UserSession.ZQuery2.FieldByName('institution_city').AsString;
validacao1[i-1] := UserSession.ZQuery2.FieldByName('validacao').AsString;
analyst1[i-1] := UserSession.ZQuery2.FieldByName('analyst').AsString;
//UserSession.ZQuery2.Close;
with UserSession.ZQuery1 do
  begin
    auxemail := 'a';
    SQL.Text := 'SELECT * FROM user WHERE email = "' + email1[i-1]  + '" ';
    ExecSQL;
    open;
    auxemail := FieldByName('email').AsString;
    if (auxemail = '') and (email1[i-1] <> '') then
    begin
    SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + validacao1[i-1] + '","' + name1[i-1] + '","' + title1[i-1] + '","' + email1[i-1] + '","' + affiliation_type1[i-1] + '","' + password1[i-1] + '","' + city1[i-1] + '","' + country1[i-1] + '","' + institution_city1[i-1] + '","' + institution_name1[i-1] + '","' + purpose1[i-1] + '","' + date_of_birth1[i-1] + '","' + gender1[i-1] + '","' + education_level1[i-1] + '","' + status1[i-1] + '","' + course1[i-1] + '","' + analyst1[i-1] + '")';
            ExecSQL;
    end; // if
  end;// with
UserSession.ZQuery2.Next;
inc(i);
end; // while
//FIM DO CADASTRAMENTO DO FITRADEOFF


//INICIO DO CADASTRAMENTO DO SIDMCPM



//for i := 1 to usuarios2 do
//begin


UserSession.ZQuery3.SQL.Text := 'SELECT * FROM user';
UserSession.ZQuery3.ExecSQL;
UserSession.ZQuery3.open;
UserSession.ZQuery3.First;
i := 1;
while not UserSession.ZQuery3.Eof do
begin

Usuarios2 := i;
setlength(name2,usuarios2);
setlength(title2,usuarios2);
setlength(email2,usuarios2);
setlength(affiliation_type2,usuarios2);
setlength(city2,usuarios2);
setlength(country2,usuarios2);
setlength(institution_name2,usuarios2);
setlength(purpose2,usuarios2);
setlength(date_of_birth2,usuarios2);
setlength(gender2,usuarios2);
setlength(education_level2,usuarios2);
setlength(status2,usuarios2);
setlength(course2,usuarios2);
setlength(password2,usuarios2);
setlength(institution_city2,usuarios2);
setlength(validacao2,usuarios2);
//setlength(analyst2,usuarios2);


name2[i-1] := UserSession.ZQuery3.FieldByName('name').AsString;
title2[i-1] := UserSession.ZQuery3.FieldByName('title').AsString;
email2[i-1] := UserSession.ZQuery3.FieldByName('email').AsString;
affiliation_type2[i-1] := UserSession.ZQuery3.FieldByName('affiliation_type').AsString;
city2[i-1] := UserSession.ZQuery3.FieldByName('city').AsString;
country2[i-1] := UserSession.ZQuery3.FieldByName('country').AsString;
institution_name2[i-1] := UserSession.ZQuery3.FieldByName('institution_name').AsString;
purpose2[i-1] := UserSession.ZQuery3.FieldByName('purpose').AsString;
date_of_birth2[i-1] := UserSession.ZQuery3.FieldByName('date_of_birth').AsString;
gender2[i-1] := UserSession.ZQuery3.FieldByName('gender').AsString;
education_level2[i-1]:= UserSession.ZQuery3.FieldByName('education_level').AsString;
status2[i-1] := UserSession.ZQuery3.FieldByName('status').AsString;
course2[i-1] := UserSession.ZQuery3.FieldByName('course').AsString;
password2[i-1] := UserSession.ZQuery3.FieldByName('password').AsString;
institution_city2[i-1] := UserSession.ZQuery3.FieldByName('institution_city').AsString;
validacao2[i-1] := UserSession.ZQuery3.FieldByName('validacao').AsString;
//analyst2[i-1] := UserSession.ZQuery3.FieldByName('analyst').AsString;
//UserSession.ZQuery3.Close;
with UserSession.ZQuery1 do
  begin
    auxemail := 'a';
    SQL.Text := 'SELECT * FROM user WHERE email = "' + email2[i-1]  + '" ';
    ExecSQL;
    open;
    auxemail := FieldByName('email').AsString;
    if (auxemail = '') and (email2[i-1] <> '') then
    begin
    SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao2[i-1] + '","' + name2[i-1] + '","' + title2[i-1] + '","' + email2[i-1] + '","' + affiliation_type2[i-1] + '","' + password2[i-1] + '","' + city2[i-1] + '","' + country2[i-1] + '","' + institution_city2[i-1] + '","' + institution_name2[i-1] + '","' + purpose2[i-1] + '","' + date_of_birth2[i-1] + '","' + gender2[i-1] + '","' + education_level2[i-1] + '","' + status2[i-1] + '","' + course2[i-1] + '")';
            ExecSQL;
    end; // if
  end;// with
  UserSession.ZQuery3.Next;
  inc(i);
end; // while
//FIM DO CADASTRAMENTO DO SIDFW

//INICIO DO CADASTRAMENTO DO BASHE

//for i := 1 to usuarios3 do
//begin
UserSession.ZQuery4.SQL.Text := 'SELECT * FROM user_experimento';
UserSession.ZQuery4.ExecSQL;
UserSession.ZQuery4.open;
UserSession.ZQuery4.First;
i := 1;
while not UserSession.ZQuery4.eof do
begin

Usuarios3 := i;
setlength(name3,usuarios3);
setlength(title3,usuarios3);
setlength(email3,usuarios3);
setlength(affiliation_type3,usuarios3);
setlength(city3,usuarios3);
setlength(country3,usuarios3);
setlength(institution_name3,usuarios3);
setlength(purpose3,usuarios3);
setlength(date_of_birth3,usuarios3);
setlength(gender3,usuarios3);
setlength(education_level3,usuarios3);
setlength(status3,usuarios3);
setlength(course3,usuarios3);
setlength(password3,usuarios3);
setlength(institution_city3,usuarios3);
setlength(validacao3,usuarios3);
//setlength(analyst3,usuarios3);

name3[i-1] := UserSession.ZQuery4.FieldByName('name').AsString;
title3[i-1] := UserSession.ZQuery4.FieldByName('title').AsString;
email3[i-1] := UserSession.ZQuery4.FieldByName('email').AsString;
affiliation_type3[i-1] := UserSession.ZQuery4.FieldByName('affiliation_type').AsString;
city3[i-1] := UserSession.ZQuery4.FieldByName('city').AsString;
country3[i-1] := UserSession.ZQuery4.FieldByName('country').AsString;
institution_name3[i-1] := UserSession.ZQuery4.FieldByName('institution_name').AsString;
purpose3[i-1] := UserSession.ZQuery4.FieldByName('purpose').AsString;
date_of_birth3[i-1] := UserSession.ZQuery4.FieldByName('date_of_birth').AsString;
gender3[i-1] := UserSession.ZQuery4.FieldByName('gender').AsString;
education_level3[i-1]:= UserSession.ZQuery4.FieldByName('education_level').AsString;
status3[i-1] := UserSession.ZQuery4.FieldByName('status').AsString;
course3[i-1] := UserSession.ZQuery4.FieldByName('course').AsString;
password3[i-1] := UserSession.ZQuery4.FieldByName('password').AsString;
institution_city3[i-1] := UserSession.ZQuery4.FieldByName('institution_city').AsString;
validacao3[i-1] := UserSession.ZQuery4.FieldByName('validacao').AsString;
//analyst3[i-1] := UserSession.ZQuery4.FieldByName('analyst').AsString;
//UserSession.ZQuery4.Close;
with UserSession.ZQuery1 do
  begin
    auxemail := 'a';
    SQL.Text := 'SELECT * FROM user WHERE email = "' + email3[i-1]  + '" ';
    ExecSQL;
    open;
    auxemail := FieldByName('email').AsString;
    if (auxemail = '') and (email3[i-1] <> '') then
    begin
    SQL.Text :=
    'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao3[i-1] + '","' + name3[i-1] + '","' + title3[i-1] + '","' + email3[i-1] + '","' + affiliation_type3[i-1] + '","' + password3[i-1] + '","' + city3[i-1] + '","' + country3[i-1] + '","' + institution_city3[i-1] + '","' + institution_name3[i-1] + '","' + purpose3[i-1] + '","' + date_of_birth3[i-1] + '","' + gender3[i-1] + '","' + education_level3[i-1] + '","' + status3[i-1] + '","' + course3[i-1] + '")';
    ExecSQL;
    end; // if
  end;// with
  UserSession.ZQuery4.Next;
  inc(i);
end; // while
//FIM DO CADASTRAMENTO DO BASHE

//INICIO DO CADASTRAMENTO DO PROMETHEE



//for i := 1 to usuarios4 do
//begin
UserSession.ZQuery6.SQL.Text := 'SELECT * FROM usuario';
UserSession.ZQuery6.ExecSQL;
UserSession.ZQuery6.open;
UserSession.ZQuery6.First;
i := 1;
while not UserSession.ZQuery6.eof do
begin

Usuarios4 := i;
setlength(name4,usuarios4);
setlength(title4,usuarios4);
setlength(email4,usuarios4);
setlength(affiliation_type4,usuarios4);
setlength(city4,usuarios4);
setlength(country4,usuarios4);
setlength(institution_name4,usuarios4);
setlength(purpose4,usuarios4);
setlength(date_of_birth4,usuarios4);
setlength(gender4,usuarios4);
setlength(education_level4,usuarios4);
setlength(status4,usuarios4);
setlength(course4,usuarios4);
setlength(password4,usuarios4);
setlength(institution_city4,usuarios4);
setlength(validacao4,usuarios4);
setlength(analyst4,usuarios4);

name4[i-1] := UserSession.ZQuery6.FieldByName('name').AsString;
title4[i-1] := UserSession.ZQuery6.FieldByName('title').AsString;
email4[i-1] := UserSession.ZQuery6.FieldByName('email').AsString;
affiliation_type4[i-1] := UserSession.ZQuery6.FieldByName('affiliation_type').AsString;
city4[i-1] := UserSession.ZQuery6.FieldByName('city').AsString;
country4[i-1] := UserSession.ZQuery6.FieldByName('country').AsString;
institution_name4[i-1] := UserSession.ZQuery6.FieldByName('institution_name').AsString;
purpose4[i-1] := UserSession.ZQuery6.FieldByName('purpose').AsString;
date_of_birth4[i-1] := UserSession.ZQuery6.FieldByName('date_of_birth').AsString;
gender4[i-1] := UserSession.ZQuery6.FieldByName('gender').AsString;
education_level4[i-1]:= UserSession.ZQuery6.FieldByName('education_level').AsString;
status4[i-1] := UserSession.ZQuery6.FieldByName('status').AsString;
course4[i-1] := UserSession.ZQuery6.FieldByName('course').AsString;
password4[i-1] := UserSession.ZQuery6.FieldByName('password').AsString;
institution_city4[i-1] := UserSession.ZQuery6.FieldByName('institution_city').AsString;
validacao4[i-1] := UserSession.ZQuery6.FieldByName('validacao').AsString;
//analyst4[i-1] := UserSession.ZQuery6.FieldByName('analyst').AsString;
//UserSession.ZQuery6.Close;
with UserSession.ZQuery1 do
  begin
    auxemail := 'a';
    SQL.Text := 'SELECT * FROM user WHERE email = "' + email4[i-1]  + '" ';
    ExecSQL;
    open;
    auxemail := FieldByName('email').AsString;
    if (auxemail = '') and (email4[i-1] <> '') then
    begin
    SQL.Text :=
    'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao4[i-1] + '","' + name4[i-1] + '","' + title4[i-1] + '","' + email4[i-1] + '","' + affiliation_type4[i-1] + '","' + password4[i-1] + '","' + city4[i-1] + '","' + country4[i-1] + '","' + institution_city4[i-1] + '","' + institution_name4[i-1] + '","' + purpose4[i-1] + '","' + date_of_birth4[i-1] + '","' + gender4[i-1] + '","' + education_level4[i-1] + '","' + status4[i-1] + '","' + course4[i-1] + '")';
    ExecSQL;
    end; // if
  end;// with
  UserSession.ZQuery6.Next;
  inc(i);
end; // while



//FIM DO CADASTRAMENTO DO PROMETHEE

// INICIO CADASTRAMENTO C OTIMO
UserSession.Zquery7.SQL.Text := 'SELECT * FROM usuario';
UserSession.Zquery7.ExecSQL;
UserSession.Zquery7.open;
UserSession.Zquery7.First;
i := 1;
while not UserSession.Zquery7.eof do
begin

Usuarios5 := i;
setlength(name5,usuarios5);
setlength(title5,usuarios5);
setlength(email5,usuarios5);
setlength(affiliation_type5,usuarios5);
setlength(city5,usuarios5);
setlength(country5,usuarios5);
setlength(institution_name5,usuarios5);
setlength(purpose5,usuarios5);
setlength(date_of_birth5,usuarios5);
setlength(gender5,usuarios5);
setlength(education_level5,usuarios5);
setlength(status5,usuarios5);
setlength(course5,usuarios5);
setlength(password5,usuarios5);
setlength(institution_city5,usuarios5);
setlength(validacao5,usuarios5);
setlength(analyst5,usuarios5);

name5[i-1] := UserSession.Zquery7.FieldByName('name').AsString;
title5[i-1] := UserSession.Zquery7.FieldByName('title').AsString;
email5[i-1] := UserSession.Zquery7.FieldByName('email').AsString;
affiliation_type5[i-1] := UserSession.Zquery7.FieldByName('affiliation_type').AsString;
city5[i-1] := UserSession.Zquery7.FieldByName('city').AsString;
country5[i-1] := UserSession.Zquery7.FieldByName('country').AsString;
institution_name5[i-1] := UserSession.Zquery7.FieldByName('institution_name').AsString;
purpose5[i-1] := UserSession.Zquery7.FieldByName('purpose').AsString;
date_of_birth5[i-1] := UserSession.Zquery7.FieldByName('date_of_birth').AsString;
gender5[i-1] := UserSession.Zquery7.FieldByName('gender').AsString;
education_level5[i-1]:= UserSession.Zquery7.FieldByName('education_level').AsString;
status5[i-1] := UserSession.Zquery7.FieldByName('status').AsString;
course5[i-1] := UserSession.Zquery7.FieldByName('course').AsString;
password5[i-1] := UserSession.Zquery7.FieldByName('password').AsString;
institution_city5[i-1] := UserSession.Zquery7.FieldByName('institution_city').AsString;
validacao5[i-1] := UserSession.Zquery7.FieldByName('validacao').AsString;
//analyst5[i-1] := UserSession.Zquery7.FieldByName('analyst').AsString;
//UserSession.Zquery7.Close;
with UserSession.ZQuery1 do
  begin
    auxemail := 'a';
    SQL.Text := 'SELECT * FROM user WHERE email = "' + email5[i-1]  + '" ';
    ExecSQL;
    open;
    auxemail := FieldByName('email').AsString;
    if (auxemail = '') and (email5[i-1] <> '') then
    begin
    SQL.Text :=
    'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao5[i-1] + '","' + name5[i-1] + '","' + title5[i-1] + '","' + email5[i-1] + '","' + affiliation_type5[i-1] + '","' + password5[i-1] + '","' + city5[i-1] + '","' + country5[i-1] + '","' + institution_city5[i-1] + '","' + institution_name5[i-1] + '","' + purpose5[i-1] + '","' + date_of_birth5[i-1] + '","' + gender5[i-1] + '","' + education_level5[i-1] + '","' + status5[i-1] + '","' + course5[i-1] + '")';
    ExecSQL;
    end; // if
  end;// with
  UserSession.Zquery7.Next;
  inc(i);
end; // while
// Fim do cadastramento do C OTIMO


// INICIO CADASTRAMENTO sidmcpm
UserSession.zquery8.SQL.Text := 'SELECT * FROM user';
UserSession.zquery8.ExecSQL;
UserSession.zquery8.open;
UserSession.zquery8.First;
i := 1;
while not UserSession.zquery8.eof do
begin

Usuarios6 := i;
setlength(name6,usuarios6);
setlength(title6,usuarios6);
setlength(email6,usuarios6);
setlength(affiliation_type6,usuarios6);
setlength(city6,usuarios6);
setlength(country6,usuarios6);
setlength(institution_name6,usuarios6);
setlength(purpose6,usuarios6);
setlength(date_of_birth6,usuarios6);
setlength(gender6,usuarios6);
setlength(education_level6,usuarios6);
setlength(status6,usuarios6);
setlength(course6,usuarios6);
setlength(password6,usuarios6);
setlength(institution_city6,usuarios6);
setlength(validacao6,usuarios6);
//setlength(analyst6,usuarios6);

name6[i-1] := UserSession.zquery8.FieldByName('name').AsString;
title6[i-1] := UserSession.zquery8.FieldByName('title').AsString;
email6[i-1] := UserSession.zquery8.FieldByName('email').AsString;
affiliation_type6[i-1] := UserSession.zquery8.FieldByName('affiliation_type').AsString;
city6[i-1] := UserSession.zquery8.FieldByName('city').AsString;
country6[i-1] := UserSession.zquery8.FieldByName('country').AsString;
institution_name6[i-1] := UserSession.zquery8.FieldByName('institution_name').AsString;
purpose6[i-1] := UserSession.zquery8.FieldByName('purpose').AsString;
date_of_birth6[i-1] := UserSession.zquery8.FieldByName('date_of_birth').AsString;
gender6[i-1] := UserSession.zquery8.FieldByName('gender').AsString;
education_level6[i-1]:= UserSession.zquery8.FieldByName('education_level').AsString;
status6[i-1] := UserSession.zquery8.FieldByName('status').AsString;
course6[i-1] := UserSession.zquery8.FieldByName('course').AsString;
password6[i-1] := UserSession.zquery8.FieldByName('password').AsString;
institution_city6[i-1] := UserSession.zquery8.FieldByName('institution_city').AsString;
validacao6[i-1] := UserSession.zquery8.FieldByName('validacao').AsString;
//analyst6[i-1] := UserSession.zquery8.FieldByName('analyst').AsString;
//UserSession.zquery8.Close;
with UserSession.ZQuery1 do
  begin
    auxemail := 'a';
    SQL.Text := 'SELECT * FROM user WHERE email = "' + email6[i-1]  + '" ';
    ExecSQL;
    open;
    auxemail := FieldByName('email').AsString;
    if (auxemail = '') and (email6[i-1] <> '') then
    begin
    SQL.Text :=
    'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao6[i-1] + '","' + name6[i-1] + '","' + title6[i-1] + '","' + email6[i-1] + '","' + affiliation_type6[i-1] + '","' + password6[i-1] + '","' + city6[i-1] + '","' + country6[i-1] + '","' + institution_city6[i-1] + '","' + institution_name6[i-1] + '","' + purpose6[i-1] + '","' + date_of_birth6[i-1] + '","' + gender6[i-1] + '","' + education_level6[i-1] + '","' + status6[i-1] + '","' + course6[i-1] + '")';
    ExecSQL;
    end; // if
  end;// with
  UserSession.zquery8.Next;
  inc(i);
end; // while
// Fim do cadastramento do sidmcpm

// Inicio da integracão do banco de dados do cadastro único para mandar as informações para os bancos de dados dos sws


with UserSession.ZQuery1 do
  begin

    SQL.Text := 'SELECT * FROM user';
    ExecSQL;
    open;
    First;
    i := 1;
    while not eof do
    begin
    Usuarios := i;
      setlength(name0,Usuarios);
      setlength(title0,Usuarios);
      setlength(email0,Usuarios);
      setlength(affiliation_type0,Usuarios);
      setlength(city0,Usuarios);
      setlength(country0,Usuarios);
      setlength(institution_name0,Usuarios);
      setlength(purpose0,Usuarios);
      setlength(date_of_birth0,Usuarios);
      setlength(gender0,Usuarios);
      setlength(education_level0,Usuarios);
      setlength(status0,Usuarios);
      setlength(course0,Usuarios);
      setlength(password0,Usuarios);
      setlength(institution_city0,Usuarios);
      setlength(validacao0,Usuarios);
      setlength(analyst0,Usuarios);

       name0[i-1] := FieldByName('name').AsString;
       title0[i-1] := FieldByName('title').AsString;
       email0[i-1] := FieldByName('email').AsString;
       affiliation_type0[i-1] := FieldByName('affiliation_type').AsString;
       city0[i-1] := FieldByName('city').AsString;
       country0[i-1] := FieldByName('country').AsString;
       institution_name0[i-1] := FieldByName('institution_name').AsString;
       purpose0[i-1] := FieldByName('purpose').AsString;
       date_of_birth0[i-1] := FieldByName('date_of_birth').AsString;
       gender0[i-1] := FieldByName('gender').AsString;
       education_level0[i-1] := FieldByName('education_level').AsString;
       status0[i-1] := FieldByName('status').AsString;
       course0[i-1] := FieldByName('course').AsString;
       password0[i-1] := FieldByName('password').AsString;
       institution_city0[i-1] := FieldByName('institution_city').AsString;
       validacao0[i-1] := FieldByName('validacao').AsString;
       analyst0[i-1] := FieldByName('analyst').AsString;

    //INICIO INTEGRAÇÃO COM O FITRADEOFF
    auxemail := 'a';
    UserSession.ZQuery2.SQL.Text := 'SELECT * FROM user WHERE email = "' + email0[i-1] + '" ';
    UserSession.ZQuery2.ExecSQL;
    UserSession.ZQuery2.open;
    auxemail := UserSession.ZQuery2.FieldByName('email').AsString;
    if (auxemail = '') and (email0[i-1] <> '') then
    begin
     UserSession.ZQuery2.SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + validacao0[i-1] + '","' + name0[i-1] + '","' + title0[i-1] + '","' + email0[i-1] + '","' + affiliation_type0[i-1] + '","' + password0[i-1] + '","' + city0[i-1] + '","' + country0[i-1] + '","' + institution_city0[i-1] + '","' + institution_name0[i-1] + '","' + purpose0[i-1] + '","' + date_of_birth0[i-1] + '","' + gender0[i-1] + '","' + education_level0[i-1] + '","' + status0[i-1] + '","' + course0[i-1] + '","' + analyst0[i-1] + '")';
             UserSession.ZQuery2.ExecSQL;
    end; // if
    //FIM INTEGRAÇÃO COM O FITRADEOFF

    //INICIO DA INTEGRACAO COM O SIDMCPM
    auxemail := 'a';
    UserSession.ZQuery3.SQL.Text := 'SELECT * FROM user WHERE email = "' + email0[i-1] + '" ';
    UserSession.ZQuery3.ExecSQL;
    UserSession.ZQuery3.open;
    auxemail := UserSession.ZQuery3.FieldByName('email').AsString;
    if (auxemail = '') and (email0[i-1] <> '') then
    begin
    UserSession.ZQuery3.SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao0[i-1] + '","' + name0[i-1] + '","' + title0[i-1] + '","' + email0[i-1] + '","' + affiliation_type0[i-1] + '","' + password0[i-1] + '","' + city0[i-1] + '","' + country0[i-1] + '","' + institution_city0[i-1] + '","' + institution_name0[i-1] + '","' + purpose0[i-1] + '","' + date_of_birth0[i-1] + '","' + gender0[i-1] + '","' + education_level0[i-1] + '","' + status0[i-1] + '","' + course0[i-1] + '")';
            UserSession.ZQuery3.ExecSQL;
    end; // if
    //FIM DA INTEGRACAO COM O SIDMCPM

    //INICIO DA INTEGRACAO COM O BASHE
    auxemail := 'a';
    UserSession.ZQuery4.SQL.Text := 'SELECT * FROM user_experimento WHERE email = "' + email0[i-1] + '" ';
    UserSession.ZQuery4.ExecSQL;
    UserSession.ZQuery4.open;
    auxemail := UserSession.ZQuery4.FieldByName('email').AsString;
    if (auxemail = '') and (email0[i-1] <> '') then
    begin
    UserSession.ZQuery4.SQL.Text :=
              'INSERT INTO user_experimento (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao0[i-1] + '","' + name0[i-1] + '","' + title0[i-1] + '","' + email0[i-1] + '","' + affiliation_type0[i-1] + '","' + password0[i-1] + '","' + city0[i-1] + '","' + country0[i-1] + '","' + institution_city0[i-1] + '","' + institution_name0[i-1] + '","' + purpose0[i-1] + '","' + date_of_birth0[i-1] + '","' + gender0[i-1] + '","' + education_level0[i-1] + '","' + status0[i-1] + '","' + course0[i-1] + '")';
    UserSession.ZQuery4.ExecSQL;
    end; // if
    //FIM DA INTEGRACAO COM O BASHE

   //INICIO DA INTEGRACAO COM O PROMETHEE
    auxemail := 'a';
    UserSession.ZQuery6.SQL.Text := 'SELECT * FROM usuario WHERE email = "' + email0[i-1] + '" ';
    UserSession.ZQuery6.ExecSQL;
    UserSession.ZQuery6.open;
    auxemail := UserSession.ZQuery6.FieldByName('email').AsString;
    if (auxemail = '') and (email0[i-1] <> '') then
    begin
    UserSession.ZQuery6.SQL.Text :=
              'INSERT INTO usuario (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + validacao0[i-1] + '","' + name0[i-1] + '","' + title0[i-1] + '","' + email0[i-1] + '","' + affiliation_type0[i-1] + '","' + password0[i-1] + '","' + city0[i-1] + '","' + country0[i-1] + '","' + institution_city0[i-1] + '","' + institution_name0[i-1] + '","' + purpose0[i-1] + '","' + date_of_birth0[i-1] + '","' + gender0[i-1] + '","' + education_level0[i-1] + '","' + status0[i-1] + '","' + course0[i-1] + '","' + analyst0[i-1] + '")';
            UserSession.ZQuery6.ExecSQL;
    end; // if
    //FIM DA INTEGRACAO COM O PROMETHEE

   //INICIO DA INTEGRACAO COM O C OTIMO
    auxemail := 'a';
    UserSession.ZQuery7.SQL.Text := 'SELECT * FROM usuario WHERE email = "' + email0[i-1] + '" ';
    UserSession.ZQuery7.ExecSQL;
    UserSession.ZQuery7.open;
    auxemail := UserSession.ZQuery7.FieldByName('email').AsString;
    if (auxemail = '') and (email0[i-1] <> '') then
    begin
    UserSession.ZQuery7.SQL.Text :=
              'INSERT INTO usuario (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course, analyst) VALUES ("' + validacao0[i-1] + '","' + name0[i-1] + '","' + title0[i-1] + '","' + email0[i-1] + '","' + affiliation_type0[i-1] + '","' + password0[i-1] + '","' + city0[i-1] + '","' + country0[i-1] + '","' + institution_city0[i-1] + '","' + institution_name0[i-1] + '","' + purpose0[i-1] + '","' + date_of_birth0[i-1] + '","' + gender0[i-1] + '","' + education_level0[i-1] + '","' + status0[i-1] + '","' + course0[i-1] + '","' + analyst0[i-1] + '")';
            UserSession.ZQuery7.ExecSQL;
    end; // if
    //FIM DA INTEGRACAO COM O C OTIMO

    //INICIO DA INTEGRACAO COM O sidmcpm
    auxemail := 'a';
    UserSession.ZQuery8.SQL.Text := 'SELECT * FROM user WHERE email = "' + email0[i-1] + '" ';
    UserSession.ZQuery8.ExecSQL;
    UserSession.ZQuery8.open;
    auxemail := UserSession.ZQuery8.FieldByName('email').AsString;
    if (auxemail = '') and (email0[i-1] <> '') then
    begin
    UserSession.ZQuery8.SQL.Text :=
              'INSERT INTO user (validacao, name, title, email, affiliation_type, password, city, country,institution_city ,institution_name,purpose,date_of_birth,gender,education_level, status, course) VALUES ("' + validacao0[i-1] + '","' + name0[i-1] + '","' + title0[i-1] + '","' + email0[i-1] + '","' + affiliation_type0[i-1] + '","' + password0[i-1] + '","' + city0[i-1] + '","' + country0[i-1] + '","' + institution_city0[i-1] + '","' + institution_name0[i-1] + '","' + purpose0[i-1] + '","' + date_of_birth0[i-1] + '","' + gender0[i-1] + '","' + education_level0[i-1] + '","' + status0[i-1] + '","' + course0[i-1] + '")';
            UserSession.ZQuery8.ExecSQL;
    end; // if
    //FIM DA INTEGRACAO COM O sidmcpm

    //close;
    Next;
    inc(i);
    end; // While
  end; // with zquery1



   i := 1;
With UserSession.ZQuery2 do
begin
   UserSession.ZQuery2.SQL.Text := 'SELECT * FROM user';
   UserSession.ZQuery2.ExecSQL;
   UserSession.ZQuery2.Open;
  //First;
    analista := '-1';
    UserSession.ZQuery2.SQL.Text := 'UPDATE user SET analyst ="' +
        analista + '" WHERE analyst="' + ''
        + '";';
   UserSession.ZQuery2.ExecSQL;
    //Next;

  UserSession.ZQuery2.Close;
end;

WebApplication.ShowMessage('O ajuste dos bancos de dados foi bem sucedido!');




end;



procedure TIWForm2.IWButton7Click(Sender: TObject);
var
i : integer;
validation, email : string;
begin

i := 1;
With UserSession.ZQuery1 do
begin
  SQL.Text := 'SELECT * FROM user';
  ExecSQL;
  open;
  validation := 'validado';
  First;
  while not eof do
  begin
  //Open;

    email := FieldByName('email').AsString;
    UserSession.ZQuery1.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery1.ExecSQL;
    Next;
  end;
  Close;
end;

With UserSession.ZQuery2 do
begin
  UserSession.ZQuery2.SQL.Text := 'SELECT * FROM user';
  UserSession.ZQuery2.ExecSQL;
  UserSession.ZQuery2.open;
  UserSession.ZQuery2.First;
  while not eof do
  begin
    validation := 'validado';
    email := FieldByName('email').AsString;
    UserSession.ZQuery2.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery2.ExecSQL;
    Next;
  end;
  Close;
end;

With UserSession.ZQuery3 do
begin
  UserSession.ZQuery3.SQL.Text := 'SELECT * FROM user';
  UserSession.ZQuery3.ExecSQL;
  UserSession.ZQuery3.open;
  UserSession.ZQuery3.First;
  while not eof do
  begin
    validation := 'validado';
    email := FieldByName('email').AsString;
    UserSession.ZQuery3.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery3.ExecSQL;
    Next;
  end;
  Close;
end;

With UserSession.ZQuery4 do
begin
  UserSession.ZQuery4.SQL.Text := 'SELECT * FROM user';
  UserSession.ZQuery4.ExecSQL;
  UserSession.ZQuery4.open;
  UserSession.ZQuery4.First;
  while not eof do
  begin
    validation := 'validado';
    email := FieldByName('email').AsString;
    UserSession.ZQuery4.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery4.ExecSQL;
    Next;
  end;
  Close;
end;



With UserSession.ZQuery6 do
begin
  UserSession.ZQuery6.SQL.Text := 'SELECT * FROM user';
  UserSession.ZQuery6.ExecSQL;
  UserSession.ZQuery6.open;
  UserSession.ZQuery6.First;
  while not eof do
  begin
    validation := 'validado';
    email := FieldByName('email').AsString;
    UserSession.ZQuery6.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery6.ExecSQL;
    Next;
  end;
  Close;
end;

With UserSession.ZQuery7 do
begin
  UserSession.ZQuery7.SQL.Text := 'SELECT * FROM user';
  UserSession.ZQuery7.ExecSQL;
  UserSession.ZQuery7.open;
  UserSession.ZQuery7.First;
  while not eof do
  begin
    validation := 'validado';
    email := FieldByName('email').AsString;
    UserSession.ZQuery7.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery7.ExecSQL;
    Next;
  end;
  Close;
end;

With UserSession.ZQuery8 do
begin
  UserSession.ZQuery8.SQL.Text := 'SELECT * FROM user';
  UserSession.ZQuery8.ExecSQL;
  UserSession.ZQuery8.open;
  UserSession.ZQuery8.First;
  while not eof do
  begin
    validation := 'validado';
    email := FieldByName('email').AsString;
    UserSession.ZQuery8.SQL.Text := 'UPDATE user SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery8.ExecSQL;
    Next;
  end;
  Close;
end;

WebApplication.ShowMessage('A validação dos usuários do CDSID foi bem sucedida!');
end;

procedure TIWForm2.IWButton8Click(Sender: TObject);
var
i : integer;
senha, validation, email : string;
begin
UserSession.ZQuery1.SQL.Text := 'SELECT * FROM user';
UserSession.ZQuery1.ExecSQL;
UserSession.ZQuery1.open;
UserSession.ZQuery1.First;
i := 1;
With UserSession.ZQuery1 do
begin
  while not eof do
  begin
    senha := FieldByName('password').AsString;
    email := FieldByName('email').AsString;
    UserSession.ZQuery6.SQL.Text := 'UPDATE usuario SET password ="' +
        senha + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery6.ExecSQL;
    validation := FieldByName('validacao').AsString;
    UserSession.ZQuery6.SQL.Text := 'UPDATE usuario SET validacao ="' +
        validation + '" WHERE email="' + email
        + '";';
    UserSession.ZQuery6.ExecSQL;

    Next;
  end;
  Close;
end;
end;

procedure TIWForm2.IWButton9Click(Sender: TObject);
var
i : integer;
validacao, email : string;
begin
i := 1;
With UserSession.ZQuery1 do
begin
   UserSession.ZQuery1.SQL.Text := 'SELECT * FROM user';
   UserSession.ZQuery1.ExecSQL;
   UserSession.ZQuery1.Open;
  //First;
    validacao := 'validado';
    UserSession.ZQuery1.SQL.Text := 'UPDATE user SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery1.ExecSQL;
    //Next;

  UserSession.ZQuery1.Close;
end;

With UserSession.ZQuery2 do
begin
   UserSession.ZQuery2.SQL.Text := 'SELECT * FROM user';
   UserSession.ZQuery2.ExecSQL;
   UserSession.ZQuery2.Open;
  //First;
    validacao := 'validado';
    UserSession.ZQuery2.SQL.Text := 'UPDATE user SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery2.ExecSQL;
    //Next;

  UserSession.ZQuery2.Close;
end;

With UserSession.ZQuery3 do
begin
   UserSession.ZQuery3.SQL.Text := 'SELECT * FROM user';
   UserSession.ZQuery3.ExecSQL;
   UserSession.ZQuery3.Open;
  //First;
    validacao := 'validado';
    UserSession.ZQuery3.SQL.Text := 'UPDATE user SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery3.ExecSQL;
    //Next;

  UserSession.ZQuery3.Close;
end;

With UserSession.ZQuery4 do
begin
   UserSession.ZQuery4.SQL.Text := 'SELECT * FROM user_experimento';
   UserSession.ZQuery4.ExecSQL;
   UserSession.ZQuery4.Open;
  //First;
    validacao := 'validado';
    UserSession.ZQuery4.SQL.Text := 'UPDATE user_experimento SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery4.ExecSQL;
    //Next;

  UserSession.ZQuery4.Close;
end;

With UserSession.ZQuery6 do
begin
   UserSession.ZQuery6.SQL.Text := 'SELECT * FROM usuario';
   UserSession.ZQuery6.ExecSQL;
   UserSession.ZQuery6.Open;
  //First;
    validacao := 'validado';
    UserSession.ZQuery6.SQL.Text := 'UPDATE usuario SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery6.ExecSQL;
    //Next;

  UserSession.ZQuery6.Close;
end;
With UserSession.ZQuery7 do
begin
   UserSession.ZQuery7.SQL.Text := 'SELECT * FROM usuario';
   UserSession.ZQuery7.ExecSQL;
   UserSession.ZQuery7.Open;
  //First;
    validacao := 'validado';
    UserSession.ZQuery7.SQL.Text := 'UPDATE usuario SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery7.ExecSQL;
    //Next;

  UserSession.ZQuery7.Close;
end;
With UserSession.ZQuery8 do
begin
   UserSession.ZQuery8.SQL.Text := 'SELECT * FROM user';
   UserSession.ZQuery8.ExecSQL;
   UserSession.ZQuery8.Open;
  //First;
    validacao := 'validado';
   UserSession.ZQuery8.SQL.Text := 'UPDATE user SET  validacao ="' +
        validacao + '";';
   UserSession.ZQuery8.ExecSQL;
    //Next;

  UserSession.ZQuery8.Close;
end;

WebApplication.ShowMessage('Todos os usuários do CDSID foram validados!');
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
    IWLabel9.Visible := false;

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

procedure TIWForm2.rgnloginCreate(Sender: TObject);
begin
rgnlogin.Left := 15;
rgnLogin.top := 15;
end;

procedure TIWForm2.rgnuserCreate(Sender: TObject);
var
nome : string;
begin
rgnuser.Left := 15;
rgnuser.Top := 15;

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
      with UserSession.ZQuery3 do
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
      4: //PROMETHEE
      begin
          {with UserSession.ZQuery5 do
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
              'INSERT INTO usuarios (code, nome, formacao, cargo, email, senha, estado, pais,org,interesse, status, area) VALUES ("' + (TIWUserSession(WebApplication.Data).auxvalidacao) + '","' + (Auxnomesobrenome) + '","' + (TIWUserSession(WebApplication.Data).nescolaridade) + '","' + edtcadtitle.Text + '","' + (edtcademail.Text) + '","' + (edtpassword.Text) + '","' + (edtcadaddcity.Text) + '","' + (edtcadaddresscoun.Text) + '","' + (edtcadinstname.Text) + '","' + (edtcadwhats.Text) + '","' + '2' + '","' + (edtcruso.Text) + '")';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            end; }
      end;
      5: //Editar infos do cadastro
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



      end; // 5



    end;// case






end;
























initialization
  TIWForm2.SetAsMainForm;

end.
