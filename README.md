En caso de querer utilizar una cuenta de aws ajena a la usada en este código seguir este paso adicional, si no es el caso saltarse el paso

Se debe acceder a los deployment backend-despacho-deployment.yaml, backend-ventas-deployment.yaml y frontend-deployment.yaml e intercambiar el id de aws del apartado image por la id de la cuenta que se desee usar (para referencia, el número usado actualmente es 022983448261)
 
Instrucciones de uso en caso de usar la misma cuenta

Primero, se sube el archivo "Script inicial aws.yaml" a un cloudformation de aws para crear una pila, teniendo también los nombres del LabEksClusterRole y el LabEksNodeRole, los cuales son necesarios para la creación de la pila.

Luego de creada la pila, se tiene que abrir la cloudshell y escribir este comando: "aws eks update-kubeconfig --region us-east-1 --name devopseks", esto actualiza el contexto de kubernetes y permitirá la correcta ejecución del CI/CD.

Tras esto, se deben actualizar los tokens de GitHub con los que nos otorga el laboratorio de aws.

Finalmente, se hace un push en el Branch main de GitHub y se debe esperar a que el workflow resuelva correctamente, en caso de hacerlo, volvemos a la cloudshell y escribimos este comando: "kubectl get svc -n tienda", haciendo eso aparecerá entre varias ips, el link con el que podremos acceder al frontend mediante la web en http. (se sugiere usar el navegador Edge para esto).

Si queremos meter datos y que estos se vean reflejados, usar estos comandos en la cloudshell

kubectl exec -it db-d98d547b9-tnzh7 -n tienda -- bash

mysql -u root -p

INSERT INTO venta (id_venta,direccion_compra,valor_compra,fecha_compra,despacho_generado) VALUES (1,'Av. Providencia 123',85000,'2026-07-10',false);
