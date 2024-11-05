
import 'package:collection/collection.dart';

import 'package:clase18_4/entities/Empleado.dart';
import 'package:clase18_4/entities/Empleados_repository.dart';


class EmpleadosFalsosRepository implements EmpleadosRepository{
  final List <Empleado>_empleados = [    Empleado(
      nombre:'Ale' , 
      apellido:'Profe', 
      area: 'IT', 
      id: 1,
      poster: 'https://st3.depositphotos.com/1177973/13569/i/450/depositphotos_135693246-stock-photo-male-teacher-in-classroom.jpg' ,
    ),

    Empleado(
      nombre:'Mia' , 
      apellido:'Payssé' , 
      area: 'Operaciones', 
      id: 2,
      poster: 'https://media.licdn.com/dms/image/D4D03AQEEASd6Fbn9Ug/profile-displayphoto-shrink_200_200/0/1702344396909?e=2147483647&v=beta&t=4HttxvO--yhIVDuY6QIJmXGTUvgsoWMz0BDNTf9sivI' , 
    ),

    Empleado(
      nombre:'Facundo' ,
      apellido:'Maletta' ,
      area: 'Operaciones', 
      id: 3, 
      poster: 'https://pbs.twimg.com/profile_images/1102999529622786048/qNH7_Bbo_400x400.jpg' , 
    ),

    Empleado(
      nombre:'Natán' ,
      apellido:'Rosenhain' ,
      area: 'Finanzas', 
      id: 4, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),

    Empleado(
      nombre:'Juan Cruz' ,
      apellido:'Rodriguez' ,
      area: 'Ventas', 
      id: 5, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),
    
    Empleado(
      nombre:'Ramiro' ,
      apellido:'Lowden' ,
      area: 'Contaduría', 
      id: 5, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),

    Empleado(
      nombre:'Santino' ,
      apellido:'DePascale' ,
      area: 'Administración', 
      id: 6, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),

    Empleado(
      nombre:'Feliciano' ,
      apellido:'Miguez' ,
      area: 'Marketing', 
      id: 7, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),

    Empleado(
      nombre:'Uriel' ,
      apellido:'Dyner' ,
      area: 'Ventas', 
      id: 8, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),

    Empleado(
      nombre:'Julián' ,
      apellido:'Vinocur' ,
      area: 'IT', 
      id: 9, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),

    Empleado(
      nombre:'Felipe' ,
      apellido:'Sala' ,
      area: 'IT', 
      id: 10, 
      poster: 'https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg' , 
    ),];

      @override
  Future<List<Empleado>> getAllEmpleados() => Future.delayed(
        const Duration(seconds: 2),
        () => _empleados,
      );

  @override
  Future<Empleado?> getEmpleadoById(int id) async => Future.delayed(
        const Duration(seconds: 1),
        () => _empleados.firstWhereOrNull((n) => n.id == id),
      );
}



