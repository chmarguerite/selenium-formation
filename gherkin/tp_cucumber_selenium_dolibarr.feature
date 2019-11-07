#language: fr
Fonctionnalité:  Gestion des tiers
  En tant que commercial
  je veux pouvoir gérer les différents clients

  Contexte: Connexion avec un profil commercial
    Etant donné je lance Dolibarr
    Et je me connecte avec le profil suivant
    | Login     | jsmith     |
    | Password  | Selenium&2018 |
    
   Scénario: Création d'un produit
    Etant donné je clique sur le menu "Produits | Services"
    Quand je clique sur le lien "Nouveau produit"
    Quand je saisis une référence pour le champ Ref
     Et je saisis "Un libellé" pour le champ Libellé
     Et je sélectionne "Hors achat" pour la liste Etat Achat
     Et je saisis "600" pour le champ Prixde vente
     Et je clique sur le bouton Créer
    Alors je suis sur la Fiche du produit référencé
    Et je clique sur le lien "Prix de vente"
    Et le prix de vente affiché est "600,00 HT"
    
  Scénario: Création de tiers
    Etant donné je clique sur le lien "Tiers"
    Quand je clique sur le lien "Nouveau tiers"
    Alors la valeur de la liste Etat est "Ouvert"
    Et la valeur de la liste Pays est "France"
    Quand je saisis "SARL BOBO" pour le champ Nom du tiers
     Et je sélectionne "Prospect" pour la liste Prospect / Client
      Et je sélectionne "Non" pour la liste Fournisseur
      Et je clique sur le bouton Créer tiers
    Alors je suis sur la fiche du tiers
    Et les valeurs suivantes sont affichées
       | SARL BOBO | France |
    Et je récupère le code client

  Plan du scénario: Création de contact
    Etant donné je clique sur le lien "Tiers"
    Et je clique sur le lien "Nouveau Contact/Adresse"
    Quand je renseigne les informations du contact
    | Nom         | Adresse                | Code Postal | Ville |
    | <nom>  | 2 rue de la république | 75000       | Paris |
    Et je clique sur le bouton Ajouter
    Alors le contact est Actif
    Exemples: 
    | nom 				|
    | Paul SMith  |
    | Rosa Dupond |

    Scénario: Création d'une proposition
    Etant donné j'affiche la fiche du tiers "SARL BOBO"
    Quand je clique sur le lien "Prospect"
    Et je clique sur le bouton "Créer une proposition"
    Alors je suis sur le formulaire "Nouvelle proposition commerciale"
    Et la valeur par défaut du champ Date est la date du jour
    Quand je clique sur le bouton "Créer brouillon"
    Et j'ajoute une ligne produit prédéfini
    Et je sélectionne "XXXX-1111 - Un produit - 600 € HT" 
    Et j'ajoute ce produit
    Alors le montant TTC est "720,00 €"    