// lib/models/registro.dart
class Registro {
  final String nombre;
  final String programa;
  final String tipoFalta;
  final String observaciones;
  final DateTime fecha;

  Registro({
    required this.nombre,
    required this.programa,
    required this.tipoFalta,
    required this.observaciones,
    required this.fecha,
  });
}
