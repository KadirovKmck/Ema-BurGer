import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'project/presentation/App/wellecom_page/wellcom_page.dart';

void main(List<String> args) {
  runApp(ShopAppMobile());
}

class ShopAppMobile extends StatelessWidget {
  const ShopAppMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WellcomPage(),
    );
  }
}
