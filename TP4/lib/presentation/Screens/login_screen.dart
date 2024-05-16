import 'package:clase18_4/presentation/Screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  
  TextEditingController passController = TextEditingController() ;
  TextEditingController userController = TextEditingController() ;
  List<String> users = ['Mia' , 'Juan' , 'Ana' , 'Natu' , 'Pitoco'];
  List<int> passwords = [1234 , 8888 , 8383, 4213 , 3075];
  bool estaEnListaUsuarios;
  bool estaEnListaConstra;

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
                }

                if (users.contains(inputUser)){
                  print("User valido");


                 //LOGIN EXITOSO VA EN OTRA IF SEGURO
                 const  SnackBar snackBar = SnackBar(
                    content:  Text('Login exitoso'),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  
                  context.pushNamed(HomeScreen.name , extra: inputUser);
                }
                else{
                  print("Inicio de sesión fallido");
                }
                }, 
              
              child: const Text('Login'), 

            ),

            
        
        
        ],),
      );
    

  }
}