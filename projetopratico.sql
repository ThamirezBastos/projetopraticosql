create database fullstackeletro;

create table fullstackeletro.produtos(
id_produto int not null primary key auto_increment,
nome_produto varchar(60) not null,
descrição_produto varchar(100) not null,
preço_inicial float not null,
preço_desconto float not null,
nomeimagem varchar(60) not null unique,
marca varchar(20) not null);


insert into produtos values
(default, 'Geladeira', 'Frost Free Brastemp Side Inverse 540 Litros', 6389.00, 5019.00, 'geladeira_brastemp.jpg', 'Brastemp'),
(default, 'Geladeira', 'Frost Free Brastemp Branca 375 Litros', 2068.6, 1910.9, 'geladeira_brastemp_branca.jpg', 'Brastemp'),
(default, 'Geladeira', 'Frost Free Consul Prata 340 Litros', 2199.99, 2069.00, 'geladeira_consul.jpg', 'Consul'),
(default, 'Fogão', '4 Bocas Consul Inox com Mesa de Vidro', 1299.99, 1129.00, 'fogao_inox.jpg', 'Consul'),
(default, 'Fogão', '4 Bocas Atlas Monaco com Acendimento Automático', 699.99, 519.70, 'fogao_monaco.jpg', 'Monaco'),
(default, 'Micro-ondas', 'Consul Prateado 32L Inox 220v', 589.99, 409.88, 'microondas_consul.jpg', 'Consul'),
(default, 'Micro-ondas', 'Philco Inox 25L Espelhado 220v', 508.70, 464.00, 'microondas_espelhado.jpg', 'Philco'),
(default, 'Micro-ondas', 'Eletrolux 20L Branco 127v', 459.99, 436.05, 'microondas_eletrolux.jpg', 'Eletrolux'),
(default, 'Lava-louças', 'Eletrolux Inox com Painel Blue Touch', 3599.00, 2799.00, 'lavalouca_eletrolux.jpg', 'Eletrolux'), 	
(default, 'Lava-louças', 'Brastemp Compacta Branca 127V', 1970.59, 1730.61, 'lavalouca_brastemp.jpg', 'Brastemp'),
(default, 'Lava-roupas', 'Brastemp 11Kg Turbo Perfomance', 1699.00, 1214.10, 'lavadora_brastemp.jpg', 'Brastemp'),
(default, 'Lava-roupas', 'Philco Lava&Seca 12Kg', 2399.00, 2179.90, 'lavadora_philco.jpg', 'Philco');

select * from produtos;

create table pedidos(
    id_cliente int not null primary key auto_increment,
    nome_cliente varchar(80) not null,
    endereco varchar (100) not null, 
    telefone varchar(20) not null unique,
    nome_produto varchar(60) not null,
    descricao_produto varchar(100) not null,
    valor_unitario decimal(8,2) not null,
    quantidade int not null,
    valor_total decimal(8,2)
);

insert into pedidos values
(default, 'João', 'rua das flores','(11)1111-1111','Geladeira', 'Frost Free Brastemp Side Inverse 540 Litros', 5019.00 , 2, default),
(default, 'Maria', 'rua das rosas','(51)2222-2222', 'Fogão','4 Bocas Consul Inox com Mesa de Vidro', 1129.00 , 3, default),
(default, 'Carla', 'rua das tulipas','(13)3333-3333', 'Lava-louças','Eletrolux Inox com Painel Blue Touch', 2799.00 , 1, default),
(default, 'Fernanda', 'rua das margaridas','(14)4444-4444', 'Micro-ondas','Eletrolux 20L Branco 127v', 436.05 , 4, default);

UPDATE pedidos SET valor_total = (valor_unitario * quantidade);

SELECT * FROM pedidos;