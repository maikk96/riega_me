//Métodos para gestionar plantas en la base de datos.

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/plant_model.dart';

class PlantService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addPlant(String userId, Plant plant) async {
    final doc = _db.collection('users').doc(userId).collection('plants').doc(plant.id);
    await doc.set(plant.toMap());
  }

  Stream<List<Plant>> getPlants(String userId) {
    return _db
        .collection('users')
        .doc(userId)
        .collection('plants')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Plant.fromMap(doc.data()))
            .toList());
  }
}