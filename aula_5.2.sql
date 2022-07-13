USE pedido_venda;

SELECT * FROM pedido;

SELECT forma_pagamento, SUM(valor_total) total_vendas
	FROM pedido
    GROUP BY forma_pagamento;

-- Função date() remove a hora para o select e poder agrupar por data
SELECT date(data_criacao), SUM(valor_total) total_vendas
	FROM pedido
    GROUP BY date(data_criacao);