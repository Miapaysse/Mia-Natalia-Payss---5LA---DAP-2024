import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/Empleados_falsos_repository.dart';
import '../entities/Empleados_repository.dart';

final empleadosRepositoryProvider = Provider<EmpleadosRepository>(
  (ref) => EmpleadosFalsosRepository(),
);