unit Unt_FrmPdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXPickers, Vcl.ComCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FIBDataSet, pFIBDataSet, Datasnap.DBClient;

type
  TFrmTelaPdv = class(TForm)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlVendedor: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlHor�rio: TPanel;
    dthora: TLabel;
    Timer: TTimer;
    Label3: TLabel;
    pnlSeparador: TPanel;
    pnlDelimitador: TPanel;
    Label4: TLabel;
    edtCodClient: TEdit;
    btnCliente: TSpeedButton;
    edtNomeCliente: TEdit;
    btnEdtCliente: TSpeedButton;
    pnlProdutos: TPanel;
    delimitador: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    edtCodProduto: TEdit;
    edtNomeProduto: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dbListagem: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    edtQuant: TEdit;
    Label7: TLabel;
    EdtPrecoUnit: TEdit;
    Label8: TLabel;
    EdtSubTotal: TEdit;
    Label9: TLabel;
    edtEstoqueDisp: TEdit;
    DtsProdutos: TDataSource;
    CDSProdutos: TClientDataSet;
    CDSProdutosN: TIntegerField;
    CDSProdutosCod_Produto: TIntegerField;
    CDSProdutosNome_Produto: TStringField;
    CDSProdutosQTD: TFloatField;
    CDSProdutosPR_Unit: TFloatField;
    CDSProdutosSubTotal: TFloatField;
    CDSProdutosTotalFinal: TFloatField;
    pnlCondicoesPag: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label10: TLabel;
    edtCodCondicao: TEdit;
    edtNomeCondicao: TEdit;
    btnPesquisaCondicao: TSpeedButton;
    btnEditCondicao: TSpeedButton;
    pnlExcluirItem: TPanel;
    pnlCancelarVenda: TPanel;
    Panel10: TPanel;
    pnlFinalizar: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel8: TPanel;
    pnlSair: TPanel;
    Panel14: TPanel;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure Find(tabela : String ; TipoPesquisa: string);
    procedure edtQuantChange(Sender: TObject);
    procedure EdtPrecoUnitChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCodClientKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSubTotalEnter(Sender: TObject);
    procedure edtCodClientKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSubTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPrecoUnitKeyPress(Sender: TObject; var Key: Char);
    procedure pnlExcluirItemMouseEnter(Sender: TObject);
    procedure pnlExcluirItemMouseLeave(Sender: TObject);
    procedure pnlSairClick(Sender: TObject);
    procedure ClearFields;
    procedure pnlCancelarVendaClick(Sender: TObject);
    procedure pnlExcluirItemClick(Sender: TObject);
    procedure btnPesquisaCondicaoClick(Sender: TObject);
    procedure edtCodCondicaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodCondicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
     var contador : integer;{ Private declarations }
  public
    Class Function New : TFrmTelaPdv;
  end;

implementation

{$R *.dfm}

uses Unit_Funcoes, Unt_Frm_Pesquisa, Unt_DM;

{ TFrmTelaPdv }

procedure TFrmTelaPdv.btnClienteClick(Sender: TObject);
var
_Pesquisa : TFrmPesquisa;
begin
  _Pesquisa := TFrmPesquisa.New;
  try
     _Pesquisa.Tabela := 'Clientes';
     _Pesquisa.Caption := 'Pesquisa por Clientes';
     if _Pesquisa.ShowModal = mrOk then
     begin
       if _Pesquisa.Cod_Selected <> 0 then
       begin
           edtCodClient.Text := _Pesquisa.Cod_Selected.ToString;
           edtNomeCliente.Text := _Pesquisa.Nome;
       end;
     end;
  finally
    FreeAndNil(_Pesquisa);
  end;
end;

