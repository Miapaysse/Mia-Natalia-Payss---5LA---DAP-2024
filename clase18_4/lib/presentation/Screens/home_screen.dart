import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar (
        title: const Text('Home')),
      body: const Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Text('Bienvenido'),

        ],),
    );
  }
}
