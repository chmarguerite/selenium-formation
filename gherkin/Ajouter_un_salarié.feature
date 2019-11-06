#language: fr

Fonctionnalit�: Gestion des employ�s

	Contexte: Connexion avec un profil administrateur*
		Etant donn� je lance Orange HRM
		Et je me connecte avec les identifiants "admin":"Selenium&2018"
		Et je suis sur la page "Tableau de Bord"
		
  Sc�nario: Ajouter un employ� avec un identifiant de connexion
    Etant donn� je navigue � la liste des employ�s
    Et je clique sur Ajouter
    Quand je saisis "un pr�nom" dans le champ "Pr�nom"
    Et je saisis "une famille" dans le champ "Nom"
    Quand je coche "Cr�er d�tails de connexion"
    Alors les champs suivants sont affich�s
     | Champ 							|
     | Nom d'utilisateur	| 
     | Mot de passe 			|
    Et le statut est Actif par d�faut
    Quand je saisis un nom d'utilisateur al�atoire
    Et je saisis "Selenium&2018" dans le champ "Mot de passe"
    Et je confirme le mot de passe
    Et je clique sur "Sauvegarder"
    Alors je suis sur la fiche de l'employ� "un pr�nom une famille"