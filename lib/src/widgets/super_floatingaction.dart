import 'package:flutter/material.dart';
import 'package:flutterapp/src/providers/heroesinfo.dart';
import 'package:flutterapp/src/providers/villanosinfo.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.accessibility),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Ironman';
            villanosInfo.villano = 'El Mandarin';
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.radio_button_checked),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = 'Capitán América';
            villanosInfo.villano = 'Red Skull';
          },
        ),
      ],
    );
  }
}
