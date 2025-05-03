//Estado de plantas

import 'package:flutter/material.dart';
import '../models/plant_model.dart';
import '../services/plant_service.dart';

class PlantProvider with ChangeNotifier {
  final PlantService _plantService = PlantService();
  List<Plant> _plants = [];

  List<Plant> get plants => _plants;

  void listenToPlants(String userId) {
    _plantService.getPlants(userId).listen((plantList) {
      _plants = plantList;
      notifyListeners();
    });
  }

  Future<void> addPlant(String userId, Plant plant) async {
    await _plantService.addPlant(userId, plant);
  }
}