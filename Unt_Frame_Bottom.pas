unit Unt_Frame_Bottom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrameBtnPadrao = class(TFrame)
    pnlAtualizar: TPanel;
    pnlEditar: TPanel;
    pnlSair: TPanel;
    procedure pnlAtualizarMouseLeave(Sender: TObject);
    procedure pnlAtualizarMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Unit_Funcoes;

procedure TFrameBtnPadrao.pnlAtualizarMouseEnter(Sender: TObject);
begin
     SetBackgruondBotoes(TPanel(sender), clHighlight);
end;

procedure TFrameBtnPadrao.pnlAtualizarMouseLeave(Sender: TObject);
begin
      SetBackgruondBotoes(TPanel(sender), clSilver);
end;

end.
