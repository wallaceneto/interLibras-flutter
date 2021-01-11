import 'package:flutter/material.dart';
import 'package:interLibras/components/drawer/menu.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
      ),
      endDrawer: MenuDrawer(),
    );
  }
}
