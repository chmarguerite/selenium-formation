# language:	fr
#Author: Claude-Henri MARGUERITE
#Feature: List of scenarios.
#	- Test de la création d'un tiers

@Tiers
Fonctionnalité: Gestion d'un tiers
  En tant que client connecté,
  Je dois pouvoir gérer les données des Tiers
  Afin de capitaliser les informations de nos contacts

Contexte: 
	Etant donné Je lance Dolibarr
  
  @1-Haute
  Scénario: Un commercial devrait pouvoir créer un tiers
    Etant donné Je suis un commercial authentifié	     
    Lorsque  Je crée un nouveau tiers avec les informations suivantes
    |	Nom du tiers  | Prospect / Client  |	Fournisseur	|	
    |	BPI France		| Client						 |	Non					|
    Alors Le nouveau tiers est activé avec un identifiant
     Et Il est possible de créer une proposition commerciale
 
