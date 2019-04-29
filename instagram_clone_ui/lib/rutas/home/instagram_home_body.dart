import "package:flutter/material.dart";
import 'package:instagram_clone_ui/rutas/home/instagram_list.dart';

class InstagramHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Ocupe todo el espacio disponible
        Flexible(
          child: new InstagramList()
        )
      ],
    );
  }
}