import 'package:equatable/equatable.dart';

import '../../../entities/Empleado.dart';
import '../../utils/base_screen_state.dart';

class HomeScreenState {
  final BaseScreenState screenState;
  final List<Empleado>? empleados;  // Make it nullable here
  final String? error;

  const HomeScreenState({
    this.screenState = BaseScreenState.idle,
    this.empleados,  // Allow nullable empleados
    this.error,
  });

  HomeScreenState copyWith({
    BaseScreenState? screenState,
    List<Empleado>? empleados,  // Allow nullable empleados here
    String? error,
  }) {
    return HomeScreenState(
      screenState: screenState ?? this.screenState,
      empleados: empleados ?? this.empleados,  // If no new empleados, use the current ones
      error: error ?? this.error,
    );
  }
}


