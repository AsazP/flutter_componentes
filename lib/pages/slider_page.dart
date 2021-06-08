import 'package:flutter/material.dart';

class SliderpageSatate extends StatefulWidget {
  const SliderpageSatate({Key? key}) : super(key: key);

  @override
  _SliderpageSatateState createState() => _SliderpageSatateState();
}

class _SliderpageSatateState extends State<SliderpageSatate> {
  double _valueSlider = 10;
  bool _istrue = false;
  bool _istrueSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Slider'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 15.0,
        ),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              flex: 2,
              child: _mostraImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      label: "Tamaño",
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (value) {
        print(value);
        _valueSlider = value;
        setState(() {});
      },
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
        title: Text('Check!'),
        value: _istrue,
        onChanged: (value) {
          //value = _istrue;
          _istrue = value!;
          setState(() {});
        },
        );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text("Switch"),
        value: _istrueSwitch,
        onChanged: (value) {
          _istrueSwitch = value;
          setState(() {});
        });
  }

  Widget _mostraImagen() {
    return Image(
      image: NetworkImage(
          'https://i.picsum.photos/id/1003/1181/1772.jpg?hmac=oN9fHMXiqe9Zq2RM6XT-RVZkojgPnECWwyEF1RvvTZk'),
      width: _valueSlider,
      fit: BoxFit.cover,
    );
  }
}
