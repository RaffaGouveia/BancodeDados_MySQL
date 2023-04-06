CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtosecommerce(
	id BIGINT AUTO_INCREMENT,
    nome varchar(30),
    tipo varchar(20),
    preco DECIMAL(8,2),
    quantidade INT,
    
    PRIMARY KEY(id)
    
    );
    
    INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
    VALUE("computador","eletronico",2000.95,30);
    
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("mesa","movel",200.95,35);
     
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("cadeira","movel",150.95,27);
     
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("câmera","eletronico",450.95,20);
     
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("microne","eletronico",1200.95,10);
     
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("livro","entretenimento",99.95,15);
     
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("ventilador","eletrodomestico",300.95,29);
     
     INSERT INTO tb_produtosecommerce(nome, tipo, preco, quantidade)
     VALUE("faqueiro","utensilio",300.95,13);
    
    SELECT * FROM tb_produtosecommerce;
    
    SELECT * FROM tb_produtosecommerce WHERE preco > 500;
    
	SELECT * FROM tb_produtosecommerce WHERE preco < 500;
    
	UPDATE tb_produtosecommerce
    SET nome = "microfone"
    WHERE id = 7;
