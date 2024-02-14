import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/bottomappbar.dart';

class openingPage extends StatefulWidget {
  const openingPage({Key? key}) : super(key: key);

  @override
  _openingPageState createState() => _openingPageState();
}

class _openingPageState extends State<openingPage> {
  loaclTour() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return appbar();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/IMG_0788.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Chose Your Local Or Foreign Tour",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
              Container(
                alignment: Alignment.center,
                child: Center(
                  child: ButtonTheme(
                    buttonColor: Colors.purple,
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 234, 0, 255),
                      ),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      color: Color.fromARGB(255, 234, 0, 255),
                      child: const Text(
                        "LOCAL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: loaclTour,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Center(
                  child: ButtonTheme(
                    buttonColor: Colors.purple,
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 234, 0, 255),
                      ),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      color: Color.fromARGB(255, 234, 0, 255),
                      child: const Text(
                        "FOREIGN",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: loaclTour,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
