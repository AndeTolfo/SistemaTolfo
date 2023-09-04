unit Unt_FrmRelSubGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FIBDataSet, pFIBDataSet, Unt_Frame_Top, Vcl.StdCtrls,
  Unt_Frame_Bottom, Vcl.Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppDesignLayer, ppBands, ppVar, ppPrnabl, ppCache,
  ppParameter;

type
  TFrmRelSubGrupo = class(TForm)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    dbListagem: TDBGrid;
    DtsRelSubgrupo: TDataSource;
    QryRelSubGrupo: TpFIBDataSet;
    QryRelSubGrupoCOD_SUBCLASSE: TFIBIntegerField;
    QryRelSubGrupoNOME_SUBCLASSE: TFIBStringField;
    QryRelSubGrupoCODCLASSE_SUBCLASSE: TFIBIntegerField;
    QryRelSubGrupoNOME_CLASSE: TFIBStringField;
    FrameEdtPadrao1: TFrameEdtPadrao;
    Label1: TLabel;
    Label2: TLabel;
    edtCodGrupo: TEdit;
    FrameBtnPadrao1: TFrameBtnPadrao;
    edtNomeGrupo: TEdit;
    pnlLimpar: TPanel;
    pnlRel: TPanel;
    PopRel: TPopupMenu;
    Listagem1: TMenuItem;
    ppDB: TppDBPipeline;
    ppRel: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure FrameBtnPadrao1pnlSairClick(Sender: TObject);
    procedure FrameBtnPadrao1pnlAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbListagemCellClick(Column: TColumn);
    procedure FrameBtnPadrao1pnlEditarClick(Sender: TObject);
    procedure pnlLimparClick(Sender: TObject);
    procedure pnlLimparMouseEnter(Sender: TObject);
    procedure pnlLimparMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbListagemDblClick(Sender: TObject);
    procedure pnlRelClick(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
  private
    CodSelect : integer;
  public
    Class Function New : TFrmRelSubGrupo;
  end;

implementation

{$R *.dfm}

uses Unt_DM, Unit_Funcoes, Unt_FrmCadSubGrupo;

{ TFrmRelSubGrupo }

procedure TFrmRelSubGrupo.dbListagemCellClick(Column: TColumn);
begin
  CodSelect := dbListagem.DataSource.DataSet.FieldByName('cod_subclasse').AsInteger;
end;

procedure TFrmRelSubGrupo.dbListagemDblClick(Sender: TObject);
var _CadSubGrupo : TfrmCadSubGrupo;
begin
  if CodSelect <> 0 then
  begin
    _CadSubGrupo := TfrmCadSubGrupo.New;
    try
      _CadSubGrupo.Codigo := CodSelect;
      _CadSubGrupo.ShowModal;
    finally
      FreeAndNil(_CadSubGrupo);
    end;
  end;

end;


procedure TFrmRelSubGrupo.FormCreate(Sender: TObject);
begin
  CodSelect := 0;
end;

procedure TFrmRelSubGrupo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin  // Verifica se a tecla pressionada � a tecla F5
    Key := 0;
    FrameBtnPadrao1pnlAtualizarClick(Sender);
  end
  else if Key = VK_ESCAPE then
  begin
   key := 0;
   Close;
  end;
end;

procedure TFrmRelSubGrupo.FormShow(Sender: TObject);
begin
    FrameBtnPadrao1.pnlAtualizar.OnClick(TFrmRelSubGrupo(sender));
end;

procedure TFrmRelSubGrupo.FrameBtnPadrao1pnlAtualizarClick(Sender: TObject);
var SqlWhere : string;
begin
  SqlWhere := '';
  CodSelect := 0;

  //verificar vari�veis
  if (FrameEdtPadrao1.edtCod.Text <> '') then
  begin
     if (SqlWhere <> '')  then
     begin
       SqlWhere := SqlWhere + ' AND ';
       SqlWhere := SqlWhere + 'S.cod_subclasse in (' + FrameEdtPadrao1.edtCod.Text + ')';
     end
     else
     begin
       SqlWhere := SqlWhere + 'S.cod_subclasse in (' + FrameEdtPadrao1.edtCod.Text + ')';
     end;
  end;

  if (FrameEdtPadrao1.edtNome.Text <> '') then
  begin
    if (SqlWhere <> '') then
    begin
      SqlWhere := SqlWhere + ' AND ';
      SqlWhere := SqlWhere + 'UPPER(S.nome_subclasse) LIKE ''%' + UPPERCASE(FrameEdtPadrao1.edtnome.Text) + '%''';
    end
    else
    begin
      SqlWhere := SqlWhere + 'UPPER(S.nome_subclasse) LIKE ''%' + UPPERCASE(FrameEdtPadrao1.edtnome.Text) + '%''';
    end;
  end;

  if (edtCodGrupo.Text <> '') then
  begin
    if (SqlWhere <> '') then
    begin
      SqlWhere := SqlWhere + ' AND ';
      SqlWhere := SqlWhere + 'C.Cod_classe in (' + edtCodGrupo.Text + ')';
    end
    else
    begin
      SqlWhere := SqlWhere + 'C.Cod_classe in (' + edtCodGrupo.Text + ')';
    end;
  end;

  if (edtNomeGrupo.Text <> '') then
  begin
    if (SqlWhere <> '') then
    begin
      SqlWhere := SqlWhere + ' AND ';
      SqlWhere := SqlWhere + 'UPPER(C.NOME_CLASSE) LIKE ''%' + UpperCase(edtNomeGrupo.Text) + '%''';
    end
    else
    begin
      SqlWhere := SqlWhere + 'UPPER(C.NOME_CLASSE) LIKE ''%' + UpperCase(edtNomeGrupo.Text) + '%''';
    end;
  end;

  QryRelSubGrupo.Close;
  QryRelSubGrupo.SQL.Clear;
  QryRelSubGrupo.SQL.Add('select s.cod_subclasse, s.nome_subclasse, s.codclasse_subclasse, c.nome_classe from subclasse s');
  QryRelSubGrupo.SQL.Add('join classes c on c.cod_classe = s.codclasse_subclasse');

  if (SqlWhere <> '') then
  begin
    QryRelSubGrupo.SQL.Add('Where '+SqlWhere + 'order by 1');
  end
  else
  begin
    QryRelSubGrupo.SQL.Add('order by 1');
  end;

  QryRelSubGrupo.Open;
end;

procedure TFrmRelSubGrupo.FrameBtnPadrao1pnlEditarClick(Sender: TObject);
var _CadSubGrupo : TfrmCadSubGrupo;
begin
  if CodSelect <> 0 then
  begin
    _CadSubGrupo := TfrmCadSubGrupo.New;
    try
      _CadSubGrupo.Codigo := CodSelect;
      _CadSubGrupo.ShowModal;
    finally
      FreeAndNil(_CadSubGrupo);
    end;
  end;

end;

procedure TFrmRelSubGrupo.FrameBtnPadrao1pnlSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRelSubGrupo.Listagem1Click(Sender: TObject);
begin
   ImprimirRelatorio(ppRel,'Rel_ListagemSubGrupos.rtm');
end;

class function TFrmRelSubGrupo.New: TFrmRelSubGrupo;
begin
  result := TFrmRelSubGrupo.Create(nil);
end;

procedure TFrmRelSubGrupo.pnlLimparClick(Sender: TObject);
begin
  FrameEdtPadrao1.edtCod.Text := '';
  FrameEdtPadrao1.edtnome.Text := '';
  edtCodGrupo.Text := '';
  edtNomeGrupo.Text := '';
end;

procedure TFrmRelSubGrupo.pnlLimparMouseEnter(Sender: TObject);
begin
 SetBackgruondBotoes(TPanel(sender), clHighlight);
end;

procedure TFrmRelSubGrupo.pnlLimparMouseLeave(Sender: TObject);
begin
  SetBackgruondBotoes(TPanel(sender), clSilver);
end;

procedure TFrmRelSubGrupo.pnlRelClick(Sender: TObject);
begin
    PopRel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

end.