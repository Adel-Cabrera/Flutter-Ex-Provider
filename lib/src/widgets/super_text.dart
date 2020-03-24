import 'package:flutter/material.dart';
import 'package:flutterapp/src/providers/heroesinfo.dart';
import 'package:flutterapp/src/providers/villanosinfo.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Consumer<HeroesInfo>(
          builder: (context, heroeAccessor, _) => Text(
            heroeAccessor.heroe,
            style: TextStyle(
              fontSize: 30.0,
              color: heroeAccessor.colorBase,
            ),
          ),
        ),
        Text(
          villanosInfo.villano,
        ),
      ],
    );
  }
}
