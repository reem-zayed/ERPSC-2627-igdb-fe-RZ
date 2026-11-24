# Opdracht Fiori Elements voor ERP System Configuration

## Korte beschrijving

- Ik heb een **Fiori Elements app** gemaakt bovenop de CAP back-end van cap-igdb.
- In de app kan je studenten bekijken, toevoegen, aanpassen en verwijderen.
- Als je een student opent zie je zijn favoriete games, die kan je ook toevoegen en verwijderen.
- Als je op een game klikt zie je meer info over die game.

## Mappen en bestanden

| Bestand of map         | inhoud                                  |
| ---------------------- | --------------------------------------- |
| `app/studentfe/`       | de Fiori Elements app met de annotaties |
| `app/capabilities.cds` | draft, zoeken en filters                |
| `db/`                  | datamodel en testdata van cap-igdb      |
| `srv/`                 | de service van cap-igdb                 |
| `package.json`         | projectinstellingen                     |
| `_i18n/`               | Nederlandse foutmeldingen               |
| `README.md`            | deze uitleg                             |

## Starten

- Open een terminal in de projectmap en voer `npm install` uit.
- Start daarna met `cds watch`.
- (in VS Code kan je ook kiezen voor _**Terminal** > Run Task > cds watch_)
- Open http://localhost:4004/sap.fe.app.studentfe/index.html

De database draait in het geheugen. Bij elke herstart worden de gegevens opnieuw ingeladen uit `db/data`.

## Meer info

Meer info op https://cap.cloud.sap/docs/get-started/.
