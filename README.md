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
  ON va s'amuser à traiter un autre cas qui met en évidente la programmation avec T-SQL .<br>
  CONTEXTE: L' Entreprise AdventureworksLT veut automatiser la vérification de la disponibilité des produits pour éviter les ruptures de stock.La mision est d'écrire un SCRIP qui pourra afficher la disponibilité du stock selon l'état de celui-ci 
