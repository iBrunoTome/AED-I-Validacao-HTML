{
    Bruno Tome - 0011254 - ibrunotome@gmail.com
    Claudio Menezes - 0011255 - claudiomenezio.@gmail.com

    O lowercase converte os caracteres maiusculos, se houver, para minusculo
    cumprindo com o requisito de trabalhar com maiusculo e minusculo.
}

program tabalhopilhahtml;

uses biblioteca, crt;

procedure verificahtml(var pilhahtml : pilha; s : string; numlinha : byte; var errohtml : byte);
var i : byte;
begin
    // Empilha html
    for i:=1 to length(s) do
    begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 'h') and ((lowercase(s[i+2])) = 't') and ((lowercase(s[i+3])) = 'm') and ((lowercase(s[i+4])) = 'l') and ((lowercase(s[i+5])) = '>')) then
	    begin
	        inserir(pilhahtml,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        errohtml := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha html
	    if ((s[i] = '<') and (lowercase(s[i+1]) = '/') and (lowercase(s[i+2]) = 'h') and ((lowercase(s[i+3])) = 't') and ((lowercase(s[i+4])) = 'm') and ((lowercase(s[i+5])) = 'l') and ((lowercase(s[i+6])) = '>')) then
	    begin
	        remover(pilhahtml);
	    end;
    end;
end;

procedure verificahead(var pilhahead : pilha; s : string; numlinha : byte; var errohead : byte);
var i : byte;
begin
    // Empilha head
    for i:=1 to length(s) do
   	begin
	    if ((s[i] = '<') and ((lowercase(s[i+1]) = 'h')) and ((lowercase(s[i+2])) = 'e') and ((lowercase(s[i+3])) = 'a') and ((lowercase(s[i+4])) = 'd') and ((lowercase(s[i+5])) = '>')) then
	    begin
	        inserir(pilhahead,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        errohead := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha head
	    if ((s[i] = '<') and (s[i+1] = '/') and ((lowercase(s[i+2])) = 'h') and ((lowercase(s[i+3])) = 'e') and ((lowercase(s[i+4])) = 'a') and ((lowercase(s[i+5])) = 'd') and ((lowercase(s[i+6])) = '>')) then
	    begin
	        remover(pilhahead);
	    end;
	end;
end;

procedure verificatitle(var pilhatitle : pilha; s : string; numlinha : byte; var errotitle : byte);
var i : byte;
begin
    // Empilha title
    for i:=1 to length(s) do
   	begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 't') and ((lowercase(s[i+2])) ='i') and ((lowercase(s[i+3])) = 't') and ((lowercase(s[i+4])) = 'l') and ((lowercase(s[i+5])) = 'e') and ((lowercase(s[i+6])) = '>')) then
	    begin
	        inserir(pilhatitle,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        errotitle := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha title
	    if ((s[i] = '<') and (s[i+1] = '/') and ((lowercase(s[i+2])) = 't') and ((lowercase(s[i+3])) = 'i') and ((lowercase(s[i+4])) = 't') and ((lowercase(s[i+5])) = 'l') and ((lowercase(s[i+6])) = 'e') and ((lowercase(s[i+7])) = '>')) then
	    begin
	        remover(pilhatitle);
	    end;
	end;
end;

procedure verificabody(var pilhabody : pilha; s : string; numlinha : byte; var errobody : byte);
var i : byte;
begin
    // Empilha body
    for i:=1 to length(s) do
    begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 'b') and ((lowercase(s[i+2])) = 'o') and ((lowercase(s[i+3])) = 'd') and ((lowercase(s[i+4])) = 'y') and ((lowercase(s[i+5])) = '>')) then
	    begin
	        inserir(pilhabody,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        errobody := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha body
	    if ((s[i] = '<') and (s[i+1] = '/') and ((lowercase(s[i+2])) = 'b') and ((lowercase(s[i+3])) = 'o') and ((lowercase(s[i+4])) = 'd') and ((lowercase(s[i+5])) = 'y') and ((lowercase(s[i+6])) ='>')) then
	    begin
	        remover(pilhabody);
	    end;
	end;
end;

procedure verificah1(var pilhah1 : pilha; s : string; numlinha : byte; var erroh1 : byte);
var i : byte;
begin
    // Empilha h1
    for i:=1 to length(s) do
    begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 'b') and ((lowercase(s[i+2])) = 'o') and ((lowercase(s[i+3])) = 'd') and ((lowercase(s[i+4])) = 'y') and ((lowercase(s[i+5])) = '>')) then
	    begin
	        inserir(pilhah1,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        erroh1 := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha h1
	    if ((s[i] = '<') and (s[i+1] = '/') and ((lowercase(s[i+2])) = 'b') and ((lowercase(s[i+3])) = 'o') and ((lowercase(s[i+4])) = 'd') and ((lowercase(s[i+5])) = 'y') and ((lowercase(s[i+6])) ='>')) then
	    begin
	        remover(pilhah1);
	    end;
	end;
end;

procedure verificacenter(var pilhacenter : pilha; s : string; numlinha : byte; var errocenter : byte);
var i : byte;
begin
    // Empilha center
    for i:=1 to length(s) do
    begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 'c') and ((lowercase(s[i+2])) ='e') and ((lowercase(s[i+3])) = 'n') and ((lowercase(s[i+4])) = 't') and ((lowercase(s[i+5])) = 'e') and ((lowercase(s[i+6])) = 'r') and ((lowercase(s[i+7])) ='>')) then
	    begin
	        inserir(pilhacenter,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        errocenter := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha center
	    if ((s[i] = '<') and (lowercase(s[i+1]) = '/') and (lowercase(s[i+2]) = 'c') and ((lowercase(s[i+3])) ='e') and ((lowercase(s[i+4])) = 'n') and ((lowercase(s[i+5])) = 't') and ((lowercase(s[i+6])) = 'e') and ((lowercase(s[i+7])) = 'r') and ((lowercase(s[i+8])) ='>')) then
	    begin
	        remover(pilhacenter);
	    end;
	end;
end;

procedure verificaol(var pilhaol : pilha; s : string; numlinha : byte; var errool : byte);
var i : byte;
begin
    // Empilha ol
    for i:=1 to length(s) do
    begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 'o') and (lowercase(s[i+2]) = 'l') and (lowercase(s[i+3]) = '>')) then
	    begin
	        inserir(pilhaol,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        errool := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha ol
	    if ((s[i] = '<') and (s[i+1] = '/') and ((lowercase(s[i+2])) = 'o') and (lowercase(s[i+3]) = 'l') and (lowercase(s[i+4]) = '>')) then
	    begin
	        remover(pilhaol);
	    end;
	end;
end;

procedure verificali(var pilhali : pilha; s : string; numlinha : byte; var erroli : byte);
var i : byte;
begin
    // Empilha li
    for i:=1 to length(s) do
    begin
	    if ((s[i] = '<') and (lowercase(s[i+1]) = 'l') and (lowercase(s[i+2]) = 'i') and (lowercase(s[i+3]) = '>')) then
	    begin
	        inserir(pilhali,1); // empilha um inteiro so para controle, nao ha necessidade de empilhar o caractere
	        erroli := numlinha; // salva o numero da linha, caso exista o erro um procedimento ira imprimi-lo depois
	    end;

        // Desempilha li
	    if ((s[i] = '<') and (s[i+1] = '/') and ((lowercase(s[i+2])) = 'l') and (lowercase(s[i+3]) = 'i') and (lowercase(s[i+4]) = '>')) then
	    begin
	        remover(pilhali);
	    end;
	end;
end;

// Inicio das verificacoes de erro

procedure verificaerrohtml(pilhahtml : pilha; var flag : boolean; errohtml : byte);
begin
    if (not(vazia(pilhahtml))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', errohtml);
    end;
end;

procedure verificaerrohead(pilhahead : pilha; var flag : boolean; errohead : byte);
begin
    if (not(vazia(pilhahead))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', errohead);
    end;
end;

procedure verificaerrotitle(pilhatitle : pilha; var flag : boolean; errotitle : byte);
begin
    if (not(vazia(pilhatitle))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', errotitle);
    end;
end;

procedure verificaerrobody(pilhabody : pilha; var flag : boolean; errobody : byte);
begin
    if (not(vazia(pilhabody))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', errobody);
    end;
end;

procedure verificaerroh1(pilhah1 : pilha; var flag : boolean; erroh1 : byte);
begin
    if (not(vazia(pilhah1))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', erroh1);
    end;
end;

procedure verificaerrocenter(pilhacenter : pilha; var flag : boolean; errocenter : byte);
begin
    if (not(vazia(pilhacenter))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', errocenter);
    end;
end;

procedure verificaerrool(pilhaol : pilha; var flag : boolean; errool : byte);
begin
    if (not(vazia(pilhaol))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', errool);
    end;
end;

procedure verificaerroli(pilhali : pilha; var flag : boolean; erroli : byte);
begin
    if (not(vazia(pilhali))) then
    begin
        flag := true;
        writeln('O Html contem um erro na linha ', erroli);
    end;
end;

var 
    pilhahtml, pilhahead, pilhatitle, pilhabody, pilhah1, pilhacenter, pilhaol, pilhali: pilha;
    numlinha, errohtml, errohead, errotitle, errobody, erroh1, errocenter, errool, erroli : byte;
    s : string; 
    f : text;
    flag : boolean;

begin
    clrscr;
    numlinha := 0;
    criar(pilhahtml);
    criar(pilhahead);
    criar(pilhatitle);
    criar(pilhabody);
    criar(pilhah1);
    criar(pilhacenter);
    criar(pilhaol);
    criar(pilhali);
    flag := false;

    // Verificando se o arquivo html foi passado como argumento

    if (ParamCount <> 1) then
    begin
        writeln('Numero errado de argumentos! Voce deve passar um arquivo html como parametro!');
        exit;
    end;

    assign (f,ParamStr(1));
	reset(f);

    while (not eof(f)) do
    begin 
        readln(f,s);
        inc(numlinha); // contador pra saber em que linha tera algum erro
        verificahtml(pilhahtml, s, numlinha, errohtml); // verifica tag <html>
        verificahead(pilhahead, s, numlinha, errohead); // verifica tag <head>
        verificatitle(pilhatitle, s, numlinha, errotitle); // verifica tag <title>
        verificabody(pilhabody, s, numlinha, errobody); // verifica tag <body>
        verificah1(pilhah1, s, numlinha, erroh1); // verifica tag <h1>
        verificacenter(pilhacenter, s, numlinha, errocenter); // verifica tag <center>
        verificaol(pilhaol, s, numlinha, errool); // verifica tag <ol>
        verificali(pilhali, s, numlinha, erroli); // verifica tag <li>
    end;
    close(f);

    verificaerrohtml(pilhahtml, flag, errohtml); // verifica se ha erro na tag <html>
    verificaerrohead(pilhahead, flag, errohead); // verifica se ha erro na tag <head>
    verificaerrotitle(pilhatitle, flag, errotitle); // verifica se ha erro na tag <title>
    verificaerrobody(pilhabody, flag, errobody); // verifica se ha erro na tag <body>
    verificaerrohead(pilhah1, flag, erroh1); // verifica se ha erro na tag <h1>
    verificaerrocenter(pilhacenter, flag, errocenter); // verifica se ha erro na tag <center>
    verificaerrool(pilhaol, flag, errool); // verifica se ha erro na tag <ol>
    verificaerroli(pilhali, flag, erroli); // verifica se ha erro na tag <li>

    if not(flag) then // Se a flag nao subiu significa que nao ha erro no html
        writeln('Arquivo HTML esta correto!');

    readln;
end.