import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = [];
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;
  int _ultimoItem = 0;

  @override
  void initState() {
    // TODO: implement initState
    _agregarItems();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ListView"),
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPagina,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (context, index) {
            final imagen = _listaNumeros[index];
            return FadeInImage(
                placeholder: AssetImage("assets/jar-loading.gif"),
                image: NetworkImage(
                    'https://picsum.photos/500/300/?image=$imagen'));
          }),
    );
  }

  void _agregarItems() {
    for (var i = 0; i < 10; i++) {
      _listaNumeros.add(i);
    }
  }

  Future<void> _obtenerPagina() {
    final _duration = Duration(milliseconds: 2);
    new Timer(_duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregarItems();
    });

    return Future.delayed(_duration);
  }

  Widget _crearLoading() {
    print("islloading... $_isLoading");
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()]),
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> fetchData() async {
    _isLoading = true;
    // final duration=new
    //
    // Duration(seconds: 2);
    setState(() {});
    // return new Timer(Duration(seconds: 2), responseHTTP());
    return null;
  }

  void responseHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(microseconds: 300), curve: Curves.fastOutSlowIn);

    _agregarItems();
  }
}
