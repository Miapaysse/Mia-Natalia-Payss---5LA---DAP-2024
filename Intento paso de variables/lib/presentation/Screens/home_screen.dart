import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {

  String inputUser;

  HomeScreen(this.inputUser);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {


    String lo = "lo";
    return  Scaffold(
      appBar: AppBar (
        title: const Text('Home')),
      body: Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Text('Bienvenido ${widget.inputUser}'),
            
            Text(lo),
        ],),
    );
  }
}