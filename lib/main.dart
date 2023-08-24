import 'package:flutter/material.dart';

import 'App/presentation/wellecom_page/wellcom_page.dart';

void main(List<String> args) {
  runApp(ShopAppMobile());
}

class ShopAppMobile extends StatelessWidget {
  const ShopAppMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true, primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: WellcomPage(),
      // home: BottomSheetSingUpWidget(),
    );
  }
}
