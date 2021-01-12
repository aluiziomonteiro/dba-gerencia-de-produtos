create database gerenciamento_de_produtos;

use gerenciamento_de_produtos;

create table tabCategorias(
	codigo_cat int not null auto_increment,
    descricao_cat varchar(250),
    primary key(codigo_cat)
);

create table tabMarcas(
	codigo_mar int not null auto_increment,
    nome_mar varchar(250),
    primary key(codigo_mar)
);

create table tabUnidades(
	codigo_uni int not null auto_increment,
    descricao_uni varchar(250),
    primary key(codigo_uni)
);

create table tabProdutos(
	codigo_pro int auto_increment not null,
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