procedure TFrmTelaPdv.edtCodClientKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var _PesquisaCliente : TFrmPesquisa;
begin
  if Key = VK_F3 then
  begin
    try
    _PesquisaCliente := TFrmPesquisa.New;
    _PesquisaCliente.Tabela := 'Clientes';
    _PesquisaCliente.Caption := 'Pesquisa por Clientes';
     if _PesquisaCliente.ShowModal = mrOk then
     begin
       if _PesquisaCliente.Cod_Selected <> 0 then
       begin
           edtCodClient.Text := _PesquisaCliente.Cod_Selected.ToString;
           edtNomeCliente.Text := _PesquisaCliente.Nome;
       end;
     end;
    finally
     FreeAndNil(_PesquisaCliente);
    end;
  end;
end;

procedure TFrmTelaPdv.edtCodClientKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
    if edtCodClient.Text = '' then
    begin
      ShowMessage('C�digo em branco');
    end
    else
    begin
      Find('Clientes','COD');
     if edtNomeCliente.Text <> '' then
      begin
      edtCodProduto.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmTelaPdv.edtCodCondicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var _PesquisaCond : TFrmPesquisa;
begin
  if Key = VK_F3 then
  begin
    try
    _PesquisaCond := TFrmPesquisa.New;
    _PesquisaCond.Tabela := 'CondicaoPagamento';
    _PesquisaCond.Caption := 'Pesquisa por Condi��es de Pagamento';
     if _PesquisaCond.ShowModal = mrOk then
     begin
       if _PesquisaCond.Cod_Selected <> 0 then
       begin
           edtCodCondicao.Text := _PesquisaCond.Cod_Selected.ToString;
           edtNomeCondicao.Text := _PesquisaCond.Nome;
       end;
     end;
    finally
     FreeAndNil(_PesquisaCond);
    end;
  end;
end;

procedure TFrmTelaPdv.edtCodCondicaoKeyPress(Sender: TObject; var Key: Char);
 begin
  if Key = #13 then
  begin
    key := #0;
    if edtCodCondicao.Text = '' then
    begin
      ShowMessage('C�digo em branco');
    end
    else
    begin
      Find('CondicaoPagamento','COD');
    end;
  end;
end;

procedure TFrmTelaPdv.edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
    if edtCodProduto.Text = '' then
    begin
      ShowMessage('C�digo em branco');
    end
    else
    begin
      Find('Produtos','COD');
     if edtNomeProduto.Text <> '' then
      begin
      edtQuant.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmTelaPdv.EdtPrecoUnitChange(Sender: TObject);
var Qtd,PrecoUni : Double;
begin
    if (edtQuant.Text <> '') and (EdtPrecoUnit.Text <> '') then
      begin
      if (strtofloat(edtQuant.Text) > 0) and (strtofloat(EdtPrecoUnit.Text) > 0) then
         begin
          Qtd := strtofloat(edtQuant.Text);
          PrecoUni := strtofloat(EdtPrecoUnit.Text);
          EdtSubTotal.Text := (Qtd * PrecoUni).ToString;
         end;
      end;
end;

procedure TFrmTelaPdv.EdtPrecoUnitKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
   if strtofloat(EdtPrecoUnit.Text) <> 0 then
   begin
     EdtSubTotal.SetFocus;
   end;
  end;
end;

procedure TFrmTelaPdv.edtQuantChange(Sender: TObject);
var Qtd,PrecoUni : Double;
begin
    if (edtQuant.Text <> '') and (EdtPrecoUnit.Text <> '') then
      begin
      if (strtofloat(edtQuant.Text) > 0) and (strtofloat(EdtPrecoUnit.Text) > 0) then
         begin
          Qtd := strtofloat(edtQuant.Text);
          PrecoUni := strtofloat(EdtPrecoUnit.Text);

          EdtSubTotal.Text := (Qtd * PrecoUni).ToString;
         end;
      end;
end;

procedure TFrmTelaPdv.edtQuantKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
   if strtofloat(edtQuant.Text) <> 0 then
   begin
     EdtPrecoUnit.SetFocus;
   end;
  end;
end;

