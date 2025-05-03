// punto de entrada principal para definir la estructura general de la aplicación.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/home_screen.dart';
import 'providers/plant_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Agregado el parámetro 'key'

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => PlantProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,  //  Oculta la etiqueta "Debug"
        initialRoute: '/login',  //  Ruta inicial cuando se abre la app
        routes: {
          '/login': (context) => const LoginScreen(),  //  Pantalla de login
          '/register': (context) => const RegisterScreen(),  //  Pantalla de registro
          '/home': (context) =>  HomeScreen(),  // Pantalla de inicio tras autenticación
        },
      ),
    );
  }
}