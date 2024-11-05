import 'package:clase18_4/entities/Empleado.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_router.dart';
import '../utils/base_screen_state.dart';
import '../viewmodels/providers.dart';
import '../widgets/empleado_item.dart';
import 'infoempleados_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const name = 'home';
  const HomeScreen({super.key, required String userName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Fetch employees after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeScreenViewModelProvider.notifier).fetchEmpleados();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeScreenViewModelProvider);

    // Check state using simple if-else
    if (state.screenState == BaseScreenState.loading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Empleados'),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    } else if (state.screenState == BaseScreenState.error) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Empleados'),
        ),
        body: Center(
          child: Text('Error: ${state.error ?? 'Unknown error'}'),
        ),
      );
    } else if (state.screenState == BaseScreenState.idle) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Empleados'),
        ),
        body: _HomeScreen(
          empleados: state.empleados,
          onRefresh: _onRefresh,
          onEmpleadoTap: (empleado) => _onEmpleadoTap(context, empleado.id ?? -1),
        ),
      );
    }

    // Fallback
    return const SizedBox.shrink();
  }

  Future<void> _onRefresh() async {
    await ref.read(homeScreenViewModelProvider.notifier).refresh();
  }

  void _onEmpleadoTap(BuildContext context, int empleadoId) {
    context.pushNamed(
      InfoempleadosScreen.name,
      pathParameters: AppRouter.infoEmpleadosScreenParameters(empleadoId),
    );
  }
}

class _HomeScreen extends StatelessWidget {
   _HomeScreen({
    required this.empleados,
    required this.onRefresh,
    required this.onEmpleadoTap,
  });

  final List<Empleado>? empleados;  // Nullable list of empleados
  final Future<void> Function() onRefresh;
  final Function(Empleado) onEmpleadoTap;

  final List<Color> _tileColors = [
    Colors.yellow[100]!,
    Colors.orange[100]!,
    Colors.red[100]!,
    Colors.green[100]!,
    Colors.blue[100]!,
    Colors.purple[100]!,
  ];

  @override
  Widget build(BuildContext context) {
    if (empleados == null || empleados!.isEmpty) {
      return const Center(child: Text('No empleados available.'));
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: empleados!.length,  // Safe to access because we know it's not null
        itemBuilder: (context, index) {
          final empleado = empleados![index];  // Safe to access because we know it's not null
          return EmpleadoItem(
            empleado: empleado,
            onTap: () => onEmpleadoTap(empleado),
            backgroundColor: _tileColors[index % _tileColors.length],
          );
        },
      ),
    );
  }
}
