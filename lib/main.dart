import 'package:flutter/material.dart';

import 'navigation_menus/map.dart';
import 'navigation_menus/nav_bottom.dart';
import 'navigation_menus/nav_tab.dart';
import 'reset_password.dart';
import 'signin.dart';
import 'signup.dart';
import 'update_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-Store ESPRIT',
      routes: {
        "/": (BuildContext context) {
          return const Signin();
        },
        "/resetPwd": (BuildContext context) {
          return const ResetPassword();
        },
        "/signup": (BuildContext context) {
          return const Signup();
        },
        "/home/updateUser": (BuildContext context) {
          return const UpdateUser();
        },
        "/navBottom": (BuildContext context) {
          return const NavigationBottom();
        },
        "/home/navTab": (BuildContext context) {
          return const NavigationTab();
        },
        "/maps": (BuildContext context) {
          return  Maps();
        }
      },
    );
  }
}