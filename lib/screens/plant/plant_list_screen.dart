import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/plant_provider.dart';
import '../../providers/auth_provider.dart';
import '../../widgets/plant_card.dart';
import 'add_plant_screen.dart';

class PlantListScreen extends StatelessWidget {
  const PlantListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    final plantProvider = Provider.of<PlantProvider>(context);

    // Suscribirse a cambios
    if (auth.user != null) {
      plantProvider.listenToPlants(auth.user!.uid);
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Mis Plantas")),
      body: ListView(
        children: plantProvider.plants
            .map((plant) => PlantCard(plant: plant))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const AddPlantScreen())),
        child: const Icon(Icons.add),
      ),
    );
  }
}