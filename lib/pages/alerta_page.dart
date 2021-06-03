import 'package:flutter/material.dart';

class AlertaPage extends StatelessWidget {
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alerta'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () => _mostrarAlerta(context),
        child: Text('Mostrar Alerta'),
        color: Colors.blue,
        textColor: Colors.white,
        shape: StadiumBorder(),
      )),
    );
  }


  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
              ),
            title: Text('Cabecera'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('To round corners of a rectangular shape'),
                FlutterLogo(size: 100.0,),
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
              ), 
              TextButton
              (onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
              )
            ],
          );
        });
  }
}