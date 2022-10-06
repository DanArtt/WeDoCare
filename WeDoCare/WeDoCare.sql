create database we_do_care;

create table produtos(
	id_produto int not null auto_increment,
    primary key(id_produto),
    nome_produto varchar(30),
    descricao_produto varchar(100),
    valor_produto int(3.2),
    detalhe_produto varchar(150),
    Quantidade_produto int(2)
);

create table usuario(
	id_usuario int not null auto_increment,
    primary key(id_usuario),
    nome_usuario varchar(50),
    genero_usuario varchar(10),
    civil_usuario varchar(10),
    profissao_usuario varchar(40),
    renda_usuario  float(6,2),
    etinia_usuario varchar(15),
    data_usuario date,
    cpf_usuario char(14),
    rg_usuario char(12),
    cep_usuario char(9),
    endereco_usuario varchar(100),
    contato_usuario char(14),
    email_usuario varchar(100),
    senha_usuario varchar(15),
    descricao_necessidade varchar(40)
);

create table categorias(
	id_categoria int not null auto_increment,
    primary key(id_categoria),
    FOREIGN KEY (id_categoria) references produtos(id_produto),
    fornecedor_categoria varchar(30),
    modelo_categoria varchar(30),
    material_categoria varchar(30)
);