unit Unt_Frame_Top;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrameEdtPadrao = class(TFrame)
    lblCod: TLabel;
    edtCod: TEdit;
    lblNome: TLabel;
    edtNome: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
