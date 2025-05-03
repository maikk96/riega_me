//Métodos para leer/escribir en Firestore.

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/plant_model.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Obtener todas las plantas
  Stream<List<Plant>> getPlants() {
    return _db.collection('plants').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Plant.fromMap(doc.data())).toList());
  }

  // Agregar una nueva planta
  Future<void> addPlant(Plant plant) async {
    await _db.collection('plants').doc(plant.id).set(plant.toMap());
  }
}