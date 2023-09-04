unit Unt_FrmRelGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, FIBDataSet, pFIBDataSet, DateUtils,
  Vcl.Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppDesignLayer, ppBands, ppVar, ppPrnabl, ppCache, ppParameter;

type
  TFrmRelGrupos = class(TForm)
    PnlContainer: TPanel;
    PnlTop: TPanel;
    PnlBottom: TPanel;
    dbListagem: TDBGrid;
    DtsRelGrupos: TDataSource;
    QryRelGrupos: TpFIBDataSet;
    pnlAtualizar: TPanel;
    pnlSair: TPanel;
    Label1: TLabel;
    edtCodGrupo: TEdit;
    Label2: TLabel;
    edtNomeGrupo: TEdit;
    QryRelGruposCOD_CLASSE: TFIBIntegerField;
    QryRelGruposNOME_CLASSE: TFIBStringField;
    QryRelGruposDESCRICAO_CLASSE: TFIBStringField;
    QryRelGruposDTUPDATE_CLASSE: TFIBDateTimeField;
    QryRelGruposIDSITE_CLASSE: TFIBStringField;
    pnlEditar: TPanel;
    PopRel: TPopupMenu;
    Listagem1: TMenuItem;
    pnlRelatorios: TPanel;
    ppDB: TppDBPipeline;
    ppRel: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure pnlAtualizarMouseLeave(Sender: TObject);
    procedure pnlAtualizarMouseEnter(Sender: TObject);
    procedure pnlAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbListagemCellClick(Column: TColumn);
    procedure pnlEditarClick(Sender: TObject);
    procedure pnlSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dbListagemDblClick(Sender: TObject);
    procedure pnlRelatoriosClick(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
  private
    var CodSelect : integer;
  public
    { Public declarations }
    Class Function New : TFrmRelGrupos;
  end;



implementation

{$R *.dfm}

uses Unt_DM, Unit_Funcoes, Unt_FrmCadGrupo;

{ TFrmRelGrupos }

procedure TFrmRelGrupos.dbListagemCellClick(Column: TColumn);
begin
  CodSelect := dbListagem.DataSource.DataSet.FieldByName('cod_classe').AsInteger;
end;

procedure TFrmRelGrupos.dbListagemDblClick(Sender: TObject);
var _CadGrupo : TFrmCadGrupo;
begin
  if CodSelect <> 0 then
    begin
      _CadGrupo := TFrmCadGrupo.New;
    try
    _CadGrupo.Codigo := CodSelect;
    _CadGrupo.ShowModal;
    finally
    FreeAndNil(_CadGrupo);
    end;
  end
  else
  begin
    ShowMessage('Selecione um Grupo');
  end;

end;

procedure TFrmRelGrupos.FormCreate(Sender: TObject);
begin
  CodSelect := 0;
end;

procedure TFrmRelGrupos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin  // Verifica se a tecla pressionada é a tecla F5
    Key := 0;
    pnlAtualizar.OnClick(Sender);
  end
  else if Key = VK_ESCAPE then
  begin
   key := 0;
   Close;
  end;
end;


procedure TFrmRelGrupos.FormShow(Sender: TObject);
begin
    pnlAtualizar.OnClick(TFrmRelGrupos(sender));
end;

procedure TFrmRelGrupos.Listagem1Click(Sender: TObject);
begin
   ImprimirRelatorio(ppRel,'Rel_ListagemGrupos.rtm')
end;

class function TFrmRelGrupos.New: TFrmRelGrupos;
begin
    Result := TFrmRelGrupos.Create(nil);
end;

procedure TFrmRelGrupos.pnlAtualizarClick(Sender: TObject);
var  SqlWhere : string;
begin
   SqlWhere := '';
   CodSelect := 0;
   // validações de valores
   //codigo grupo
   if (edtCodGrupo.Text <> '') then
   begin
     //incluir no where
     if SqlWhere <> '' then
     begin
       SqlWhere := SqlWhere + ' AND ';
       SqlWhere := SqlWhere + 'G.cod_classe in (' + edtCodGrupo.Text + ')';
     end
     else
     begin
       SqlWhere := SqlWhere + 'G.cod_classe in (' + edtCodGrupo.Text + ')';
     end;
   end;

  //nome grupo
  if edtNomeGrupo.Text <> '' then
  begin
     if SqlWhere <> '' then
     begin
      SqlWhere := SqlWhere + ' AND ';
      SqlWhere := SqlWhere + 'UPPER(G.nome_classe) LIKE ''%' + UpperCase(edtNomeGrupo.Text) + '%''';
     end
  else
    begin
     SqlWhere := SqlWhere + 'UPPER(G.nome_classe) LIKE ''%' + UpperCase(edtNomeGrupo.Text) + '%''';
    end;
  end;

   QryRelGrupos.Close;
   QryRelGrupos.SQL.Clear;
   QryRelGrupos.SQL.Add('select * from classes g');
   if SqlWhere <> '' then
   begin
     QryRelGrupos.SQL.Add('Where '+ SqlWhere);
   end;

   QryRelGrupos.Open;

end;


procedure TFrmRelGrupos.pnlAtualizarMouseEnter(Sender: TObject);
begin
    SetBackgruondBotoes(TPanel(sender), clHighlight);
end;

procedure TFrmRelGrupos.pnlAtualizarMouseLeave(Sender: TObject);
begin
    SetBackgruondBotoes(TPanel(sender), clSilver);
end;

procedure TFrmRelGrupos.pnlEditarClick(Sender: TObject);
var
  _CadGrupo : TFrmCadGrupo;
begin
  if (CodSelect <> 0)  then
  begin
    _CadGrupo := TFrmCadGrupo.New;
    try
        _CadGrupo.Codigo := CodSelect;
        _CadGrupo.ShowModal;
    finally
        FreeAndNil(_CadGrupo);
    end;
  end
  else
  begin
    ShowMessage('Selecione um Grupo');
  end;


end;

procedure TFrmRelGrupos.pnlRelatoriosClick(Sender: TObject);
begin
    PopRel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrmRelGrupos.pnlSairClick(Sender: TObject);
begin
close;
end;

end.
