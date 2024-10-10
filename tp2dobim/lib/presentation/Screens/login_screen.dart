import 'package:clase18_4/Entities/User.dart';
import 'package:clase18_4/presentation/Screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  
    TextEditingController passController = TextEditingController() ;
    TextEditingController userController = TextEditingController() ;
    List<User> userList = [
    User(email:'Ale@mail.com' , password:'778'),
    User(email:'Ale@mail.com' , password:'778'),
    User(email:'Ale@mail.com' , password:'778'),
    ];





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

                if (userList.any((user)=> user.email == inputUser && user.password == inputPass)){
                  print("User valido");
                   const  SnackBar snackBar = SnackBar(
                    content:  Text('Login exitoso'),
                   );
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   context.pushNamed(HomeScreen.name , extra: inputUser);
                }
          
                else{
                  print("Inicio de sesión fallido");
                  const  SnackBar snackBar = SnackBar(
                    content:  Text('Inicio de sesión fallido'),
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