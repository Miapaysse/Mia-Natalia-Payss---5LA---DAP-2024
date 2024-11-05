import 'package:clase18_4/entities/Empleado.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/base_screen_state.dart';
import '../viewmodels/providers.dart';
import '../utils/formatter.dart';

class InfoempleadosScreen extends ConsumerStatefulWidget {
  static const name = 'InfoEmpleadosScreen';
  const InfoempleadosScreen({super.key, required this.empleadoId});

  final int empleadoId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InfoempleadosScreenState();
}

class _InfoempleadosScreenState extends ConsumerState<InfoempleadosScreen> {
  @override
  void initState() {
    super.initState();

    // Fetch the note details after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(infoempleadosScreenViewModelProvider.notifier).fetchEmpleado(widget.empleadoId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(infoempleadosScreenViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de empleado'),
      ),
      body: state.screenState.when(
        idle: () {
          if (state.empleado == null) {
            return const Center(
              child: Text('Empleado not found'),
            );
          }
          return _InfoempleadosScreen(empleado: state.empleado!);
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: () => Center(
          child: Text('Error fetching empleados: ${state.error ?? 'Unknown'}'),
        ),
      ),
    );
  }
}

class _InfoempleadosScreen extends StatelessWidget {
  const _InfoempleadosScreen({
    required this.empleado,
  });

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              empleado.nombre,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              UIFormatter.formatDate(empleado.createdAt),
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 8),
            Text(empleado.apellido),
          ],
        ),
      ),
    );
  }
}
