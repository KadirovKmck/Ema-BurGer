import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shop_app/App/constants/colors.dart';
import 'package:shop_app/App/constants/sizdBox.dart';
import 'package:shop_app/App/constants/style.dart';
import 'package:shop_app/project/Wishlist/Wishlist_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  // late File? imageFile;

  // void selectImage(ImageSource source) async {
  //   XFile? pickedFile = await ImagePicker().pickImage(source: source);
  //   // if(pickedFile != null)
  // }

  void cropImage() async {}

  void showPhotoOptions() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Upload Profile Picture'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    // Navigator.pop(context);
                    // selectImage(ImageSource.gallery);
                  },
                  leading: const Icon(Icons.photo_album),
                  title: const Text("Select from Gallery"),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.pop(context);
                    // selectImage(ImageSource.camera);
                  },
                  leading: const Icon(Icons.photo_camera),
                  title: const Text("Take a photo"),
                ),
              ],
            ),
          );
        });
  }

  return Container(
    height: MediaQuery.of(context).size.height * .27,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/lava.jpg'), fit: BoxFit.cover),
    ),
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    child: Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * .01,
          right: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  'assets/images/lava.jpg',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'mr.X',
                style: TextStyle(fontSize: 28, color: cWhiteColor),
              ),
              Text(
                'test@gmail.com',
                style: TextStyle(fontSize: 16, color: cWhiteColor),
              ),
              cSizedBoxH20
            ],
          ),
        ),
        Positioned(
          top: 100,
          right: 80,
          child: FloatingActionButton.small(
            backgroundColor: cWhiteColor,
            onPressed: () {
              showPhotoOptions();
            },
            child: const Icon(
              Icons.camera_alt,
              color: cRegColor,
              size: 20,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(
              Icons.person,
              color: cRegColor,
            ),
            title: Text('profile'.toUpperCase(), style: cDrawerButtonsStyle),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite,
              color: cRedColor,
            ),
            title: Text(
              'Wishlist'.toUpperCase(),
              style: cDrawerButtonsStyle,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WishlistPage()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.house_outlined,
              color: cRegColor,
            ),
            title: Text(
              'addresses'.toUpperCase(),
              style: cDrawerButtonsStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on_outlined,
              color: cRegColor,
            ),
            title: Text(
              'Locartion'.toUpperCase(),
              style: cDrawerButtonsStyle,
            ),
            onTap: () {},
          ),
          const Divider(
            color: cRegColor,
            height: 5,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
              color: cRegColor,
            ),
            title: Text(
              'settings'.toUpperCase(),
              style: cDrawerButtonsStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_outlined,
              color: cRegColor,
            ),
            title: Text(
              'notifications'.toUpperCase(),
              style: cDrawerButtonsStyle,
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 140,
          ),
          ListTile(
              title: Center(
                child: Text(
                  'log out'.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, color: Color(0xfffa1000)),
                ),
              ),
              onTap: () {
                // FirebaseAuth.instance.signOut().then(
                //     (value) => Navigator.pushNamed(context, WelcomePage.route));
              }),
        ],
      ),
    );
