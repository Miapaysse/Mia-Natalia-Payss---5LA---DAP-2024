import 'dart:async';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../entities/Empleados_repository.dart';
import '../../utils/base_screen_state.dart';
import '../states/home_screen_state.dart';

class HomeScreenNotifier extends Notifier<HomeScreenState> {
  late final EmpleadosRepository empleadosRepository =
      ref.read(empleadosRepositoryProvider);

  @override
  HomeScreenState build() {
    return const HomeScreenState();
  }

  Future<void> fetchEmpleados() async {
    state = state.copyWith(
      screenState: BaseScreenState.loading,
      error: null,
    );
    await refresh();
  }


Future<void> refresh() async {
  try {
    // Get the list of Empleado
    final empleados = await empleadosRepository.getAllEmpleados();
    
    // Ensure empleados is of type List<Empleado> and not List<Object>
    if (empleados is List<Empleado>) {
      state = state.copyWith(
        screenState: BaseScreenState.idle,
        empleados: empleados.sortedBy((n) => n.createdAt),
      );
    } else {
      throw Exception('Fetched data is not of type List<Empleado>');
    }
  } catch (error) {
    state = state.copyWith(
      screenState: BaseScreenState.error,
      error: error.toString(),
    );
  }
}
