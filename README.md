# 🌱 Riega.me – App de cuidado inteligente de plantas

**Riega.me** es una aplicación móvil desarrollada como Trabajo de Fin de Grado, cuyo objetivo es ayudar a los usuarios a gestionar de forma eficiente el cuidado de sus plantas mediante recordatorios de riego, identificación automática de especies y consejos personalizados.

## 📱 Características principales

- 📆 **Calendario dinámico de riego** con notificaciones personalizadas.
- 🔔 **Alertas push programadas** para evitar olvidos.
- 🤖 **Identificación de especies de plantas** mediante inteligencia artificial.
- 🌦️ **Predicción meteorológica local** (para ajustar riego en plantas de exterior).
- 🌿 **Consejos personalizados** según el tipo de planta y las preferencias del usuario.
- 📡 Compatibilidad con sensores de riego automáticos (opcional).
- 🔐 Sistema de autenticación mediante Firebase.
- ☁️ Datos sincronizados en Firestore.

## 🧑‍💻 Tecnologías usadas

- [Flutter](https://flutter.dev/) – Framework principal para app multiplataforma.
- [Firebase](https://firebase.google.com/) – Autenticación, Firestore y notificaciones.
- [Provider](https://pub.dev/packages/provider) – Gestión de estado.
- [ML Kit (Firebase)](https://firebase.google.com/products/ml) – Reconocimiento de especies vegetales.
- [Cloud Firestore](https://firebase.google.com/docs/firestore) – Base de datos en tiempo real.

## 🔧 Estructura del proyecto
lib/
├── main.dart                # Punto de entrada
├── app.dart                 # Configuración de rutas y providers
├── screens/                 # Pantallas de la app (login, registro, home…)
├── models/                  # Modelos de datos (plantas, usuarios)
├── services/                # Lógica de acceso a Firebase y otros servicios
├── providers/              # Gestión de estado (auth, plantas)
└── firebase_options.dart    # Configuración generada por FlutterFire CLI

## 🚀 Cómo ejecutar el proyecto

1. Clona el repositorio:

   ```bash
   git clone https://github.com/tu-usuario/riega_me.git
   cd riega_me
   
2. Instala las dependencias
   flutter pub get

3. Configurar Firease:
   flutterfire configure

   Asegúrate de tener configurados los entornos deseados (android, ios, web).

4. Ejecuta la app:

  flutter run -d chrome           # para web
  flutter run -d ios              # para simulador iPhone
  flutter run -d android          # para emulador Android

  📌 Estado actual

✅ Interfaz funcional
✅ Autenticación
✅ CRUD básico de plantas
🚧 Integración IA y sensores en desarrollo

🧪 Próximas mejoras
	•	Integración total con sensores de riego comerciales.
	•	Soporte multilingüe.
	•	Estadísticas de hábitos de riego.
	•	Modo oscuro.

📄 Licencia
Este proyecto se distribuye bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.

Desarrollado por Miguel Sánchez como parte del TFG en la Universidad Europea de Madrid.
   
