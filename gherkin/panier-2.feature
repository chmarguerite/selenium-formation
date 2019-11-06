# language:	fr
@Panier
Fonctionnalité:  Gestion du panier d'un site de eCommerce
	En tant que visiteur du site e-Commerce,
	je veux pouvoir sélectionner des produits dans un panier virtuel
	afin de préparer une liste de produits que je pourrais commanderen toute sérénité.

Contexte: 
	Etant donné que je suis un visiteur du site connecté

  @1-Haute: Scénario nominal
  Scénario: Ajouter un article de quantité 1
    Etant donné que mon panier est vide	
    Lorsque  j'ajoute une quantité de "1" de l'article "iphone 8" 
    Alors mon panier affiche le nombre de produit "1"
	Et l'article "iphone 8" est dans mon panier

  @1-Haute: Scénario limite
  Scénario: Test ajout un article de quantité nulle
    Etant donné que mon panier est vide	
    Lorsque  j'ajoute une quantité de "0" de l'article "iphone 8" 
    Alors je suis informé que "la quantité est nulle"
	Et l'article "iphone 8" n'est pas dans mon panier
	
  @1-Moyenne
  Scénario: Validation d'un panier vide
    Etant donné que je viens d'accéder au site
    Lorsque  j'affiche le panier
    Alors le panier est vide
	
  @1-Moyenne
  Scénario: Test de la validation d'un panier vide
    Etant donné que mon panier est vide	
    Lorsque  je valide mon panier
    Alors je suis informé que "mon panier est vide"
	
  @1-Haute


  @1-Haute
  Scénario: Test ajout un article de quantité négative
    Etant donné que mon panier est vide	
    Lorsque  j'ajoute une quantité de "-1" de l'article "iphone 8" 
    Alors je suis informé que "la quantité est incorrecte"
	Et l'article "iphone 8" n'est pas dans mon panier
	

	@1-Haute
  Scénario: Test ajout un article de quantité 4
    Etant donné que mon panier est vide	
    Lorsque  j'ajoute un article
	|	article			|	quantité	|
	|	manettes		|	4			|
    Alors mon panier affiche le nombre de produit "4"
	Et l'article suivant est dans mon panier 
	|	article			|	quantité	|
	|	manettes		|	4			|
	

  Plan du Scénario: Test ajout plusieurs articles avec des quantités différentes
    Etant donné que mon panier est vide	
    Lorsque  j'ajoute une quantité de "<quantité>" de l'article "<article>" 
    Alors mon panier affiche le nombre de produit "<nombre d'articles>"
	Et l'article "<article>" est dans mon panier
	
  Exemples:
  |	article		|	quantité	|	nombre d'articles	|
  |	iphone 8	|		1		|	      1				|
  |	cable X		|		2		|	      3				|
  |	samsung S9	|		1		|	      4				|
  

  Scénario: Test ajout un article en rupture de stock
    Etant donné que mon panier est vide
	Et que l'article "iphone" est épuisé
    Lorsque  j'ajoute une quantité de "1" de l'article "iphone 8" 
    Alors mon panier affiche que "l'article est en rupture de stock"


  Scénario: Test ajout un article de quantité supérieure au stock disponible
    Etant donné que mon panier est vide
	Et que l'article "trucmachinchose" a une quantité de "2"
    Lorsque  j'ajoute une quantité de "3" de l'article "trucmachinchose" 
    Alors mon panier affiche que "la quantité demandée est supérieure au stock"
	Et l'article est dans mon panier avec une quantité de "2"


