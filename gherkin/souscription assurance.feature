#language:	fr
Fonctionnalité: Conditions souscription à l'assurance
	En tant que client de notre compagnie,
	je veux pouvoir connaître les conditions de souscription à une assurance

Scénario: Refus de souscription faute d'accidents trop importants
    Etant donné que j'ai eu 5 accidents durant les 3 dernières années
    Lorsque je souscris en ligne
    Alors j'obtiens un refus de souscription
		Et le système me redirige sur SOS Malus

Scénario: souscription à un taux standard
    Etant donné que j'ai eu 0 accident durant les 3 dernières années
	Et que mon véhicule n'est pas de luxe
	Et que mon véhicule a 5 ans
    Lorsque je souscris en ligne
    Alors j'obtiens un accord de souscription
		Et le système me calcul un taux standard
