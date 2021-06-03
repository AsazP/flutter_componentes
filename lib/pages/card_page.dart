import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> numero = [1, 2, 3];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Card'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: ListView(
          children: [
          _cardTipo1(),
            SizedBox(height: 20.0),
          _cardTipo2(),
            SizedBox(height: 20.0),
           _cardTipo1(),
            SizedBox(height: 20.0),
          _cardTipo2(),
           ],
        ),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('Cabecera de card'),
            subtitle: Text('To round the corners of a rectangular shape'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: null,
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: null,
                child: Text('Ok'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return   Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Column(
                  children: [
                 FadeInImage(
                    image: NetworkImage(
                            'https://image.freepik.com/vector-gratis/fondo-diseno-plano-dia-nacional-abuelos_23-2148618481.jpg',
                             ),
                              placeholder: AssetImage('assets/jar-loading.gif'),
                              fadeInDuration: Duration(milliseconds: 300),
                              fit: BoxFit.cover,
                            ), 
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "To round the corners of a rectangular shape, use the borderRadius of properity a BoxDecoration. "+
                                "To round the corners of a rectangular shape, use the borderRadius of properity a BoxDecoration.",
                              ),
                            )
                  ],
                ),
              ),
            );
  }
}
