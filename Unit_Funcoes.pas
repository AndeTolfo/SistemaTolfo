unit Unit_Funcoes;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
   Vcl.Mask, Vcl.DBCtrls,pFIBQuery,ppReport,
  System.UITypes;

 procedure SetBackgruondBotoes(iPanel: TPanel; iColor: TColor);
procedure ImprimirRelatorio (ppReport : TppReport; RelName : string);
 function GetNexId(const TableName, FieldName, Condition: string; Qry : TpFIBQuery):Integer;
implementation


 procedure SetBackgruondBotoes(iPanel: TPanel; iColor: TColor);
 begin
      iPanel.Color := iColor;
 end;

 function GetNexId(const TableName, FieldName, Condition: string; Qry : TpFIBQuery):Integer;
 begin
 try
      Qry.SQL.Clear;
      Qry.SQL.Text := 'execute procedure get_next_id(:pTabela,:pCampo,:pCondicao,1)';
      Qry.ParamByName('pTabela').AsString := TableName;
      Qry.ParamByName('pCampo').AsString := FieldName;
      Qry.ParamByName('pCondicao').AsString := Condition;
      Qry.ExecQuery;
    // Obt�m o valor retornado pela procedure
    Result := Qry.Fields[0].AsInteger;
  finally
    Qry.Close;
  end;
end;

procedure ImprimirRelatorio (ppReport : TppReport; RelName : string);
var scaminho : string;
begin
// Obtenha o diret�rio de aplicativo
  scaminho := ExtractFilePath(Application.ExeName);

  // Combine o diret�rio de aplicativo com o caminho relativo para a pasta "Relatorios"
  scaminho := IncludeTrailingPathDelimiter(scaminho) + 'Relatorios\';

  // Defina o nome e caminho completo do arquivo do relat�rio
  scaminho := scaminho + RelName;

  // Verifique se o arquivo do relat�rio existe antes de carreg�-lo
  if FileExists(scaminho) then
  begin
    ppReport.Template.FileName := scaminho;
    ppReport.Template.LoadFromFile;
    ppReport.PreviewFormSettings.ZoomPercentage := 100;
    ppReport.PrintReport;
  end
  else
  begin
    ShowMessage('O arquivo '+ RelName +' do relat�rio n�o foi encontrado.');
  end;
end;

end.
