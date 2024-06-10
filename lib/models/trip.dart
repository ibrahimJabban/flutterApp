// Importiert das Material Design-Paket von Flutter, das visuelle, strukturelle,
// interaktive und animierte Elemente bietet, die den Material Design-Richtlinien entsprechen.

// Definition von Aufzählungstypen (Enums), um kodierte Listen von verwandten Werten
// zu erstellen, die die Lesbarkeit des Codes erhöhen und Fehler reduzieren können.
// Hier werden Jahreszeiten definiert.
enum Season {
  winter, // Repräsentiert die Winterzeit
  summer, // Repräsentiert die Sommerzeit
  autmun, // Repräsentiert die Herbstzeit
  spring // Repräsentiert die Frühlingszeit
}

// Enum für die Art der Reise, was hilft, verschiedene Arten von Reisen zu kategorisieren
// und entsprechend im Code zu behandeln.
enum TripType {
  exploration, // Reisen, die auf Entdeckung und Erkundung ausgerichtet sind
  recovery, // Erholungsreisen, z.B. Wellness oder Entspannung
  activities, // Aktivitätsbasierte Reisen, wie Wandern oder Sport
  therapy // Therapeutische Reisen, vielleicht in Kurorte
}

// Definiert eine Klasse 'Trip', die alle relevanten Informationen über eine Reise speichert.
// Die Klasse ist mit dem Schlüsselwort 'const' versehen, um Unveränderlichkeit zu gewährleisten.
class Trip {
  final String id; // Eindeutige Kennung für die Reise
  final List<String> categories; // Kategorien, zu denen die Reise gehört
  final String title; // Titel der Reise
  final String imageUrl; // URL eines Bildes, das die Reise repräsentiert
  final List<String>
      activities; // Aktivitäten, die während der Reise verfügbar sind
  final List<String>
      program; // Detailliertes Programm oder Tagesordnung der Reise
  final int duration; // Dauer der Reise in Tagen
  final Season season; // Jahreszeit, in der die Reise stattfindet
  final TripType tripType; // Art der Reise, basierend auf dem Enum 'TripType'
  final bool isForFamilies; // Zeigt an, ob die Reise familienfreundlich ist
  final bool isInSummer; // Wahr, wenn die Reise im Sommer stattfindet
  final bool isInWinter; // Wahr, wenn die Reise im Winter stattfindet

  // Konstruktor der Klasse, der alle oben genannten Felder als erforderlich markiert,
  // was bedeutet, dass sie beim Erstellen einer Instanz der Klasse angegeben werden müssen.
  const Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.program,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isForFamilies,
    required this.isInSummer,
    required this.isInWinter,
  });
}
