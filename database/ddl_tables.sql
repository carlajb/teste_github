/* CRIACAO DO NOVO ESQUEMA  */
create database cake;
use  cake;

/* CRIACAO DAS TABELAS */
CREATE TABLE cake.tbl_produtos (
  cod_produto INT NOT NULL AUTO_INCREMENT,
  nome_produto VARCHAR(45) NOT NULL,
  descicao VARCHAR(45) NOT NULL,
  preco VARCHAR(45) NOT NULL,
  nome_imagem VARCHAR(45) NOT NULL,
  PRIMARY KEY (cod_produto));

CREATE TABLE cake.tbl_cliente (
  cod_cliente INT NOT NULL AUTO_INCREMENT,
  nome_cliente VARCHAR(100) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  numero_telefone INT NOT NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY (cod_cliente));
    
  CREATE TABLE cake.tbl_paedidos (
  cod_pedido INT NOT NULL,
  nome_produto VARCHAR(45) NOT NULL,
  valor_unitario DECIMAL(6,2) NOT NULL,
  quantidade INT NOT NULL,
  valor_total DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (cod_pedido));

ALTER TABLE cake.tbl_pedidos 
ADD CONSTRAINT fk_cod_cliente
  FOREIGN KEY (cod_cliente)
  REFERENCES cake.tbl_cliente (cod_cliente)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE cake.tbl_produtos  CHANGE COLUMN preco preco DECIMAL(6,2) NOT NULL ;
ALTER TABLE cake.tbl_produtos CHANGE COLUMN descicao descricao VARCHAR(45) NOT NULL ;


/*  INSERT DOS REGISTROS NAS TABELAS */
insert into cake.tbl_produtos (cod_produto,nome_produto, descricao, preco, nome_imagem)  values(1,'Bolo de Cenoura com Chocolate','descricao do produto: cenoura,farinha de trigo,fermento, acucar e chocolate',10.00,'./imagens.html/bolocenoura.jpg') ;
insert into cake.tbl_produtos (cod_produto,nome_produto, descricao, preco, nome_imagem)  values(2,'Bolo de Coco','Leite de coco, coco ralado, ovo, manteira,farinha de trigo e fermento',10.00,'./imagens.html/bolococo.jpg') ;
insert into cake.tbl_produtos (cod_produto,nome_produto, descricao, preco, nome_imagem)  values(3,'Bolo de Laranja com chocolate','Farinha de trigo, laranja, acucar, ovos e fermento',10.00,'./imagens.html/bololaranja.jpg') ;
insert into cake.tbl_produtos (cod_produto,nome_produto, descricao, preco, nome_imagem)  values(4,'Bolo de Maracuja','Maracuja, farinha de aveia, acurcar fermento e ovos',10.00,'./imagens.html/bolomaracuja.jpg') ;
insert into cake.tbl_produtos (cod_produto,nome_produto, descricao, preco, nome_imagem)  values(5,'Bolo de Limão','Limao, farinha de aveia, ovos, fermento e acucar',10.00,'./imagens.html/bololimao.jpg') ;
commit;

INSERT INTO CAKE.tbl_cliente (COD_CLIENTE, NOME_CLIENTE, ENDERECO, NUMERO_TELEFONE, EMAIL) VALUES (001, 'Joaquim da Formosa', 'Rua dos Tupiniquins', 99945474,'joaquimboleiro@hotmail.com');
INSERT INTO CAKE.tbl_cliente (COD_CLIENTE, NOME_CLIENTE, ENDERECO, NUMERO_TELEFONE, EMAIL) VALUES (002, 'Amanda Coracao', 'Avenida Liberdade', 453648977,'amandaheartbeating@gmail.com.br');
INSERT INTO CAKE.tbl_cliente (COD_CLIENTE, NOME_CLIENTE, ENDERECO, NUMERO_TELEFONE, EMAIL) VALUES (003, 'Fernando Holiday', 'Avenida dos que nao foram', 4547521,'Fernandoferiado@hotmail.com');
INSERT INTO CAKE.tbl_cliente (COD_CLIENTE, NOME_CLIENTE, ENDERECO, NUMERO_TELEFONE, EMAIL) VALUES (004, 'Juliana Pascoal', 'Rua Maria Paula', 461167447,NULL);
INSERT INTO CAKE.tbl_cliente (COD_CLIENTE, NOME_CLIENTE, ENDERECO, NUMERO_TELEFONE, EMAIL) VALUES (005, 'Guilherme Boulos', 'Avenida Paulista', 12457745,'takeyourhouse@gmail.com');
INSERT INTO CAKE.tbl_cliente (COD_CLIENTE, NOME_CLIENTE, ENDERECO, NUMERO_TELEFONE, EMAIL) VALUES (006, 'Gisele bündchen', 'Avenida Copacabana', 485477454,NULL);
commit;

INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(1,'Bolo de Cenoura com Chocolate',10.00,3,30,1,1);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(2,'Bolo de Cenoura com Chocolate',10.00,2,20,1,4);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(3,'Bolo de Cenoura com Chocolate',10.00,5,50,1,3);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(4,'Bolo de Cenoura com Chocolate',10.00,1,10,1,1);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(5,'Bolo de Coco',10.00,2,20,2,6);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(6,'Bolo de Coco',10.00,3,30,2,1);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(7,'Bolo de Maracuja',10.00,4,40,4,5);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(7,'Bolo de Maracuja',10.00,1,10,4,1);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(9,'Bolo de Limão',10.00,1,10,5,6);
INSERT INTO cake.tbl_pedidos(cod_pedido,nome_produto,valor_unitario,quantidade,valor_total,cod_produto,cod_cliente) VALUES(10,'Bolo de Limão',10.00,1,10,5,2);
COMMIT;

/*  PARA VISUALIZAR OS REGISTROS DAS TABELAS */ 
select * from cake.tbl_produtos;
select * from  cake.tbl_cliente; 
select * from tbl_pedidos;



