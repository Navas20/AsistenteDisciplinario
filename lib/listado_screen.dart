import 'package:flutter/material.dart';
import 'data/registros_store.dart';
import 'models/registro.dart';

class ListadoScreen extends StatelessWidget {
  const ListadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listado de Registros")),
      body: ValueListenableBuilder<List<Registro>>(
        valueListenable: registrosStore,
        builder: (context, lista, _) {
          if (lista.isEmpty) {
            return const Center(child: Text("⚠️ No hay registros aún"));
          }
          return ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              final r = lista[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  title: Text(r.nombre),
                  subtitle: Text(
                    "${r.programa} • ${r.tipoFalta}\n${r.fecha.toLocal()}",
                  ),
                  isThreeLine: true,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