procedure TFrmTelaPdv.EdtSubTotalEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFrmTelaPdv.EdtSubTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    CDSProdutos.DisableControls;
    cdsProdutos.Append;
    cdsProdutos.FieldByName('N�').AsInteger := Contador;
    cdsProdutos.FieldByName('COD_Produto').AsInteger := strtoint(edtCodProduto.Text);
    cdsProdutos.FieldByName('Nome_Produto').AsString := edtNomeProduto.Text;
    cdsProdutos.FieldByName('QTD').AsFloat := strtofloat(edtQuant.Text);
    cdsProdutos.FieldByName('PR_UNIT').AsFloat := strtofloat(EdtPrecoUnit.Text);
    cdsProdutos.FieldByName('SubTotal').AsFloat := strtofloat(EdtSubTotal.Text);
    CDSProdutos.FieldByName('TotalFinal').AsFloat := StrToFloat(EdtSubTotal.Text);
    contador := Contador + 1;
    CDSProdutos.EnableControls;
    edtCodProduto.SetFocus;
    if Key = #13 then
      begin
      Key := #0;
      if strtofloat(EdtSubTotal.Text) <> 0 then
        begin
            edtCodProduto.Text := '';
            edtNomeProduto.Text := '';
            EdtPrecoUnit.Text := '';
            edtQuant.Text := '';
            EdtSubTotal.Text := '';
            edtCodProduto.SetFocus;
        end;
      end;
  end;
end;

procedure TFrmTelaPdv.Find(tabela : String ; TipoPesquisa: string);
var _QryPesquisa : TpFIBDataSet;
begin
    _QryPesquisa := DM.GetNewQry;
  try
    _QryPesquisa.Close;
    _QryPesquisa.SQL.Clear;
    if (tabela = 'Clientes' ) then
    begin
      _QryPesquisa.SQL.Add('Select c.cod_cliente, c.nome_cliente from Clientes c');
      if (TipoPesquisa = 'COD') then
      begin
      _QryPesquisa.SQL.Add('Where C.Cod_Cliente = :pCod');
      _QryPesquisa.ParamByName('pCod').AsInteger := strtoint(edtCodClient.Text);
      _QryPesquisa.Open;
       if not _QryPesquisa.IsEmpty then
        begin
         edtCodClient.Text := _QryPesquisa.FieldByName('Cod_Cliente').AsString;
         edtNomeCliente.Text := _QryPesquisa.FieldbyName('Nome_cliente').AsString;
         end
       else
        begin
         ShowMessage('Cliente n�o encontrado');
         exit
        end;
      end;
    end
    else if (tabela = 'Produtos' ) then
    begin
    _QryPesquisa.SQL.Add('Select p.cod_produto, p.nome_produto, p.estoque_produto, p.prvenda_produto from Produtos p');
      if (TipoPesquisa = 'COD') then
      begin
        _QryPesquisa.SQL.Add('Where p.cod_produto = :pCod');
        _QryPesquisa.ParamByName('pCod').AsInteger := strtoint(edtCodProduto.Text);
        _QryPesquisa.Open;
       if not _QryPesquisa.IsEmpty then
       begin
         edtCodProduto.Text := _QryPesquisa.FieldByName('Cod_Produto').AsString;
         edtNomeProduto.Text := _QryPesquisa.FieldbyName('Nome_Produto').AsString;
         edtEstoqueDisp.Text := _QryPesquisa.FieldByName('estoque_produto').AsString;
         EdtPrecoUnit.Text := _QryPesquisa.FieldByName('prvenda_produto').AsString;
         edtQuant.Text := '1';
       end
       else
       begin
         ShowMessage('Produto n�o encontrado');
         exit
       end;
       end;
    end
    else if (Tabela = 'CondicaoPagamento') then
    begin
    _QryPesquisa.SQL.Add('select c.cod_formaspg, c.descricao_formaspg from formaspg c');
      if (TipoPesquisa = 'COD') then
      begin
        _QryPesquisa.Sql.Add('Where c.cod_formaspg = :pCod');
        _QryPesquisa.ParamByName('pCod').AsInteger := StrToInt(edtCodCondicao.Text);
        _QryPesquisa.Open;
        if not _QryPesquisa.IsEmpty then
        begin
          edtCodCondicao.Text := _QryPesquisa.FieldByName('cod_formaspg').AsString;
          edtNomeCondicao.Text := _QryPesquisa.FieldByName('descricao_formaspg').AsString;
        end
        else
        begin
          ShowMessage('Condi��o N�o Encontrada');
          exit
        end;
      end;
    end;
  finally
   FreeAndNil(_QryPesquisa);
  end;


