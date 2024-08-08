unit interfaces;

interface

type
  IPessoa = interface
    function Nome(Value: string): IPessoa;
    function Idade(Value: Integer): IPessoa;
    function Endereco(Value: string): IPessoa;
    function Documento: string;
  end;

implementation

end.

