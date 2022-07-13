USE pedido_venda;

ALTER TABLE pedido
	ADD COLUMN forma_pagamento VARCHAR(20) NOT NULL;
 
-- Deve gerar erro. forma_pagamento = NULL
INSERT INTO pedido (data_criacao, data_entrega, valor_total, cliente_id)
		VALUES (NOW(), '2014-08-25', 200, 1);
        
-- Inserção sem erro
INSERT INTO pedido (data_criacao, data_entrega, valor_total, cliente_id, forma_pagamento)
		VALUES (NOW(), '2014-08-25', 200, 1, 'DINHEIRO');

-- Nova coluna com valor padrão
ALTER TABLE pedido
	ADD COLUMN status VARCHAR(20) NOT NULL DEFAULT 'ORCAMENTO';

-- Removendo coluna
ALTER TABLE pedido
	DROP COLUMN status;
    
SELECT * FROM pedido;