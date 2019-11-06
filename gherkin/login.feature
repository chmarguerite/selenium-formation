# language:	fr
#Author: Claude-Henri MARGUERITE
#Feature: Connexion
#	- Test connexion avec des identifiants valides

@login
Fonctionnalité: Connexion
  En tant qu’utilisateur non authentifié,
  Je dois pouvoir me connecter avec des identifiants valides
  Afin de protéger les données de l'application

Contexte: 
	Etant donné Je lance Dolibarr
  
  @1-Haute
  Scénario: Test connexion avec des identifiants valides
    Etant donné Je suis un utilisateur non authentifié	
  
    Lorsque  Je me connecte avec les identifiants suivants
    |	Login  | Mot de passe		  |	
    |	bsmith | dolibarr				  |	
    Alors Je suis connecté à Dolibarr
     Et Il est affiché "Espace accueil"

  @1-Haute
  Plan du Scénario: Test connexion avec des identifiants invalides
    Etant donné Je suis un utilisateur non authentifié	
 
    Lorsque  Je me connecte avec les identifiants <login>:<mot de passe>
    Alors Je suis un utilisateur non authentifié
     Et Il est affiché "<message>"
  
  Exemples:
  |	login				|	mot de passe	|	message											|
  |	bsmith				|					|	Identifiants login ou mot de passe incorrect	|
  |	bsmith				|	mauvaismdp 		|	Identifiants login ou mot de passe incorrect	|
  |	mauvaislogin		|	mauvaismdp 		|	Identifiants login ou mot de passe incorrect	|  

