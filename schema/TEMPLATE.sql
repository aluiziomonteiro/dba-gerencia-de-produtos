
/*1 – Criar um banco de dados em MYSQL com o nome TEMPLATE*/
CREATE DATABASE TEMPLATE;

/*2 – Usar o comando para colocar o banco de dados TEMPLATE em uso.*/
USE TEMPLATE;

/*3 – Criar a tabela abaixo:*/
create table tabCategorias(
    codigo_cat int,
    descricao_cat varchar(250),
    primary key(codigo_cat)
);

/*4 - inserir na tabCategorias os registros abaixo:*/
INSERT INTO tabCategorias VALUES(1, 'Confecção'),
(2, 'Calçados'),
(3, 'Bolas'),
(4, 'Natação'),
(5, 'Tênis'),
(6, 'Tênis de Mesa' );

/*5 – Criar a tabela abaixo:*/
create table tabMarcas(
    codigo_mar int,
    nome_mar varchar(250),
    primary key(codigo_mar)
);

/*6 – inserir na tabMarcas os registros abaixo:*/
INSERT INTO tabMarcas VALUES(1, 'Nike'),
(2, 'Adidas'),
(3, 'Reebok'),
(4, 'Wilson'),
(5, 'Speedy'),
(6, 'Butterfly');

/*7 – Criar a tabela abaixo:*/
create table tabUnidades(
    codigo_uni int,
    descricao_uni varchar(250),
    primary key(codigo_uni)
);

/*8 – inserir na tabUnidades os registros abaixo:*/
INSERT INTO tabUnidades VALUES(1, 'Peça'),
(2, 'Par'),
(3, 'Gramas'),
(4, 'Litro'),
(5, 'Caixa'),
(6, 'Cartela');

/*9 - Selecionar todos os registros da tabela de Marcas*/
SELECT * FROM tabMarcas;

/*10 - Selecionar todos os registros da tabela de Categorias ordenando pela descrição. */
SELECT * FROM tabCategorias ORDER BY descricao_cat;

/*11 – selecionar todos os nomes de descrição_uni que começa com a letra C*/
SELECT * FROM tabUnidades WHERE descricao_uni LIKE 'C%';

/*12 – selecionar todos os nomes de descrição_uni que termina com a letra A*/
SELECT * FROM tabUnidades WHERE descricao_uni LIKE '%A';

/*13 - Crie a instrução SQL para alterar o nome da Marca de código igual a 5 para Speed.*/
UPDATE tabMarcas SET nome_mar='Speed' WHERE codigo_mar = 5;

/*14 – Criar a tabela abaixo:*/
create table tabProdutos(
    codigo_pro int auto_increment primary key,
    descricao_pro varchar(250),
    preco_custo_pro decimal(8.2),
    preco_venda_pro decimal(8.2),
    qtd_estoque_pro int,
    qtd_minima_pro int,
    codigo_cat int,
    codigo_mar int,
    codigo_uni int,
    resumo_pro int,
    
    foreign key(codigo_cat) references tabCategorias(codigo_cat),
    foreign key(codigo_mar) references tabMarcas(codigo_mar),
    foreign key(codigo_uni) references tabUnidades(codigo_uni)
    
);

/*15 - Crie as instruções SQL para inserir os dados abaixo na tabela de Produtos. */
INSERT INTO tabProdutos VALUES(1, 'Camisa Brasil I','100.00','160.00',18,6,1,1,1,0),
    (2, 'Bola Adidas Copa 2010','150.00','240.00',2,3,3,2,1,0),
    (3, 'Camisa França II','110.00','170.00',1,2,1,2,1,0),
    (4, 'Bola de Tenis de Mesa Profissional c/6','20.00','32.00',12,6,6,6,6,0),
    (5, 'Bola de Tenis c/3','11.00','18.00',4,6,5,4,5,0),
    (6, 'Raquete de Tenis Profissional','280.00','460.00',2,2,5,4,1,0),
    (7, 'Camisa Esportiva','20.00','32.00',12,3,1,3,1,0),
    (8, 'Chuteirade Campo de Couro','90.00','170.00',8,6,2,1,2,0),
    (9, 'Chuteira de Footsal Sintetico','40.00','65.00',12,6,2,3,2,0),
    (10, 'Óculos de Natação Expert','35.00','60.00',3,6,4,5,1,0),
    (11, 'Maio de Natação Sublime','70.00','125.00',3,3,4,5,1,0);


/*1) Crie a instrução SQL para alterar o nome da Marca de código igual a 5 para Speed. */
UPDATE tabMarcas SET nome_mar = 'Speed' WHERE codigo_mar = 5;

