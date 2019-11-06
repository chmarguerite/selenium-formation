#language: fr

Fonctionnalité: Gestion des employés

	Contexte: Connexion avec un profil administrateur*
		Etant donné je lance Orange HRM
		Et je me connecte avec les identifiants "admin":"Selenium&2018"
		Et je suis sur la page "Tableau de Bord"
		
  Scénario: Ajouter un employé avec un identifiant de connexion
    Etant donné je navigue à la liste des employés
    Et je clique sur Ajouter
    Quand je saisis "un prénom" dans le champ "Prénom"
    Et je saisis "une famille" dans le champ "Nom"
    Quand je coche "Créer détails de connexion"
    Alors les champs suivants sont affichés
     | Champ 							|
     | Nom d'utilisateur	| 
     | Mot de passe 			|
    Et le statut est Actif par défaut
    Quand je saisis un nom d'utilisateur aléatoire
    Et je saisis "Selenium&2018" dans le champ "Mot de passe"
    Et je confirme le mot de passe
    Et je clique sur "Sauvegarder"
    Alors je suis sur la fiche de l'employé "un prénom une famille"