import 'package:flutter/material.dart';
import 'package:shop_app/App/widget/textfild_widget.dart';

class BottomSheetSingUpWidget extends StatefulWidget {
  BottomSheetSingUpWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetSingUpWidgetState createState() =>
      _BottomSheetSingUpWidgetState();
}

class _BottomSheetSingUpWidgetState extends State<BottomSheetSingUpWidget> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffFF785B)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33))))),
          child: SizedBox(
            width: 330,
            height: 68,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.expand_less_outlined),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 600,
                  child: Center(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xffFF785B),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '~~~',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFieldWidget(),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFieldWidget(),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFieldWidget(),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFieldWidget(),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
