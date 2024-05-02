import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget{
  static const String name = 'home';
  String usuario;
  HomeScreen({super.key, this.usuario = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        
        child: Text('Welcome $usuario'),
      ),
    );
  }
}
