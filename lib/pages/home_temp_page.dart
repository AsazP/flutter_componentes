import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
// const ({Key? key}):super (key key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView( 
       children:[
     ListTile(
       title: Text("Myrian"),
       subtitle: Text("Estudiante"),
       leading: CircleAvatar(),
       trailing: Icon(Icons.info),
       onTap: (){
         print('Clic...');
       },
     ),
       ListTile(
       title: Text("Myrian"),
       subtitle: Text("Estudiante"),
       leading: CircleAvatar(),
       trailing: Icon(Icons.info),
       onTap: (){
         print('Clic...');
       },
     ),
        ],
     ),
    );
  }
}
