// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class DefinidorUsuario extends StatefulWidget {
  final Widget child;
  final String usuario;

  // ignore: use_key_in_widget_constructors
  const DefinidorUsuario({required this.child, required this.usuario});

  @override
  // ignore: library_private_types_in_public_api
  _DefinidorUsuarioState createState() => _DefinidorUsuarioState();
}



class _DefinidorUsuarioState extends State<DefinidorUsuario> {
  late String _currentUsuario;

  @override
  void initState() {
    _currentUsuario = widget.usuario;
    super.initState();
  }

  void changeTheme(String newUsuario) {
    setState(() {
      _currentUsuario = newUsuario;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _currentUsuario == "green" ? ThemeData(primarySwatch: Colors.green) : ThemeData(primarySwatch: Colors.blue),
      child: widget.child,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Context Example"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              final themeChanger =
                  context.ancestorWidgetOfExactType(ThemeChanger);
              themeChanger.changeTheme(themeChanger._currentTheme == "green" ? "blue" : "green");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The theme can be changed dynamically"),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    DefinidorUsuario(
      usuario: "green",
      child: MaterialApp(
        home: MyHomePage(),
      ),
    ),
  );
}

