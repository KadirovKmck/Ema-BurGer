import 'package:flutter/material.dart';
import 'package:shop_app/App/widget/textfild_widget.dart';
import 'package:shop_app/project/menus/menu_page.dart';

class BottomSheetSingUpWidget extends StatefulWidget {
  BottomSheetSingUpWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetSingUpWidgetState createState() =>
      _BottomSheetSingUpWidgetState();
}

class _BottomSheetSingUpWidgetState extends State<BottomSheetSingUpWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Color(0xffFBEDEA),
                // elevation: 1000,
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Container(
                                  width: 38,
                                  child: Divider(
                                    thickness: 2,
                                    color: Color(0xffFF785B),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  'Sing Up',
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xffFF785B),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: TextFieldWidget(
                                    hinText: 'Your Name',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: TextFieldWidget(
                                    hinText: 'Enter Your Email',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: TextFieldWidget(
                                    hinText: 'Enter Your Password',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: TextFieldWidget(
                                    hinText: 'Enter Your Confirm Password ',
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MenuPage()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 90, vertical: 23),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xffFF785B)),
                                    child: const Text(
                                      'Never Hungry Again!',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                // description Sign in with
                                const Text(
                                  'or Sing Up with',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(153, 154, 153, 0.90),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 55,
                                ),
                                //login with facebook and google
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/facebook.png'),
                                        radius: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/google.png'),
                                        radius: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
      ),
    );
  }
}
