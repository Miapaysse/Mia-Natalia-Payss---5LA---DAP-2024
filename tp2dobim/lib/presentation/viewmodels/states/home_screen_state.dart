import 'package:equatable/equatable.dart';

import '../../../entities/empleado.dart';
import '../../utils/base_screen_state.dart';

class HomeScreenState extends Equatable {
  final BaseScreenState screenState;
  final String? error;
  final List<Empleado> empleados;

  const HomeScreenState({
    this.screenState = BaseScreenState.idle,
    this.error,
    this.empleados = const [],
  });

  HomeScreenState copyWith({
    BaseScreenState? screenState,
    String? error,
    List<Empleado>? notes,
  }) {
    return HomeScreenState(
      screenState: screenState ?? this.screenState,
      error: error ?? this.error,
      empleados: empleados ?? this.empleados,
    );
  }

  @override
  List<Object?> get props => [screenState, error, empleados];
}
