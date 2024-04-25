
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            ElevatedButton(
              onPressed: (){
                
                }, 
              
              child: const Text('Login'), 

            ),

            const TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                icon: Icon(Icons.person_2_outlined),
             ),
            ),

            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                icon: Icon(Icons.lock_clock_outlined),
              ),
              obscureText: true,
            ),
        
        
        ],),
      ),
    );
  }
}
