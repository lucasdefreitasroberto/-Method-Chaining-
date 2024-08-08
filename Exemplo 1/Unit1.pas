unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, interfaces,
  classes;

type
  TForm1 = class(TForm)
    btnVerDocumento: TBitBtn;
    procedure btnVerDocumentoClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnVerDocumentoClick(Sender: TObject);
begin
  var
    Pessoa :=
      TPessoa
      .Create
      .Nome('Lucas')
      .Idade(10)
      .Idade(20)
      .Idade(30)
      .Endereco('Rua Sebastião Telles da Costa');

  ShowMessage(Pessoa.Documento);
end;

end.

