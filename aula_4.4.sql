USE pedido_venda;

GRANT UPDATE ON pedido_venda.* TO 'algaworks'@'localhost';

SELECT * FROM pedido;

UPDATE pedido
	SET forma_pagamento = 'CARTAO DE CREDITO'
    WHERE forma_pagamento = ''
	  AND id <= 4;
      
