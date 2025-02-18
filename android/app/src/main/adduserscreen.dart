import 'package:flutter/material.dart';

class AddUserScreen extends StatefulWidget {
  @override
  _AddUserScreenState createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              TextField(
                controller: _surnameController,
                decoration: InputDecoration(labelText: 'Apellido'),
              ),
              TextField(
                controller: _dobController,
                decoration: InputDecoration(labelText: 'Fecha de Nacimiento'),
              ),
              TextField(
                controller: _nationalityController,
                decoration: InputDecoration(labelText: 'Nacionalidad'),
              ),
              TextField(
                controller: _sexController,
                decoration: InputDecoration(labelText: 'Sexo'),
              ),
              TextField(
                controller: _heightController,
                decoration: InputDecoration(labelText: 'Estatura'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes manejar el envío del formulario
                  print('Usuario agregado');
                  Navigator.pop(context);
                },
                child: Text('Agregar Usuario'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
