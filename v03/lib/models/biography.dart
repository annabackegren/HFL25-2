class Biography {
  final String fullName;
  final List<String> alterEgos;
  final List<String> aliases;
  final String placeOfBirth;
  final String firstAppearance;
  final String publisher;
  final String alignment;

  Biography({
    required this.fullName,
    List<String>? alterEgos, //can be null and is then saved with bellow text
    List<String>? aliases, //can be null and is then saved with bellow text
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  }): alterEgos = alterEgos ?? ["No alter egos found."],
    aliases = aliases ?? ["No aliases found."];
}