import 'package:flutter/material.dart';
import 'package:flutter_componentes/providers/menu_provider.dart';
import 'package:flutter_componentes/utils/icons_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final opciones = menuProvider.cargarData();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Components'),
      ),
      /*
   drawer: Container(
        width: 200.0,
        color: Colors.red,
      ),
   */
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      //builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _listaItem(snapshot.data, context),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  List<Widget> _listaItem(List<dynamic> data, BuildContext context) {
    List<Widget> opciones = [];

    data.forEach((item) {
      opciones.add(
        Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, item["ruta"]);
            },
            title: Text(item['texto']),
            leading: getIcon(item['icon']),
            trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
            ),
          ),
          Divider(),
        ],
      ));
    });
    return opciones;
  }
}
