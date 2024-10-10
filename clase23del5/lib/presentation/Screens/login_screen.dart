import 'package:clase18_4/presentation/Screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  
  TextEditingController passController = TextEditingController() ;
  TextEditingController userController = TextEditingController() ;
  List<String> users = ['Mia' , 'Juan' , 'Ana' , 'Natu' , 'Pitoco'];
  List<String> passwords = ['1234', '8888' , '8383', '4213' , '3075'];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
        body: Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
             TextField(
              controller: userController,
              decoration: const InputDecoration(
                hintText: 'Username',
                icon: Icon(Icons.person_2_outlined),
             ),
            ),

             TextField(
              controller: passController,
              decoration: const InputDecoration(
                hintText: 'Password',
                icon: Icon(Icons.lock_clock_outlined),
                
              ),
              obscureText: true,
            ),

             const SizedBox(height: 50),

             ElevatedButton(
              onPressed: (){
                String inputUser = userController.text;
                String inputPass = passController.text;

                if(inputPass.isEmpty || inputUser.isEmpty){
                  print("Contraseña o User vacíos");
                  const  SnackBar snackBar = SnackBar(
                    content:  Text("Contraseña o User vacíos, complete los campos requeridos"),
                   );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }

                if (users.contains(inputUser)){
                  print("User valido");
                  int i = users.indexOf(inputUser);

                  if (inputPass == passwords[i]){

                   const  SnackBar snackBar = SnackBar(
                    content:  Text('Login exitoso'),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   context.pushNamed(HomeScreen.name , extra: inputUser);

                  }

                  else{
                  print("Contraseña incorrecta");
                  const  SnackBar snackBar = SnackBar(
                    content:  Text('Contraseña incorrecta'),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
          
                }

                else{
                  print("Inicio de sesión fallido, usuario no válido");
                  const  SnackBar snackBar = SnackBar(
                    content:  Text('Usuario no válido'),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                }, 
              
              child: const Text('Login',style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(255, 18, 3, 118)),) 

            ),

            
        
        
        ],),
      );
    

  }
}