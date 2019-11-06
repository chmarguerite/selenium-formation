#language:	fr
Fonctionnalité: Calcul du taux d'imposition
	En tant qu'utilisateur du site impots.gouv,
	je veux pouvoir connaître mon taux d'imposition exacte

Scénario: Simulation du taux d'imposition pour un revenu nul
    Etant donné que je suis imposable
	Et que mon revenu déclaré pour l'année 2018 est de 20000€
    Lorsque je simule mon imposition
    Alors mon taux d'impostion est de 2%
	Et le montant de mon imôt est de 400€
	
 Scénario: Simulation du taux d'imposition pour un bas revenu 
    Etant donné que je suis imposable
	Et que mon revenu déclaré pour l'année 2018 est de 20000€
    Lorsque je simule mon imposition
    Alors mon taux d'impostion est de 2%
	Et le montant de mon imôt est de 200€

Plan du scénario: Simulation du taux d'imposition pour un revenu moyen 
    Etant donné que je suis imposable
	Et que mon revenu déclaré pour l'année 2018 est de <revenu>€
    Lorsque je simule mon imposition
    Alors mon taux d'impostion est de 5%
	Et le montant de mon impôt est de <montant impôt>€
	
		
  Exemples:
  |	revenu	|	montant impôt	|
  |	20001	|		1000		|
  |	30000	|		1500		|
  |	35000	|		1750		|
  

  Plan du scénario: Simulation du taux d'imposition pour un haut revenu 
    Etant donné que je suis imposable
	Et que mon revenu déclaré pour l'année 2018 est de <revenu>€
    Lorsque je simule mon imposition
    Alors mon taux d'impostion est de 9%
	Et le montant de mon impôt est de <montant impôt>€
		
  Exemples:
  |	revenu	|	montant impôt	|
  |	35001	|		3150		|
  |	99999	|		9000		|
