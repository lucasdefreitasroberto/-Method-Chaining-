unit interfaces;

interface

type
  IPessoa<T> = interface
    function Nome(Value: string): IPessoa<T>; overload;
    function Nome: string; overload;
    function Idade(Value: Integer): IPessoa<T>; overload;
    function Idade: Integer; overload;
    function Endereco(Value: string): IPessoa<T>; overload;
    function Endereco: string; overload;
    function &End: T;
  end;

  IDocumento = interface
    function Pessoa: IPessoa<IDocumento>;
    procedure InfoDocumento;
  end;

implementation

end.