end;

procedure TFrmTelaPdv.FormCreate(Sender: TObject);
begin
  contador := 1;
end;

procedure TFrmTelaPdv.FormShow(Sender: TObject);
begin
   DtHora.Caption := FormatDateTime('hh:mm:ss', Now);
    edtCodClient.SetFocus;
end;

class function TFrmTelaPdv.New: TFrmTelaPdv;
begin
    result := TFrmTelaPdv.Create(nil);
end;

procedure TFrmTelaPdv.btnPesquisaCondicaoClick(Sender: TObject);
var _Pesquisa : TFrmPesquisa;
begin
  _Pesquisa := TFrmPesquisa.New;
  try
     _Pesquisa.Tabela := 'CondicaoPagamento';
     _Pesquisa.Caption := 'Pesquisa por Condi��es';
     if _Pesquisa.ShowModal = mrOk then
     begin
       if _Pesquisa.Cod_Selected <> 0 then
       begin
           edtCodCondicao.Text := _Pesquisa.Cod_Selected.ToString;
           edtNomeCondicao.Text := _Pesquisa.Nome;
       end;
     end;
  finally
    FreeAndNil(_Pesquisa);
  end;
end;

procedure TFrmTelaPdv.ClearFields;
begin
  edtCodClient.Text := '';
  edtNomeCliente.Text := '';
  edtCodProduto.Text := '';
  edtNomeProduto.Text := '';
  edtEstoqueDisp.Text := '';
  EdtPrecoUnit.Text := '';
  edtQuant.Text := '';
  EdtSubTotal.Text := '';
  CDSProdutos.EmptyDataSet;
  contador := 1;
  edtCodCondicao.Text := '';
  edtNomeCondicao.Text := '';
end;

procedure TFrmTelaPdv.pnlCancelarVendaClick(Sender: TObject);
var
  Confirm: Integer;
begin
  Confirm := MessageDlg('Tem certeza que deseja cancelar a venda?', mtConfirmation, [mbYes, mbNo], 0);
  if Confirm = mrYes then
  begin
    ClearFields;
    // Outras a��es de cancelamento, se necess�rio
  end;
end;

procedure TFrmTelaPdv.pnlExcluirItemClick(Sender: TObject);
var
  SelectedRow: Integer;
  Confirm: Integer;
begin
  // Obtenha o �ndice da linha selecionada na grade
  SelectedRow := dbListagem.DataSource.DataSet.RecNo;

  // Verifique se uma linha est� selecionada
  if SelectedRow > 0 then
  begin
    // Solicite confirma��o do usu�rio
    Confirm := MessageDlg('Tem certeza que deseja excluir este item?', mtConfirmation, [mbYes, mbNo], 0);

    if Confirm = mrYes then
    begin
      // Remova o item da fonte de dados (por exemplo, CDSProdutos)
      CDSProdutos.Delete;
      contador := contador -1;

      // Atualize a exibi��o da grade
      dbListagem.Refresh;
    end;
  end
  else
  begin
    // Se nenhuma linha estiver selecionada, mostre uma mensagem de aviso
    ShowMessage('Selecione um item para excluir.');
  end;
end;

procedure TFrmTelaPdv.pnlExcluirItemMouseEnter(Sender: TObject);
begin
  SetBackgruondBotoes(Tpanel(sender),clHighlight);
end;

procedure TFrmTelaPdv.pnlExcluirItemMouseLeave(Sender: TObject);
begin
 SetBackgruondBotoes(TPanel(Sender), clSilver);
end;

procedure TFrmTelaPdv.pnlSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTelaPdv.TimerTimer(Sender: TObject);
begin
  DtHora.Caption := FormatDateTime('hh:mm:ss', Now);
end;

end.
