
--Consulta 1: Selecciona todos los restaurantes;
SELECT * FROM restaurantes;


-- Consulta 2: obtiene todos los pedidos realizados por un usuario específico
SELECT * FROM Pedido WHERE id_usuario = 002;

-- Consulta 3: Obtiene los elementos del menú de un restaurante específico
SELECT * FROM Elemento WHERE id_elemento IN (SELECT id_elemento FROM Restaurante WHERE id_restaurante = 1);
