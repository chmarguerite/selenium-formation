# language:	fr
#Author: Claude-Henri MARGUERITE
#Feature: Connexion
#	- Test connexion avec des identifiants valides

@demo
Fonctionnalité: Création tiers
  En tant qu’utilisateur  authentifié,
  Je dois pouvoir créer un client
  Afin de gérer les informations commerciales
Contexte: 
	Etant donné Je suis connecté en tant que commercial
  
  @1-Haute
  Scénario: Test création client
    Etant donné J'accède à la Page des Tiers
    Lorsque  Je crée  un tiers de type Client
    Alors un nouveau client est disponible
