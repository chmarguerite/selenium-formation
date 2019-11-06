#language: fr
Fonctionnalité: Gestion du panier d'achat
  En tant que visiteur du site, je dois pouvoir gérer dans un panier virtuel les articles à acheter

  Contexte: Articles référencés
    Etant donné je suis l'utilisateur "John Smith"
    Etant donné les articles suivants sont référencés
      | référence   |   article      | prix unitaire | stock |
      | XXX-001     |   Iphone XR    | 800.0         | 10    |
      | XXX-002     |   TV LED       | 200.0         | 1     |
      | XXX-003     |   Un truc      | 10.0          | 0     |
      | XXX-004     |   Samsung A3   | 700.0         | 10    |


  Scénario: Ajouter un article à mon panier vide
    Etant donné mon panier est vide
    Quand j'ajoute une quantité de 1 de l'article "Iphone XR"
    Alors le prix total de mon panier est 800
     Et le nombre d'articles de mon panier est 1


#  Scénario: Ajouter un article à mon panier non vide
#    Etant donné mon panier contient les articles suivants
#     | article | quantité |
#     | TV LED  | 1        |
#    Quand j'ajoute une quantité de 2 de l'article "Samsung A3"
#    Alors mon panier affiche les informations suivantes
#     | Nombre articles  | 3    |
#    | Prix total       | 1600 |


  Scénario: Ajouter un article en rupture de stock
    Etant donné mon panier est vide
    Quand j'ajoute une quantité de 1 de l'article "Un truc"
    Alors mon panier reste vide
    Et mon panier affiche le message "Article en rupture de stock"
    Et le prix total de mon panier est 0

  Plan du scénario: Ajouter un article à mon panier
    Quand j'ajoute une quantité de <quantité> de l'article "<article>"
    Alors mon panier affiche les informations suivantes
      | Nombre articles  | <nombre articles> |
      | Prix total       | <prix total>      |

    Exemples:
     |   article      | quantité | nombre articles | prix total |
     |   Iphone XR    | 2        | 2               | 1600.0     |
     |   TV LED       | 1        | 3               | 1800.0     |
     |   Samsung A3   | 1        | 4               | 2500.0     |