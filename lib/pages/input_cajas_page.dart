import 'package:flutter/material.dart';

class InputCajasPage extends StatelessWidget {
  const InputCajasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Inputs'),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 20.0,
        ),
        child: Column(
          children: [_crearInput()
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: 
        BorderRadius.circular(10.0),
        ),
        hintText: "Ingrese Nombre",
        labelText: "Nombre",
        suffixIcon: Icon(Icons.person),
        icon: Icon(Icons.account_circle),
      ),
    );
  }
}
