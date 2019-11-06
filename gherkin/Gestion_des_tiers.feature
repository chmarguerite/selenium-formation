#language: fr
Fonctionnalité:  Gestion des tiers
  En tant que commercial
  je veux pouvoir gérer les différents clients

  Contexte: Connexion avec un profil commercial
    Etant donné je lance Dolibarr
    Et je me connecte avec le profil suivant
    | Login     | jsmith     |
    | Password  | Selenium&2018 |
@Tiers
  Scénario: Création de tiers
    Etant donné je clique sur le lien "Tiers"
    Quand je clique sur le lien "Nouveau tiers"
    Alors la valeur de la liste Etat est "Ouvert"
    Et la valeur de la liste Pays est "France"
    Quand je saisis "SARL BOBO" pour le champ Nom du tiers
     Et je sélectionne "Prospect" pour la liste Prospect / Client
      Et je sélectionne "Non" pour la liste Fournisseur
      Et je clique sur le bouton Créer tiers
    Alors je suis sur la Fiche client
    Et les valeurs suivantes sont affichées
       | SARL BOBO | France |
    Et je récupère le code client

  @Contact
  Scénario: Création de contact
    Etant donné je clique sur le lien "Tiers"
    Et je clique sur le lien "Nouveau Contact/Adresse"
    Quand je renseigne les informations du contact
    | Nom         | Adresse                | Code Postal | Ville |
    | Paul Smith  | 2 rue de la république | 75000       | Paris |
    Et je clique sur le bouton Ajouter
    Alors le contact est Actif
