import 'package:flutter/material.dart';
import 'models/registro.dart'; // <-- ajusta la ruta si tu estructura difiere
import 'data/registros_store.dart'; // <-- idem

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({super.key});

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _programaController = TextEditingController();
  final TextEditingController _observacionesController =
      TextEditingController();
  String? _tipoFalta;

  void _guardarRegistro() {
    final nombre = _nombreController.text.trim();
    final programa = _programaController.text.trim();
    final observaciones = _observacionesController.text.trim();

    if (nombre.isEmpty || programa.isEmpty || _tipoFalta == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("⚠️ Complete todos los campos obligatorios")),
      );
      return;
    }

    final nuevo = Registro(
      nombre: nombre,
      programa: programa,
      tipoFalta: _tipoFalta!,
      observaciones: observaciones,
      fecha: DateTime.now(),
    );

    agregarRegistro(nuevo); // <-- guarda en memoria y notifica

    // Limpia el formulario
    _nombreController.clear();
    _programaController.clear();
    _observacionesController.clear();
    setState(() => _tipoFalta = null);

    // Confirma al usuario
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("✅ Registro guardado para $nombre")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro Disciplinario")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration:
                  const InputDecoration(labelText: "Nombre del estudiante *"),
            ),
            TextField(
              controller: _programaController,
              decoration:
                  const InputDecoration(labelText: "Programa académico *"),
            ),
            DropdownButtonFormField<String>(
              value: _tipoFalta,
              items: const [
                DropdownMenuItem(value: "Leve", child: Text("Leve")),
                DropdownMenuItem(value: "Grave", child: Text("Grave")),
                DropdownMenuItem(value: "Muy Grave", child: Text("Muy Grave")),
              ],
              decoration: const InputDecoration(labelText: "Tipo de falta *"),
              onChanged: (val) => setState(() => _tipoFalta = val),
            ),
            TextField(
              controller: _observacionesController,
              maxLines: 3,
              decoration:
                  const InputDecoration(labelText: "Observaciones (opcional)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _guardarRegistro,
              icon: const Icon(Icons.save),
              label: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
