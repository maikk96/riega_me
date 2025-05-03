// Clase para representar un usuario.
class User {
  String id;
  String name;
  String email;
  List<String> plants; // Lista de IDs de plantas del usuario

  User({required this.id, required this.name, required this.email, required this.plants});

  // Convertir a JSON (para Firestore)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'plants': plants,
    };
  }

  // Crear usuario desde JSON (Firestore)
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      plants: List<String>.from(json['plants'] ?? []),
    );
  }
}