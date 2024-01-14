import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomContainer(),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0), // Anpassen der Innenabstände des Containers
      decoration: BoxDecoration(
        color: Colors.blue, // Hintergrundfarbe des Containers
        borderRadius: BorderRadius.circular(10.0), // Abrundung der Ecken des Containers
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Schattenfarbe und Opazität
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // Schattenrichtung
          ),
        ],
      ),
      child: const Text(
        'Hello World!',
        style: TextStyle(
          fontSize: 24.0, // Schriftgröße des Textes
          color: Colors.white, // Textfarbe
          fontWeight: FontWeight.bold, // Textgewicht
        ),
      ),
    );
  }
}
