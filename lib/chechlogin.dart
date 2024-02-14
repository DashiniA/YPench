import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bottomappbar.dart';
import 'package:flutter_application_1/screens/loginPage.dart';

class checkLogin extends StatefulWidget {
  const checkLogin({Key? key}) : super(key: key);

  @override
  _checkLoginState createState() => _checkLoginState();
}

class _checkLoginState extends State<checkLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return appbar();
          } else {
            return homeScreen();
          }
        },
      ),
    );
  }
}
