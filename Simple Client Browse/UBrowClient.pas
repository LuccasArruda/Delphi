unit UBrowClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    EdNomeCliente: TEdit;
    ShpNoCliente: TShape;
    Image1: TImage;
    Label2: TLabel;
    Image2: TImage;
    EdCdCliente: TEdit;
    ShpCd: TShape;
    Label3: TLabel;
    procedure EdNomeClienteEnter(Sender: TObject);
    procedure EdCdClienteEnter(Sender: TObject);
    procedure EdCdClienteExit(Sender: TObject);
    procedure EdNomeClienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.EdCdClienteEnter(Sender: TObject);
begin
  EdCdCliente.Text := '';
  EdCdCliente.Font.Color := clWhite;
  ShpCd.Brush.Color := clSilver;
end;

procedure TForm1.EdCdClienteExit(Sender: TObject);
begin
  if EdCdCliente.Text = '' then
  begin
    EdCdCliente.Text := 'Código';
    EdCdCliente.Font.Color := clSilver;
    ShpCd.Brush.Color := clWhite;
  end;
end;

procedure TForm1.EdNomeClienteEnter(Sender: TObject);
begin
  EdNomeCliente.Text := '';
  EdNomeCliente.Font.Color := clWhite;
  ShpNoCliente.Brush.Color := clSilver;
end;

procedure TForm1.EdNomeClienteExit(Sender: TObject);
begin
  if EdNomeCliente.Text = '' then
  begin
    EdNomeCliente.Text := 'Insira o nome do cliente aqui...';
    EdNomeCliente.Font.Color := clSilver;
    ShpNoCliente.Brush.Color := clWhite;
  end;
end;

end.
