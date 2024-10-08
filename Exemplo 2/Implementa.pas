unit Implementa;

interface

uses
  Interfaces, Classes, System.SysUtils, Vcl.Dialogs;

type
  TDocumento = class(TInterfacedObject, IDocumento)
  private
    FPessoa: IPessoa<IDocumento>;
  public
    class function New: IDocumento;

    function Pessoa: IPessoa<IDocumento>;
    procedure InfoDocumento;
  end;

implementation

{ TDocumento }

class function TDocumento.New: IDocumento;
begin
  Result := Self.Create;
end;

function TDocumento.Pessoa: IPessoa<IDocumento>;
begin
  // Cria e retorna uma nova inst�ncia de TPessoa, passando 'Self' como Parent
  FPessoa := TPessoa<IDocumento>.New(Self);
  Result := FPessoa;
end;

procedure TDocumento.InfoDocumento;
begin
  // Usa os valores configurados pela interface IPessoa
  ShowMessage(Format('Nome: %s, Idade: %d, Endere�o: %s',
    [FPessoa.Nome, FPessoa.Idade, FPessoa.Endereco]));
end;

end.
