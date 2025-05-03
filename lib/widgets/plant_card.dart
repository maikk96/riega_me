import 'package:flutter/material.dart';
import '../models/plant_model.dart';

class PlantCard extends StatelessWidget {
  final Plant plant;

  const PlantCard({Key? key, required this.plant}) : super(key: key); // Constructor constante

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(plant.name),
        subtitle: Text('Especie: ${plant.species}'),
        trailing: Text(
          'Último riego:\n${plant.lastWatered.toLocal().toString().split(' ')[0]}',
        ),
      ),
    );
  }
}