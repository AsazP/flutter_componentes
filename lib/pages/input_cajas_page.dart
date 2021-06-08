import 'package:flutter/material.dart';

class InputCajasPage extends StatefulWidget {
  const InputCajasPage({Key? key}) : super(key: key);

  @override
  _InputCajasPageState createState() => _InputCajasPageState();
}

class _InputCajasPageState extends State<InputCajasPage> {
  String? _nombre;
  String? _email;
  String? _password;
  String? _fecha;

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
          children: [
            _crearInput(),
            SizedBox(
              height: 10.0,
            ),
            _crearInputEmail(),
            SizedBox(
              height: 10.0,
            ),
            _crearPassword(),
            SizedBox(
              height: 10.0,
            ),
              _crearFecha(),
            SizedBox(
              height: 10.0,
            ),
            Text("Fecha: $_fecha"),
            //Text("Nombre: $_nombre"),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Ingrese Nombre",
        labelText: "Nombre",
        suffixIcon: Icon(Icons.person),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (value) {
        _nombre = value;
        setState(() {});
      },
    );
  }

  Widget _crearInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Ingrese Email",
        labelText: "Email",
        //a la drecre el icono
        suffixIcon: Icon(Icons.email_outlined),
        //a la izqyuerda
        icon: Icon(Icons.email),
      ),
      onChanged: (value) {
        _email = value;
        setState(() {});
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Ingrese Password",
        labelText: "Password",
        //a la drecre el icono
        suffixIcon: Icon(Icons.vpn_key_sharp),
        //a la izqyuerda
        icon: Icon(Icons.vpn_key_sharp),
      ),
      onChanged: (value) {
        _password = value;
        setState(() {});
      },
    );
  }

  Widget _crearFecha() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Ingrese Fecha",
        labelText: "Fecha",
        //a la drecre el icono
        suffixIcon: Icon(Icons.calendar_today),
        //a la izqyuerda
        icon: Icon(Icons.calendar_today_outlined),
      ),
      onTap: () {
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
     context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale("es","ES"),
     );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
      });
    }
  }
}
