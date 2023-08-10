import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/App/widget/bottom_sheet_sing_up_widget.dart';

import 'project/wellecom_page/wellcom_page.dart';

void main(List<String> args) {
  runApp(ShopAppMobile());
}

class ShopAppMobile extends StatelessWidget {
  const ShopAppMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WellcomPage(),
      // home: BottomSheetSingUpWidget(),
    );
  }
}
