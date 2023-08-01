import 'package:flutter/material.dart';

class WellcomPage extends StatelessWidget {
  const WellcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/lava.jpg',
                  ),
                  fit: BoxFit.cover),
            ), 
            child: Column( 
              children: [
                Center(
                  child: Text(
                    'Ema BurGer',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Borel'),
                  ),
                ),
                Text(
                  'Welcome to Ema BurGer',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
