import 'package:clase18_4/entities/Empleado.dart';
import 'package:flutter/material.dart';


class EmpleadoItem extends StatelessWidget {
  const EmpleadoItem({
    super.key,
    required this.empleado,
    this.onTap, required Color backgroundColor,
  });

  final Empleado empleado;
  final Function? onTap;


 @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: empleado.poster != null
            ? _getPoster(empleado.poster!)
            : const Icon(Icons.emoji_people),
        title: Text("${empleado.nombre} ${empleado.apellido}"),
        subtitle: Text('Area de trabajo: ${empleado.area}'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => onTap?.call(),
      ),
    );
  }

  Widget _getPoster(String posterUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(posterUrl),
    );
  }
}