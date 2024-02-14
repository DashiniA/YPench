import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mainScreen.dart';

class topBar extends StatelessWidget {
  const topBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),
              )
            ],
          ),
        ),
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width / 1,
      ),
    );
  }
}
