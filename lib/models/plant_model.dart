// Clase para representar una planta

class Plant {
  String id;
  String name;
  String species;
  String imageUrl;
  DateTime lastWatered;

  Plant({
    required this.id,
    required this.name,
    required this.species,
    required this.imageUrl,
    required this.lastWatered,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'species': species,
      'imageUrl': imageUrl,
      'lastWatered': lastWatered.toIso8601String(),
    };
  }

  factory Plant.fromMap(Map<String, dynamic> data) {
    return Plant(
      id: data['id'],
      name: data['name'],
      species: data['species'],
      imageUrl: data['imageUrl'],
      lastWatered: DateTime.parse(data['lastWatered']),
    );
  }
}