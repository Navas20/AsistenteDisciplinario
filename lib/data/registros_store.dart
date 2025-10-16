// lib/data/registros_store.dart
import 'package:flutter/foundation.dart';
import '../models/registro.dart';

/// Almacén en memoria con notificaciones para la UI
final ValueNotifier<List<Registro>> registrosStore =
    ValueNotifier<List<Registro>>([]);

/// Agrega un registro y notifica a los listeners
void agregarRegistro(Registro r) {
  registrosStore.value = [...registrosStore.value, r];
}
