import 'package:flutter/material.dart';
import 'data/registros_store.dart';
import 'models/registro.dart';

class ReportesScreen extends StatelessWidget {
  const ReportesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reportes Estadísticos")),
      body: ValueListenableBuilder<List<Registro>>(
        valueListenable: registrosStore,
        builder: (context, lista, _) {
          if (lista.isEmpty) {
            return const Center(child: Text("⚠️ No hay datos para mostrar"));
          }

          final leves = lista.where((r) => r.tipoFalta == "Leve").length;
          final graves = lista.where((r) => r.tipoFalta == "Grave").length;
          final muyGraves =
              lista.where((r) => r.tipoFalta == "Muy Grave").length;
          final total = lista.length;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total de registros: $total",
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 12),
                Text("Faltas leves: $leves"),
                Text("Faltas graves: $graves"),
                Text("Faltas muy graves: $muyGraves"),
                const SizedBox(height: 20),
                LinearProgressIndicator(
                  value: total > 0 ? leves / total : 0,
                  backgroundColor: Colors.grey[300],
                  color: Colors.green,
                  minHeight: 10,
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: total > 0 ? graves / total : 0,
                  backgroundColor: Colors.grey[300],
                  color: Colors.orange,
                  minHeight: 10,
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: total > 0 ? muyGraves / total : 0,
                  backgroundColor: Colors.grey[300],
                  color: Colors.red,
                  minHeight: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
