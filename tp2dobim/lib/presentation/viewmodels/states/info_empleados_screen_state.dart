import 'package:clase18_4/entities/Empleados_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../utils/base_screen_state.dart';

class InfoempleadosScreenNotifier extends AutoDisposeNotifier<InfoempleadosScreenState> {
  late final EmpleadosRepository empleadosRepository =
      ref.read(empleadosRepositoryProvider);

  @override
  InfoempleadosScreenState build() {
    return const InfoempleadosScreenState();
  }

  Future<void> fetchEmpleado(int empleadoId) async {
    state = state.copyWith(
      screenState: BaseScreenState.loading,
      error: null,
    );

    try {
      final note = await empleadosRepository.getEmpleadoById(empleadoId);
      state = state.copyWith(
        screenState: BaseScreenState.idle,
        note: note,
      );
    } catch (error) {
      state = state.copyWith(
        screenState: BaseScreenState.error,
        error: error.toString(),
      );
    }
  }
}
