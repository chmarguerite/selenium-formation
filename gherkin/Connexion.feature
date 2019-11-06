#language: fr
@Connexion
Fonctionnalité: Conexion

  Plan du scénario: Connexion avec des logins valides
    Etant donné je lance Dolibarr
    Quand je saisis "<login>" pour le champ Login
      Et je saisis "<password>" pour le champ Password
      Et je clique sur le bouton Login
    Alors le titre de la page est "Accueil"
    Et il est affiché le lien "Mon tableau de bord"
    Et l'utilisateur connecté est "<nom>"
    Et je clique sur Déconnexion

    Exemples:
    | login   |   password      | nom   |
    | jsmith  |   Selenium&2018 | John  |
    | lsmith  |   Selenium&2018 | Laura |
    | bsmith  |   Selenium&2018 | Bob   |



