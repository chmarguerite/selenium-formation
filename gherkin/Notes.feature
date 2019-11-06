#language: fr
Fonctionnalité: Gestion des notes
    En tant qu'examinateur, je dois pouvoir gérer les notations d'un élève

Scénario: Succès à l'examen
Etant donné j'ai un élève nommé "Jack London"
Quand cet élève a obtenu une note moyenne de 15 à l'examen
Alors cet élève a réussi l'examen

Scénario: Echec à l'examen d'un élève
Etant donné j'ai un élève nommé "Jack London"
Quand cet élève a obtenu une note moyenne de 9 à l'examen
Alors cet élève a échoué l'examen

Plan du scénario: Résultat correct de plusieurs élèves
Etant donné j'ai un élève nommé "<nom>"
Quand cet élève a obtenu une note moyenne de <note> à l'examen
Alors cet élève a réussi l'examen

Exemples:
|	nom				|	note	|
|	Homer Simpson	|	15		|
|	Bart Simpson	|	12		|
|	Maguy Simpson	|	11		|
|	Lisa Simpson	|	20		|

Scénario: Note moyenne des modules d'un élève
Etant donné j'ai un élève nommé "Jack London"
Quand cet élève a obtenu les notes suivantes
|	Java		|	15		|
|	Cucumber	|	16		|
|	Selenium	|	14		|
Alors cet élève a une note moyenne de 15


Scénario: Note moyenne des modules d'un élève
Etant donné j'ai un élève nommé "Jack London"
Quand cet élève a obtenu les notes
| module        | note      |
|	Java		|	8		|
|	Cucumber	|	8		|
|	Selenium	|	8		|
Alors cet élève a une note moyenne de 8

