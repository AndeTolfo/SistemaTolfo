unit Unt_FrmCadGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
   Vcl.Mask, Vcl.DBCtrls,
  System.UITypes;

type
  TFrmCadGrupo = class(TForm)
    QryGrupo: TpFIBDataSet;
    PnlContainer: TPanel;
    PnlTop: TPanel;
    PnlBottom: TPanel;
    QryGrupoCOD_CLASSE: TFIBIntegerField;
    QryGrupoNOME_CLASSE: TFIBStringField;
    QryGrupoDESCRICAO_CLASSE: TFIBStringField;
    QryGrupoDTUPDATE_CLASSE: TFIBDateTimeField;
    QryGrupoIDSITE_CLASSE: TFIBStringField;
    DtsGrupo: TDataSource;
    LbCodigo: TLabel;
    LbNome: TLabel;
    LbDescricao: TLabel;
    EdtCodigo: TEdit;
    EdtNome: TDBEdit;
    EdtDescricao: TDBEdit;
    PnlSalvar: TPanel;
    PnlExcluir: TPanel;
    PnlCancelar: TPanel;
    PnlSair: TPanel;
    procedure FormShow(Sender: TObject);
    procedure PnlSalvarClick(Sender: TObject);
    procedure PnlExcluirClick(Sender: TObject);
    procedure PnlSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EdtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigoEnter(Sender: TObject);
    procedure EdtCodigoExit(Sender: TObject);
    procedure Unt_FuncoesMouseEnter(Sender: TObject);
    procedure Unt_FuncoesMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


  private
    { Private declarations }
    FCodigo: Integer;

    function GetCodigo: Integer;
    procedure SetCodigo(const Value: Integer);
  public
    class function New: TFrmCadGrupo;
    procedure Find;
    property Codigo: Integer read GetCodigo write SetCodigo;
  end;

implementation

uses
  Unt_DM, pFIBDatabase, Unit_Funcoes;

{$R *.dfm}
procedure TFrmCadGrupo.Unt_FuncoesMouseEnter(Sender: TObject);
begin
 SetBackgruondBotoes(TPanel(Sender), clHighlight);
end;

procedure TFrmCadGrupo.Unt_FuncoesMouseLeave(Sender: TObject);
begin
    SetBackgruondBotoes(TPanel(Sender), clSilver);
end;


procedure TFrmCadGrupo.EdtCodigoEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrmCadGrupo.EdtCodigoExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFrmCadGrupo.EdtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin
    Key := #0;
    FCodigo := StrToIntDef(EdtCodigo.Text, 0);

    if (FCodigo = 0) then begin
      EdtCodigo.Text := 'Autom�tico';
      EdtCodigo.Modified := False;
      if (QryGrupo.State <> DsInsert) then Find
      else EdtNome.SetFocus;
    end else if (EdtCodigo.Modified) then begin
      EdtCodigo.Modified := False;
      Find;
    end else EdtNome.SetFocus;
  end;
end;

procedure TFrmCadGrupo.Find;
begin
  QryGrupo.Close;
  QryGrupo.ParamByName('COD').AsInteger := FCodigo;
  QryGrupo.Open;

  if QryGrupo.IsEmpty then
  begin
    PnlTop.Caption := 'Inserindo um Novo Grupo';
    QryGrupo.Insert;
  end else begin
    PnlTop.Caption := 'Alterando o Grupo ' + FCodigo.ToString;
    QryGrupo.Edit;
    EdtCodigo.Text := FCodigo.ToString;
  end;

  if (FCodigo = 0) then EdtCodigo.SetFocus
  else EdtNome.SetFocus;
end;

procedure TFrmCadGrupo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if QryGrupo.Modified then CanClose := (Application.MessageBox(Pchar('Deseja Realmente Sair?'), Pchar('Confirma��o'), MB_ICONWARNING + MB_YesNo + MB_DEFBUTTON2) = IDYES);
  if not CanClose then EdtNome.SetFocus;
end;

procedure TFrmCadGrupo.FormCreate(Sender: TObject);
begin
  FCodigo := 0;
end;

procedure TFrmCadGrupo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then
  begin
   key := 0;
   Close;
  end;
end;

procedure TFrmCadGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TFrmCadGrupo.FormShow(Sender: TObject);
begin
  Find;
end;

function TFrmCadGrupo.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

class function TFrmCadGrupo.New: TFrmCadGrupo;
begin
  Result := TFrmCadGrupo.Create(nil);
end;

procedure TFrmCadGrupo.PnlExcluirClick(Sender: TObject);
var
  _Transaction: TpFIBTransaction;
begin
  _Transaction := DM.GetNewTransaction;
  try
    QryGrupo.UpdateTransaction := _Transaction;
    try
      QryGrupo.UpdateTransaction.StartTransaction;
      QryGrupo.Delete;
      QryGrupo.UpdateTransaction.Commit;
    except
      on E:Exception do begin
        if QryGrupo.UpdateTransaction.InTransaction then QryGrupo.UpdateTransaction.Rollback;
        ShowMessage('Ocorreu um Erro ao Excluir o Grupo!' + #13 + 'Erro: ' + E.Message);
      end;
    end
  finally
    FreeAndNil(_Transaction);
  end;
end;

procedure TFrmCadGrupo.PnlSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadGrupo.PnlSalvarClick(Sender: TObject);
var
  _Transaction: TpFIBTransaction;
begin
  _Transaction := DM.GetNewTransaction;
  try
    QryGrupo.UpdateTransaction := _Transaction;
    try
      QryGrupo.UpdateTransaction.StartTransaction;

      if (QryGrupo.State = dsInsert) then
      begin
        // Verifica se o valor do campo EdtCodigo � "Autom�tico"
        if EdtCodigo.Text = 'Autom�tico' then
        begin
          QryGrupoCOD_CLASSE.AsInteger := GetNexId('Classes','Cod_classe','',dm.QryGen);
        end
        else
          QryGrupoCOD_CLASSE.AsInteger := StrToInt(EdtCodigo.Text);
      end;
      QryGrupo.Post;
      QryGrupo.UpdateTransaction.Commit;
      EdtCodigo.Text := '';
      FCodigo := 0;
      Find;
      except
      on E:Exception do begin
        if QryGrupo.UpdateTransaction.InTransaction then QryGrupo.UpdateTransaction.Rollback;
        ShowMessage('Ocorreu um Erro ao Gravar o Grupo!' + #13 + 'Erro: ' + E.Message);
      end;
    end
    finally
    FreeAndNil(_Transaction);
  end;
end;

procedure TFrmCadGrupo.SetCodigo(const Value: Integer);
begin
  if (Value < 0) then raise Exception.Create('N�o � Permitido Valores Negativos!');

  FCodigo := Value;
end;

end.
