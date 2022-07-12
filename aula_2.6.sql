USE pedido_venda;

CREATE TABLE produto (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    valor_unitario DECIMAL(10,2),
    quantidade_estoque INTEGER
) ENGINE=InnoDB;

CREATE TABLE item_pedido (
	pedido_id BIGINT,
    produto_id BIGINT,
    quantidade INTEGER,
    PRIMARY KEY (pedido_id, produto_ID),
    FOREIGN KEY (pedido_id)
		REFERENCES pedido(id),
    FOREIGN KEY (produto_id)
		REFERENCES produto(id)
) ENGINE=InnoDB;

INSERT INTO produto (nome, valor_unitario, quantidade_estoque)
	VALUES ('Cola Super', 20.50, 300);
    
INSERT INTO item_pedido (pedido_id, produto_id, quantidade)
	VALUES (3, 1, 2);
    
SELECT * FROM item_pedido;