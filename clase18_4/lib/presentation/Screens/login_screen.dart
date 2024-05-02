// ignore: unused_import
import 'package:clase18_4/presentation/Screens/Login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp( LoginScreen());
}
  // ignore: prefer_typing_uninitialized_variables
  const String name = 'login';



class LoginScreen extends StatelessWidget {
  static const String name = 'login';

   LoginScreen({super.key});


  final TextEditingController userController = TextEditingController();
    final TextEditingController userController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String ingresado = userController.text;
String ingresado2 = userController2.text;
                  if (ingresado == "Eitu" && ingresado2=="Cher") {
                    // ignore: avoid_print
                    print("Funciona la app");
                    context.push('home');
                  }
                  else {
                    // ignore: avoid_print
                    print ("No funca");
                  }




                },
                child: const Text("LogIn"),
              ),
              TextField(
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Usuario",
                prefixIcon: (Icon(Icons.person)),


                ),
               
               
               
               
                controller: userController),

TextField(
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Contraseña",
                prefixIcon: (Icon(Icons.key)),


                ),
               
               
               
               
                controller: userController2),
            ],
          ),
        ),
      ),
    );
  }
}