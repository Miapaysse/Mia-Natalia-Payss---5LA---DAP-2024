class Empleado {
  final int id;
  final String nombre;
  final String apellido;
  final String area;
  final String? poster;
  final DateTime createdAt;

  Empleado({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.area,
    DateTime? createdAt,
    this.poster,
  }): createdAt = createdAt ?? DateTime.now();

  Empleado copyWith({
    int? id,
    String? nombre,
    String? apellido,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Empleado(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        apellido: apellido ?? this.apellido,
        area: area ?? this.area,
        createdAt: createdAt ?? this.createdAt,
      );

  @override
  String toString() {
    return 'Empleado{id: $id, nombre: $nombre, apellido: $apellido, createdAt: $createdAt}';
  }

  @override
  List<Object?> get props => [id, nombre, apellido, createdAt];
}
