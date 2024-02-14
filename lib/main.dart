// ignore_for_file: unnecessary_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/common/topbar.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/screens/internetConnectionChecker.dart';
import 'package:flutter_application_1/screens/listview.dart';
import 'package:flutter_application_1/screens/loginPage.dart';
import 'package:flutter_application_1/screens/mainScreen.dart';
import 'package:flutter_application_1/screens/practiseUI.dart';
import 'package:load/load.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chechlogin.dart';
import 'package:flutter_application_1/themeProvider/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => internetConnectionChecker())
      ],
      child: LoadingProvider(
        themeData: LoadingThemeData(),
        child: App(),
      )));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final servicedata Servicedata = servicedata();
  @override
  void initState() {
    super.initState();
  }

  // void get() async {
  //   final currentUser = FirebaseFirestore.instance.collection('Galle');
  //   List<Hotel> hotel = [];
  //   currentUser.get().then((value) {
  //     value.docs.forEach((element) {
  //       hotel.add(Hotel(element.data()['owner'], element.data()['hotelName']));
  //     });

  //     print(hotel.first.hotelName);
  //     print(hotel.first.owner);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(debugShowCheckedModeBanner: false, home: checkLogin());
    });
  }
}
