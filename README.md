# Simulacro_SQL_3

## Enunciados

1. Muestra todas las piezas que sean de color rojo.
2. Muestra todos los proveedores que estén ubicados en la cuidad de 'Madrid'.
3. Muestra el nombre de la pieza más pesada.
4. Muestra el nombre del proveedor que suministra la mayor cantidad de piezas diferentes.
5. Saca todos los proveedores que suministren al menos una pieza de color azul.
6. Visualiza el nombre de la pieza más ligera que es suministrada por el proveedor 'Proveedor A'.
7. Saca el nombre del proveedor que suministra la pieza más pesada.
8. Muestra todas las piezas que sean suministradas por proveedores de la ciudad de 'Barcelona'.
9. Muestra el nombre del proveedor que suministra la mayor cantidad de piezas de color verde.
10. Muestra el nombre de la pieza más pesada que es suministrada por un proveedor de la ciudad de 'Valencia'.

## Mi soluciones

1. SELECT piezas.nombre_pieza FROM piezas WHERE color = "rojo";

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/a74bc0f4-0a5f-4e95-a0f3-e96caac4901d)

2. SELECT nombre_proveedor FROM proveedores WHERE ciudad_proveedor = "Madrid";

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/2bcf9918-6561-4a3d-b9d3-cb3e2945a2db)

3. SELECT nombre_pieza FROM piezas ORDER BY peso DESC LIMIT 1;

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/bfb6d54b-f58f-490a-b332-f31fa878ba32)

4. SELECT nombre_proveedor FROM proveedores INNER JOIN piezas ON proveedores.id_proveedor = piezas.id_proveedor GROUP BY piezas.id_proveedor DESC LIMIT 1

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/11918607-bcf5-4a28-9f21-7a18b2b0c4c8)

5. SELECT DISTINCT nombre_proveedor FROM proveedores INNER JOIN piezas ON proveedores.id_proveedor = piezas.id_proveedor WHERE piezas.color= "azul";

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/99ee1be7-987a-4a36-aeaa-cb82d945e6a8)

6. SELECT nombre_pieza FROM piezas INNER JOIN proveedores ON piezas.id_proveedor = proveedores.id_proveedor WHERE proveedores.nombre_proveedor = 'Proveedor ORDER BY piezas.peso LIMIT 1;

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/1dafd7be-f7df-4cf8-8802-56888c1d3d6b)

7. SELECT nombre_proveedor FROM proveedores INNER JOIN piezas ON proveedores.id_proveedor = piezas.id_proveedor ORDER BY piezas.peso DESC LIMIT 1;

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/a2ff4686-1586-4a93-98f5-b7721b674c4f)

8. SELECT DISTINCT nombre_pieza FROM piezas INNER JOIN proveedores ON piezas.id_proveedor = proveedores.id_proveedor WHERE proveedores.ciudad_proveedor = "Barcelona";

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/8825cd8e-63f1-4801-88a8-930ae2dee90e)

9. SELECT nombre_proveedor FROM proveedores 
INNER JOIN piezas ON proveedores.id_proveedor = piezas.id_proveedor WHERE color = "Verde" GROUP BY piezas.id_proveedor ORDER BY COUNT(PIEZAS.id_pieza)DESC LIMIT 1;

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/12029c60-5420-4dd4-947b-e8334b074160)

10. SELECT nombre_pieza FROM piezas  INNER JOIN proveedores ON piezas.id_proveedor = proveedores.id_proveedor WHERE proveedores.ciudad_proveedor = "Valencia" GROUP BY peso DESC LIMIT 1;

![image](https://github.com/ToniRiutort/Simulacro_SQL_3/assets/104781981/64349576-6873-4e40-9197-c8681dbd33aa)
