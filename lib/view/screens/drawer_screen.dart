import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/provider/drawer_provider.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
            value: Provider.of<DrawerProvider>(context).Sw,
            onChanged: (bool val) => Provider.of<DrawerProvider>(context).SwTHeme(val),
        ),
      ],
    );
  }
}
