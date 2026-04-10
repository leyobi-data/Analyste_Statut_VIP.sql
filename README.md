# NewRepo project data sql
ceci n'est pas un projet à part entière mais juste un ensemble de taches souvent demandés en Entreprise .<br>
<br>
Cette partie se fait sur l'outil SQL SERVER 2025 accompagné de son interface SSMS22. <br>
<br>
La base de données est celle fournir par Microsoft 'AdventureWorksLT2025'.<br>
<br>
La suite de ce projet ne sera qu'un ensemble de tache souvent demandé par les entreprises et vous pourrez entrevoir les script sql et les rsultats <br>
<br>
<h3><b>1. CAS PRATIQUE : Calculateur de remise de fidélité </b></h3><br>
Dans le but de vérifier si une commande fait partir des VIP , l'entreprise AdventureWorks de faire une Analyse des achats de ses clients afin des les classes pour d'éventuelles remises .<br>

Pour ce premier cas on a créer un script SQL pour vérifier si les achats du client correspondant à l'ID achat 71774 est VIP ou non et le résulta peut se constater juste en dessous du code .<br>
Voici l'image du resultat affiché par SQL apres avoir exécuté le code<br>
  <p align='center'>
    <img src="NewRepo/resultat_ligneventes1.png" alt="Capture SSMS montrant le résultat" width="600">
  </p>
  <br>
  On s'est amusé à tester avec notre ID et le résultat est bien toutjours satisfaisant . <br>
  Ce model est une programmation via outil Tsql pour créer une macgine intélligente qui fournit pour une un nombre important de variable un résultat imédiat , ceci pour faciliter la prise de déscision de l'entreprise .<br>
  <br>
 <b><h3>Cas Pratique : Automatisation de la Gestion des Stocks (T-SQL)</h3></b><br>
​Dans ce module, j'ai développé un script de programmation procédurale en T-SQL permettant d'automatiser le contrôle des stocks pour l'entreprise AdventureWorks.<br>
​🎯 Objectif<br>
​L'objectif est de créer un système d'alerte intelligent qui identifie automatiquement si un produit nécessite un réapprovisionnement en fonction d'un seuil critique défini.
​🛠️ Notions techniques utilisées :<br>
​Variables dynamiques : Utilisation de DECLARE pour stocker des ID produits et des seuils de sécurité.<br>
​Logique conditionnelle (IF...ELSE) : Mise en place de structures de décision pour classifier l'état des stocks.<br>
​Gestion des données manquantes : Utilisation de IS NULL pour assurer la fiabilité du script face aux données incomplètes.<br>
​Conversion de types : Utilisation de CAST pour générer des messages de rapport personnalisés et lisibles.<br>
​📊 Résultat<br>
​Le script extrait en temps réel les informations de la base de données et affiche instantanément un diagnostic (Stock suffisant / Alerte réapprovisionnement), facilitant ainsi la prise de décision pour les gestionnaires d'entrepôt.<br>
L'image suite montre le code effectué sur SSMS
<p align='center'>
  <img src="NewRepo\Cas2.png" alt="Capture de SMS pour visualisation des résultats" width="600">
</p>

