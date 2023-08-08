import 'package:flutter/material.dart';

class BottomSheetSingUpWidget extends StatefulWidget {
  BottomSheetSingUpWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetSingUpWidgetState createState() =>
      _BottomSheetSingUpWidgetState();
}

class _BottomSheetSingUpWidgetState extends State<BottomSheetSingUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
          ,
          ),
          child: SizedBox(
            width: 330,
            height: 68,
            child: Text('data'),
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
                            child: const Text('Close BottomSheet'),
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
