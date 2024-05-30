
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home';

String userName;
 HomeScreen({super.key , this.userName = ""});
  

  @override
  Widget build(BuildContext context) {

   List<String> empleados = ['Mia' , 'Juan' , 'Ana' , 'Natu' , 'Pitoco', 'Facundo', 'Ramiro', 'Pepe' , 'Santino', 'Andrés']; 
   List<String> departamentos = ['Logística' , 'Ventas' , 'Marketing' , 'Servicio técnico' , 'Producción', 'Recursos Humanos' , 'Tesorería', 'Administración', 'Datos','Seguridad']; 


    return  Scaffold(
      appBar: AppBar (
        title: const Text('Home')),
      body:  Center(
        child: 
        ListView.builder(
          itemCount: empleados.length,
          itemBuilder:(context, index) {
            return Card(
              child:ListTile(
                title:Text(empleados[index]),
                subtitle: Text(departamentos[index],),
              ),
            );
            
            }),

      ),
    );
  }
}