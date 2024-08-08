unit Classes;

interface

uses
  Interfaces, System.SysUtils;

type
  TPessoa<T: IInterface> = class(TInterfacedObject, IPessoa<T>)
  private
    [weak]
    FParent: T;
    FNome: string;
    FIdade: Integer;
    FEndereco: string;

    constructor Create(Parent: T);
    destructor Destroy; override;
  public
    class function New(Parent: T): IPessoa<T>;

    function Nome(Value: string): IPessoa<T>; overload;
    function Nome: string; overload;
    function Idade(Value: Integer): IPessoa<T>; overload;
    function Idade: Integer; overload;
    function Endereco(Value: string): IPessoa<T>; overload;
    function Endereco: string; overload;
    function &End: T;
  end;

implementation

{ TPessoa<T> }

constructor TPessoa<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TPessoa<T>.Destroy;
begin
  inherited;
end;

class function TPessoa<T>.New(Parent: T): IPessoa<T>;
begin
  Result := Self.Create(Parent);
end;

function TPessoa<T>.&End: T;
begin
  // Retorna o objeto pai, do tipo T (neste caso, IDocumento)
  Result := FParent;
end;

function TPessoa<T>.Endereco(Value: string): IPessoa<T>;
begin
  FEndereco := Value;
  Result := Self;  // Retorna a própria instância para encadeamento de métodos
end;

function TPessoa<T>.Endereco: string;
begin
  Result := FEndereco;
end;

function TPessoa<T>.Idade(Value: Integer): IPessoa<T>;
begin
  FIdade := Value;
  Result := Self;
end;

function TPessoa<T>.Idade: Integer;
begin
  Result := FIdade;
end;

function TPessoa<T>.Nome(Value: string): IPessoa<T>;
begin
  FNome := Value;
  Result := Self;
end;

function TPessoa<T>.Nome: string;
begin
  Result := FNome;
end;

end.

