unit classes;

interface

uses
  interfaces, System.SysUtils;

type
  TPessoa = class(TInterfacedObject, IPessoa)
  private
    FNome: string;
    FIdade: Integer;
    FEndereco: string;
  public
    function Nome(Value: string): Ipessoa;
    function Idade(Value: Integer): Ipessoa;
    function Endereco(Value: string): Ipessoa;
    function Documento: string;
  end;

implementation

{ TPerson }

function TPessoa.Documento: string;
begin
  Result := Format('Nome: %s,' + sLineBreak + ' Idade: %d,' + sLineBreak +
    ' Enredeco: %s', [FNome, FIdade, FEndereco]);
end;

function TPessoa.Endereco(Value: string): Ipessoa;
begin
  FEndereco := Value;
  Result := Self; // Retorna a pr�pria inst�ncia para encadeamento de m�todos
end;

function TPessoa.Idade(Value: Integer): Ipessoa;
begin
  FIdade := Value;
  Result := Self;
end;

function TPessoa.Nome(Value: string): Ipessoa;
begin
  FNome := Value;
  Result := Self;
end;

end.
