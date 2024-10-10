import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());

  List<String> users = ['Mia' , 'Juan'];
  List<dynamic> lala = []; //LISTA MEZCLADA No recomendada
  List<int> passwords = [123 , 888];

  users.add('Ale');

  passwords.add(22333);

  print(users);
  print(users[2]);
  
  users.forEach((item) { 
    if (item == 'Juan'){
      print('Juan fue encontrado');
      return; //Sale a penas lo encuentra
      }
  
      else{print('Juan no encontrado');}
    
    print(item);
    
    });

    bool estaJuan = users.contains('Juan');
    print(estaJuan);

    //Tarea: Lista de 5 ususarios y lista 5 contraseñas, coinciden --> Login revisando una lista de usuarios validos
    //Primero me fijo si el usuario existe --> Si no usuario no existe, si existe me fijo si la contraseña es la correcta

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

/*Snack bar en if del login 
  Snackbar snackBar = SnackBack(
    content: const Text('Login exitoso'),
  );
ScaffoldMessenger.of(context).showSnackBar(snackBar);*/