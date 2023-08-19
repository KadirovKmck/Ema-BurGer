import 'package:flutter/material.dart';
import 'package:shop_app/project/drower/drower_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(backgroundColor: Colors.amber),
        ),
      ),
    );
  }
}
