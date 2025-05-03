import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../../models/plant_model.dart';
import '../../providers/auth_provider.dart';
import '../../providers/plant_provider.dart';

class AddPlantScreen extends StatefulWidget {
  const AddPlantScreen({Key? key}) : super(key: key);
  @override
  State<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends State<AddPlantScreen> {
  final _nameController = TextEditingController();
  final _speciesController = TextEditingController();

  void _submit() async {
    final auth = Provider.of<AuthProvider>(context, listen: false);
    final plantProvider = Provider.of<PlantProvider>(context, listen: false);

    final plant = Plant(
      id: const Uuid().v4(),
      name: _nameController.text,
      species: _speciesController.text,
      imageUrl: '', // puedes añadir carga de imágenes después
      lastWatered: DateTime.now(),
    );

    await plantProvider.addPlant(auth.user!.uid, plant);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Añadir Planta')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(controller: _nameController, decoration: const InputDecoration(labelText: 'Nombre')),
          TextField(controller: _speciesController, decoration: const InputDecoration(labelText: 'Especie')),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _submit, child: const Text('Guardar')),
        ]),
      ),
    );
  }
}