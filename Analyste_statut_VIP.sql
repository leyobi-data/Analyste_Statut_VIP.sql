--CAS PRATIQUE [ Objectif: Créer un scrip qui vérifie si une ligne de commande spécifique mérite une mention "client VIP" basée sur le montnant .]
--Notons qu'on utilise la base AdventureWorksLT pour la manipumation des données

DECLARE @SalesOrderID int , @TotalLigne decimal(18,2) , @SeuilVIP decimal(18,2) ;
SET @SalesOrderID = 71774 ;
SET @SeuilVip = 1000;

SELECT @TotalLigne = [OrderQty]*[UnitPrice]
FROM [SalesLT].[SalesOrderDetail]
WHERE [SalesOrderID] = @SalesOrderID;

IF @TotalLigne IS NULL
BEGIN
	PRINT 'Aucune commande n" exite pour ce client';
END

IF @TotalLigne >= @SeuilVip 
BEGIN
	PRINT 'COMMANDE['+CAST(@SalesOrderID AS varchar)+']:'+ CAST(@TotalLigne AS varchar)+'$ ->'+'Commande VIP activée.';
END

ELSE
BEGIN
	PRINT 'COMMANDE['+CAST(@SalesOrderID AS varchar)+']:'+ CAST(@TotalLigne AS varchar)+'$ ->'+'Commande standard.';
END

`/* RESULTA DE L'EXECUTION:
COMMANDE[71774]:356.90$ ->Commande standard.

Heure de fin : 2026-04-10T09:10:22.9102217+01:00
*/
--On va s'amuser à fair[SalesOrderID]e un test avec l'ID d'un autre achet 

SELECT DISTINCT [SalesOrderID]
FROM [SalesLT].[SalesOrderDetail];
--On affiche les ID d'achat pour ensuite choisir un ID dans le lot par exemple 71796.

DECLARE @SalesOrderID int , @TotalLigne decimal(18,2) , @SeuilVIP decimal(18,2) ;
SET @SalesOrderID = 71796 ;
SET @SeuilVip = 1000;

SELECT @TotalLigne = [OrderQty]*[UnitPrice]
FROM [SalesLT].[SalesOrderDetail]
WHERE [SalesOrderID] = @SalesOrderID;

IF @TotalLigne IS NULL
BEGIN
	PRINT 'Aucune commande n" exite pour ce client';
END

IF @TotalLigne >= @SeuilVip 
BEGIN
	PRINT 'COMMANDE['+CAST(@SalesOrderID AS varchar)+']:'+ CAST(@TotalLigne AS varchar)+'$ ->'+'Commande VIP activée.';
END

ELSE
BEGIN
	PRINT 'COMMANDE['+CAST(@SalesOrderID AS varchar)+']:'+ CAST(@TotalLigne AS varchar)+'$ ->'+'Commande standard.';
END
/* RESULTAT SCRIPT: COMMANDE[71796]:1204.69$ ->Commande VIP activée.

Heure de fin : 2026-04-10T18:29:05.3140541+01:00 */

--On veut vérifier la disponibilité des produits dans le stock et affiché le résultat selon l'état de celui ci
DECLARE @ProductID Int , @stockActuel decimal(10,2), @Seuil decimal(10,2);
SET @ProductID = 973;
SET @Seuil = 3500;
--dans cette partie on suppose que la colonne  représente notre stock.

SELECT @StockActuel = [Weight]
FROM [SalesLT].[Product]
WHERE [ProductID] = @ProductID;

IF @StockActuel IS NULL 
BEGIN
	PRINT 'ETAT STOCK DU PRODUIT ['+CAST(@ProductID AS varchar)+']: AUCUNE INFORMATION DISPONIBLE POUR CE PRODUIT';
END

IF @StockActuel <= @Seuil
BEGIN
	PRINT 'ETAT STOCK DU PRODUIT ['+CAST(@ProductID AS varchar)+']:'+ CAST(@StockActuel AS varchar)+' --> ALERTE: Réapprovisionnement nécessaire pour le produit.';
END

ELSE
BEGIN
	PRINT 'ETAT STOCK DU PRODUIT ['+CAST(@ProductID AS varchar)+']:'+ CAST(@StockActuel AS varchar)+'--> Le STOCK est suffisant pour le produit.';
END
/* RESULTAT du programme: ETAT STOCK DU PRODUIT [707]: AUCUNE INFORMATION DISPONIBLE POUR CE PRODUIT
 

Heure de fin : 2026-04-10T20:27:54.1628604+01:00 
*/
--Il suffit qu'on prenne un autre produit pour faire le test , exemple @ProductID = 973

/*RESULTAT DU SCRIP: ETAT STOCK DU PRODUIT [973]:6962.61--> Le STOCK est suffisant pour le produit.

Heure de fin : 2026-04-10T20:31:54.9651641+01:00
*/
