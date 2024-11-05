import 'package:clase18_4/presentation/Screens/home_screen.dart';
import 'package:clase18_4/presentation/Screens/Login_screen.dart';
import 'package:clase18_4/presentation/Screens/infoempleados_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) {
        final userName = state.pathParameters['userName'] ?? '';
        return HomeScreen(userName: userName);
      },
    ),
    GoRoute(
      name: InfoempleadosScreen.name,
      path: '/infoempleados/:empleadoId',
      builder: (context, state) {
        final empleadoId = int.tryParse(state.pathParameters['empleadoId'] ?? '') ?? -1;
        return InfoempleadosScreen(empleadoId: empleadoId);
      },
    ),
  ],
);

class AppRouter {
  // Path parameters for the InfoempleadosScreen route.
  static Map<String, String> infoEmpleadosScreenParameters(int empleadoId) {
    return {'empleadoId': empleadoId.toString()}; // Ensure the parameter name matches
  }
}
