import 'package:clase18_4/entities/Empleado.dart';
import 'package:equatable/equatable.dart';
import '../../utils/base_screen_state.dart';

class InfoempleadosScreenState extends Equatable {
  final BaseScreenState screenState;
  final Empleado? empleado;
  final String? error;

  const InfoempleadosScreenState({
    this.screenState = BaseScreenState.idle,
    this.empleado,
    this.error,
  });

  InfoempleadosScreenState copyWith({
    BaseScreenState? screenState,
    Empleado? empleado,
    String? error,
  }) {
    return InfoempleadosScreenState(
      screenState: screenState ?? this.screenState,
      empleado: empleado ?? this.empleado,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [screenState, empleado, error];
}
