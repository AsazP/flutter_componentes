import 'package:flutter/material.dart';
import 'package:flutter_componentes/pages/alerta_page.dart';
import 'package:flutter_componentes/pages/animacion_container.dart';
import 'package:flutter_componentes/pages/avatars_page.dart';
import 'package:flutter_componentes/pages/card_page.dart';
import 'package:flutter_componentes/pages/home_page.dart';
import 'package:flutter_componentes/pages/input_cajas_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "alert": (BuildContext context) => AlertaPage(),
    "avatar":(BuildContext context)=>AvatarPage(),
      "card":(BuildContext context)=>CardPage(),
    "animatedContainer":(BuildContext context)=>AnimacionContainer(),
    "inputs":(BuildContext context)=>InputCajasPage(),
  };
}
