# medheadDatabase

Les étapes d'installation de la base de donnée: <br>
<ol>
  <li> Télécharger et installer Docker https://www.docker.com </li>
 <li> Récupérer l'image docker de Microsoft SQL Server en utilisant `docker pull mcr.microsoft.com/mssql/serv` </li>
<li> Créer un réseau docker qui va contenir les conteneurs de la base de données, la API et le front end en utilisant `docker network create —driver bridge <nom_du_reseau>` </li>
<li> Cloner ce dépôt git qui contient le script SQL des tables de et donées initiales de l'application `git pull https://github.com/MohamedBdeir/medheadDatabase.git` </li>
<li> Dans le répertoire git récupéré, générer le conteneur docker à partir de l'image sql server. La commande requiert d'indiquer un mot de passe pour l'instance de SQL SERVER. Préciser le réseau, le numéro de port, le nom du conteneur et utiliser le répetoire courant comme volume partagé avec le conteneur sur le chemin /scripts. Il suffit de remplacer les valeurs dans la commande qui suit  
`docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<Votre_mot_de_passe>" -p 1433:1433 --network <nom_du_reseau> --name sql_server -v %cd%:/scripts -d mcr.microsoft.com/mssql/server:2022-latest` </li>
<li> Accéder à une instance de sqlcmd dans le conteneur docker en utilisant `docker exec -it <nom_du_conteneur> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <mot_de_passe_sql>`  </li>
<li> Dans l'invite de commande qui se lance créer la base de données avec `Create database MEDHEAD` puis valider  l'aide de  `Go` </li>
<li> Exécuter le script qui va créer les tables et les remplir avec les données `docker exec -it <nom_du_conteneur> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <mot_de_passe_sql> -i /scripts/data.sql` </li>
<li> Récupérer l'addresse IP du conteneur crée dans le réseau avec `Docker inspect <nom_du_reseau>` </li>
