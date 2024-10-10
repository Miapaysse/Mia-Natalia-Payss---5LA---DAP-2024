import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/app_router.dart';


void main() {
  runApp( const MainApp());
}


class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Mis Empleados',
        theme: ThemeData(
          colorSchemeSeed: Colors.yellow,
        ),
        routerConfig: appRouter,
      ),
    );

  }

}