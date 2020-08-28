# language: en

Feature: Search games by name

  @gamesByRating
  Scenario: Filter games with rate 'M' and 'E'
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user selects the rate: M,E
      When the user search games by ratings
      Then 3 games will match
      And the names of these games are
      | NAME                       |
      | The Witcher 3: Wild Hunt   |
      | Super Smash Bros. Ultimate |
      | The Last of Us             |
      And the following message is displayed: 3 games were found.

