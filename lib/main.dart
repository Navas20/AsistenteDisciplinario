import 'package:flutter/material.dart';
import 'registro_screen.dart';
import 'listado_screen.dart';
import 'reportes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asistente Disciplinario',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asistente Disciplinario')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistroScreen()),
                );
              },
              child: const Text("Ir a Registro Disciplinario"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  //boto para reportes
                  MaterialPageRoute(
                      builder: (context) => const ReportesScreen()),
                );
              },
              child: const Text("Ver Reportes"),
            ),
            //boto para listado
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListadoScreen()),
                );
              },
              child: const Text("Ver Listado de Registros"),
            ),
          ],
        ),
      ),
    );
  }
}
