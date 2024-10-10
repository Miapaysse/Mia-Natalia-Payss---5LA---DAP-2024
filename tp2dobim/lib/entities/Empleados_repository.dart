import 'Empleado.dart';

abstract interface class EmpleadosRepository {
  Future<List<Empleado>> getAllEmpleados();
  Future<Empleado?> getEmpleadoById(int id);
}
