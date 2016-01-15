{
    Bruno Tome - 0011254 - ibrunotome@gmail.com
    Claudio Menezes - 0011255 - claudiomenezio.@gmail.com
}

unit biblioteca;

interface

type
    elem = byte;
    
    noh = record
        item: elem;
        proximo: ^noh;
    end;    

    pilha = record
      	topo: ^noh;
    end;

procedure criar(var p:pilha);
function vazia (var p:pilha):boolean;
function inserir (var p:pilha; x:elem): boolean;
function remover (var p:pilha): boolean;
function topo(var p:pilha): elem;


implementation

procedure criar(var p:pilha);
    begin
        p.topo:=nil;
    end;

function vazia (var p:pilha):boolean;
    begin
        if p.topo=nil then
            vazia:=true
        else
            vazia:=false;
    end;

function inserir (var p:pilha; x:elem): boolean;
    var
        novo_noh: ^noh;
    begin
        new(novo_noh); { criar novo noh }
        if (novo_noh <> nil) then
     	begin
	        novo_noh^.item := x;
	       	novo_noh^.proximo := p.topo;
	        p.topo := novo_noh;
	       	inserir:=true;
     	end
        else
            inserir:=false;
    end;


function remover (var p:pilha): boolean;
    var
        aux : ^noh; { armazena o noh a ser excluido }
    begin
        if not vazia(p) then
        begin
            aux := p.topo;
            p.topo := p.topo^.proximo;
            dispose (aux);
            remover := true;
        end
        else
            remover:=false;
    end;


function topo(var p:pilha): elem;
    begin
        topo:=p.topo^.item;
    end;
end.