import 'package:equatable/equatable.dart';

class Empleado extends Equatable {
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
  }) : createdAt = createdAt ?? DateTime.now();

  // Factory constructor to create an Empleado from a map (for parsing JSON)
  factory Empleado.fromMap(Map<String, dynamic> map) {
    return Empleado(
      id: map['id'] as int,
      nombre: map['nombre'] as String,
      apellido: map['apellido'] as String,
      area: map['area'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
      poster: map['poster'] as String?, // Poster can be null
    );
  }

  // Method to convert an Empleado into a map (for sending data to an API, etc.)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'apellido': apellido,
      'area': area,
      'createdAt': createdAt.toIso8601String(),
      'poster': poster,
    };
  }

  // Copy method to allow cloning with optional modifications
  Empleado copyWith({
    int? id,
    String? nombre,
    String? apellido,
    String? area,
    DateTime? createdAt,
    String? poster,
  }) =>
      Empleado(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        apellido: apellido ?? this.apellido,
        area: area ?? this.area,
        createdAt: createdAt ?? this.createdAt,
        poster: poster ?? this.poster,
      );

  @override
  String toString() {
    return 'Empleado{id: $id, nombre: $nombre, apellido: $apellido, area: $area, createdAt: $createdAt}';
  }

  // Equality check based on specific fields
  @override
  List<Object?> get props => [id, nombre, apellido, area, createdAt];
}
