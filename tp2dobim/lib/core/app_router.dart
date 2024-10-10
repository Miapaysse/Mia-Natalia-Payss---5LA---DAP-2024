import 'package:clase18_4/presentation/Screens/home_screen.dart';
import 'package:clase18_4/presentation/Screens/Login_screen.dart';
import 'package:clase18_4/presentation/Screens/infoempleados_screen.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter( 

initialLocation: '/login',
  
 routes: [

  GoRoute(
    path:'/login', 
    builder: (context, state) => LoginScreen() ,),

  GoRoute(
    path:'/home',
    name: HomeScreen.name,
    builder: (context, state) =>  HomeScreen(userName: state.extra as String),
  ),

  GoRoute(
    name: InfoempleadosScreen.name,
    path: '/infoempleados/:empleadoId',
    builder: (context, state) => InfoempleadosScreen(empleadoId: int.tryParse(state.pathParameters['id'] ?? '') ?? -1,)
    ),



  ]
);

class AppRouter {
  // Path parameters for the NoteDetailsScreen route.
  // The noteId is required to fetch the note details.
  static Map<String, String> infoEmpleadosScreenParameters(int empleadoId) {
    return {'id': empleadoId.toString()};
  }
}
