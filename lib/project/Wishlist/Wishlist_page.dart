import 'package:flutter/material.dart';
import 'package:shop_app/App/constants/colors.dart';
import 'package:shop_app/App/constants/sizdBox.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackGraundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Text(
                'WishList',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
              ),
            ),
            cSizedBoxH5,
            Center(
              child: Container(
                width: 317,
                height: 10,
                child: Divider(
                  // height: ,
                  thickness: 4,
                  color: Color(0xffD8D8E1D9),
                ),
              ),
            ),
            cSizedBoxH10,
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Text(
                'You have favourited 3 dishes',
                style: TextStyle(
                    fontSize: 12,
                    color: cBlackColor,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
