# Reise-App

Eine Reise-App, die mit Flutter entwickelt wurde. Diese App ermöglicht es Benutzern, verschiedene Reisen und Ausflugsziele basierend auf Kategorien zu durchsuchen. Benutzer können Reisen als Favoriten markieren und Filter anwenden, um die angezeigten Reisen nach Jahreszeit und Familienfreundlichkeit zu filtern.

## Funktionen

- **Kategorien durchsuchen**: Benutzer können verschiedene Reisekategorien durchsuchen.
- **Reiseinformationen anzeigen**: Detaillierte Informationen zu jeder Reise, einschließlich Aktivitäten und Tagesprogramm.
- **Favoriten**: Reisen können als Favoriten markiert und in einem separaten Tab angezeigt werden.
- **Filter**: Anwenden von Filtern, um Reisen basierend auf Jahreszeit und Familienfreundlichkeit anzuzeigen.



## Datenmodelle

### Kategorie (`category.dart`)
- `id`: Eindeutige Kennung für die Kategorie.
- `title`: Titel der Kategorie.
- `imageUrl`: URL des Bildes, das die Kategorie repräsentiert.

### Reise (`trip.dart`)
- `id`: Eindeutige Kennung für die Reise.
- `categories`: Kategorien, zu denen die Reise gehört.
- `title`: Titel der Reise.
- `activities`: Aktivitäten, die während der Reise angeboten werden.
- `program`: Detailliertes Programm der Reise.
- `duration`: Dauer der Reise in Tagen.
- `season`: Jahreszeit, in der die Reise stattfindet (enum `Season`).
- `tripType`: Art der Reise (enum `TripType`).
- `isForFamilies`: Gibt an, ob die Reise familienfreundlich ist.
- `isInSummer`: Gibt an, ob die Reise im Sommer stattfindet.
- `isInWinter`: Gibt an, ob die Reise im Winter stattfindet.

## Bildschirmübersicht

### Hauptbildschirm
Zeigt eine Liste von Kategorien, die der Benutzer durchsuchen kann.

![Hauptbildschirm](screenshots/main_screen.png)

### Kategorienbildschirm
Zeigt die Reisen, die zu einer bestimmten Kategorie gehören.

![Kategorienbildschirm](screenshots/categories_screen.png)

### Detailbildschirm
Zeigt die detaillierten Informationen zu einer ausgewählten Reise, einschließlich Aktivitäten und Tagesprogramm.

![Detailbildschirm](screenshots/detail_screen.png)

### Favoritenbildschirm
Zeigt die vom Benutzer als Favorit markierten Reisen an.

![Favoritenbildschirm](screenshots/favorites_screen.png)

### Filterbildschirm
Ermöglicht dem Benutzer, Filter anzuwenden, um Reisen basierend auf Jahreszeit und Familienfreundlichkeit anzuzeigen.

![Filterbildschirm](screenshots/filters_screen.png)

## Herausforderungen und Lösungen

1. **State Management**:
   - **Herausforderung**: Die Verwaltung des Zustands der Filter und Favoriten war eine zentrale Herausforderung.
   - **Lösung**: Einsatz von `setState`, um den Zustand zu aktualisieren und die Änderungen im UI widerzuspiegeln.

2. **Datenfilterung**:
   - **Herausforderung**: Die Logik zur Filterung der Reisen basierend auf den ausgewählten Filtern musste sorgfältig implementiert werden.
   - **Lösung**: Anwenden von Bedingungen im `where`-Klausel, um nur relevante Reisen anzuzeigen.

3. **Responsive Design**:
   - **Herausforderung**: Die App sollte auf verschiedenen Bildschirmgrößen gut aussehen.
   - **Lösung**: Einsatz von flexiblen Layouts wie `GridView` und `ListView`.

4. **Navigation**:
   - **Herausforderung**: Implementierung einer nahtlosen Navigation zwischen den verschiedenen Bildschirmen.
   - **Lösung**: Nutzung von Flutter's Navigator und benannten Routen.

## Zukünftige Erweiterungen

- **Backend-Anbindung**: Integration eines Backends zur Speicherung und Verwaltung der Reise- und Benutzerdaten.
- **Benutzeranmeldung**: Hinzufügen von Benutzeranmeldungen, um personalisierte Erlebnisse zu ermöglichen.
- **Erweiterte Filter**: Hinzufügen weiterer Filteroptionen wie Preis, Bewertung etc.
- **Kartenintegration**: Integration von Karten zur Anzeige der genauen Lage der Reiseziele.


