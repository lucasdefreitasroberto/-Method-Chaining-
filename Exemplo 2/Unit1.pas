unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Interfaces, Implementa,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    procedure btnDocumentoClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerDocumento;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDocumentoClick(Sender: TObject);
begin
  Self.VerDocumento;
end;

procedure TForm1.VerDocumento;
begin
  TDocumento
  .New
   .Pessoa
    .Nome('Lucas')
    .Idade(30)
    .Endereco('Rua Sebastião Telles da Costa')
    .&End
    .InfoDocumento;
end;

end.

