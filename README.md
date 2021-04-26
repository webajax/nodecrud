# nodecrud
simples node com mvc e nodemon e babel.

Passo a Passo para instalação(Desenvolvido em ambiente Linux)

A explicação será dada em um ambiente Debian/Linux Ubuntu. 

1. Faça o **clone** do projeto na pasta onde desejar e de o seguinte comando para dar permissão no pasta nodecrud: sudo chmod 777 -R nodecrud;
2. Instale o **node** em seu S.O.; (no linux ubuntu instale com o seguinte comando (sem aspas): "sudo apt-get install nodejs" e tb sudo apt-get install npm);
3. O banco de dados **(mysql)** encontra-se na raiz do sistema "ordercrud.sql" abra o mysql e importe a base para seu IDE **(WORKBENCH ou outro)**; 
4. Na raiz do sistema, abra a pasta **config/database.js** e altere o host do seu mysql o user e o password;
5. Após seguir os passos anteriores execute no terminal na raiz do sistema o seguinte comando: 
# nodemon --exec babel-node --presets env index.js

**terá que executar algo parecido com isso:
[nodemon] 2.0.7 
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json
[nodemon] starting `babel-node --presets env index.js`
Servidor Express iniciado na porta 3000**

6 - Caso apareça algum erro digite na raiz do sistema: **npm install** ou **sudo npm install** para que o node instale os modules e dependências;
7 - refaça o comando :
# nodemon --exec babel-node --presets env index.js

# aparecendo:

[nodemon] 2.0.7 
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json
[nodemon] starting `babel-node --presets env index.js`
Servidor Express iniciado na porta 3000

# O node estará "UP" apto a receber o end-point .

8. para testar , abra seu POSTMAN ou similar  adicione na url : http://localhost:3000/customerorders/add ;

9. Escolha o método POST e na ABA Body adicione o seguinte json e altere os dados conforme sua necessidade: 

**{
  "name"              : "André Luiz",
  "email"             : "andre@webajax.com.br",
  "cpf"               : "25093230839",
  "cep"               : "01218020",
  "frete"             : "10.00",
  "value"             : "10.00",
  "itens"             : "{item1,item2}",
  "itens_sku"         : "11111111",
  "itens_description" : "produto1",
  "itens_value"       : "10.00",
  "itens_qtde"        : "1",
  "created"           : "2021-03-03" 
}**

A coluna created eu adicionei e deixei obrigatório tb.

10. Basta clicar em SEND e o retorno vai aparecer no POSTMAN .

ps: Teste todos os campos obrigatorios, formato de cpf , cep e email tb caso houver campo vazio vai aparecer assim:

{
    "success": false,
    "message": "Atenção: O itens sku não pode ser vazio.",
    "data": "Campo Vazio"
}


**Técnicamente falando:**. 

O sistema foi feito com MVC , dentro da pasta SRC temos controllers - service(onde fica a regra de negocio) e model(comunicação com o banco)
Podemos notar que temos o método construtor com o Pattern "dependency injection"  e procurei deixar o "código limpo" e também utilizei "S.O.L.I.D" no node. 
Temos um arquivo global.js na pasta helpers  onde fica o que utilizamos de mais comum como formatação de data e outros.