/*2) Crie a instrução SQL para alterar o nome da
descrição do Produto de código igual a 7 para “Camisa
Lazer de Poliéster”. */
UPDATE tabProdutos SET descricao_pro = 'Camisa Lazer de Poliéster' WHERE codigo_pro = 7;

/*3) Crie a instrução SQL para alterar o preço de venda do
Produto de código igual a 8 para R$ 155,00. */
UPDATE tabProdutos SET preco_venda_pro = '155.00' WHERE codigo_pro = 8;

/*4) Crie a instrução SQL para somar mais 6 itens no
Produto de código igual a 9. */
UPDATE tabProdutos SET qtd_estoque_pro = (qtd_estoque_pro + 6) WHERE codigo_pro = 8;

/*5) Crie a instrução SQL para atualizar os dados abaixo do
Produto de código igual a 11. */
UPDATE tabProdutos SET descricao_pro = 'Maio de Natação Sublime Especial',
    preco_custo_pro = '64.00',
    preco_venda_pro = '115.00',
    qtd_estoque_pro = 9,
    qtd_minima_pro = 6   
    WHERE codigo_pro = 11;

/*1) Crie a instrução SQL para excluir a Unidade de código igual a 4. */
DELETE FROM tabUnidades WHERE codigo_uni = 4;

/*2) Crie a instrução SQL para excluir o Produto de
código igual a 7. */
DELETE FROM tabProdutos WHERE codigo_pro = 7;

/*3) Selecionar todos os registros da tabela de Marcas. */
SELECT * FROM tabMarcas;

/*4) Selecionar todos os registros da tabela de Categorias
ordenando pela descrição. */
SELECT * FROM tabCategorias ORDER  BY descricao_cat;

/*5) Selecionar todos os registros da tabela de Unidades
ordenando pelo código da unidade de forma descendente. */
SELECT * FROM tabUnidades ORDER BY codigo_uni DESC; 

/*6) Selecionar todas as descrições da tabela de
Unidades ordenando pela descrição da unidade. */
SELECT descricao_uni FROM tabUnidades ORDER BY descricao_uni;

/*7) Selecionar todos os produtos ordenados pela
descrição do produto. */
SELECT * FROM tabProdutos ORDER BY descricao_pro;

/*8) Apresentar a descrição e o preço de venda de todos
os produtos ordenados pelo preço da venda. */
SELECT descricao_pro,preco_venda_pro FROM tabProdutos ORDER BY preco_venda_pro;

/*9) Apresentar a descrição e os preços de custo e de
venda dos produtos ordenados pelo preço de custo de
forma descendente.*/
SELECT descricao_pro,preco_custo_pro FROM tabProdutos ORDER BY preco_venda_pro DESC;

/*10) Apresentar todos os dados dos produtos que não
sejam códigos ordenando pela descrição do produto de
forma descendente. */

/* SELECT * FROM tabprodutos WHERE codigo_pro NOT ORDER BY descricao_pro DESC; */

/*11) Apresentar a quantidade de Unidades cadastradas. */
SELECT COUNT(DISTINCT codigo_uni) FROM tabUnidades;

/*12) Apresentar o total de variedades de Produtos
cadastrados. */
SELECT COUNT(DISTINCT codigo_pro) FROM tabProdutos;

/*13) Apresentar a quantidade total de Produtos
cadastrados. */
SELECT COUNT(codigo_pro) FROM tabProdutos;

/*14) Apresentar o valor total dos Produtos em estoque. */
SELECT SUM(qtd_estoque_pro*preco_custo_pro)
    AS TOTAL_VALOR_CUSTO, 
    SUM(qtd_estoque_pro*preco_venda_pro)
    AS TOTAL_VALOR_VENDAS 
    FROM tabProdutos;

/*15) Apresentar a média dos valores de custo dos Produtos. */
SELECT AVG(preco_custo_pro) FROM tabProdutos;

/*16) Apresentar a média da quantidade de Produtos em Estoque. */
SELECT AVG(qtd_estoque_pro) FROM tabProdutos;

/*17) Apresentar o valor de venda do Produto mais caro.*/
SELECT MAX(preco_venda_pro) FROM tabProdutos;

/*18) Apresentar o valor do Produto que possui o menor valor de custo. */
SELECT MIN(preco_venda_pro) FROM tabProdutos;

/*19) Apresentar a maior quantidade de um mesmo Produto em estoque. */
SELECT qtd_estoque_pro AS QTD, descricao_pro FROM tabProdutos ORDER BY QTD DESC LIMIT 1;

/*20) Apresentar a menor quantidade mínima permitida no estoque. */
SELECT qtd_minima_pro, descricao_pro FROM tabProdutos ORDER BY qtd_minima_pro ASC LIMIT 1;



SELECT * FROM tabCategorias;
SELECT * FROM tabMarcas;
SELECT * FROM tabUnidades;
SELECT * FROM tabProdutos;









