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
    this.alterEgos = const["No alter egos found."],
    this.aliases = const["No aliases found."],
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });
}