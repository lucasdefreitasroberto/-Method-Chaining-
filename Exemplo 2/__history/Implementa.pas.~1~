unit Implementa;

interface

uses
  Interfaces, Classes, System.SysUtils;

type
  TDocumento = class(TInterfacedObject, IDocumento)
  private
    FPessoa: IPessoa<IDocumento>;
  public
    class function New: IDocumento;

    function Pessoa: IPessoa<IDocumento>;
    function InfoDocumento: string;
  end;

implementation

{ TDocumento }

class function TDocumento.New: IDocumento;
begin
  Result := Self.Create;
end;

function TDocumento.Pessoa: IPessoa<IDocumento>;
begin
  // Cria e retorna uma nova instância de TPessoa, passando 'Self' como Parent
  FPessoa := TPessoa<IDocumento>.New(Self);
  Result := FPessoa;
end;

function TDocumento.InfoDocumento: string;
begin
  // Usa os valores configurados pela interface IPessoa
  Result := Format('Nome: %s, Idade: %d, Endereço: %s', [FPessoa.Nome, FPessoa.Idade, FPessoa.Endereco]);
end;

end.

