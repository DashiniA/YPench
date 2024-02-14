import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class frogotPw extends StatefulWidget {
  const frogotPw({Key? key}) : super(key: key);

  @override
  _frogotPwState createState() => _frogotPwState();
}

class _frogotPwState extends State<frogotPw> {
  final _emailcontroller = TextEditingController();
  @override
  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    if (_formKey.currentState!.validate()) {}
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailcontroller.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              'Verify Email Has Send',
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            padding: EdgeInsets.all(16),
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Oops!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        e.message.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      );
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 5, 105, 255)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'YPench',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/forgotpw.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'To reset your password please enter valid Email',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Color.fromARGB(132, 255, 255, 255)),
                  maxLines: 1,
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Email can not be empty';
                    }
                    return null;
                  },
                  onSaved: (text) {
                    var _name = text;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 60,
                child: MaterialButton(
                  onPressed: passwordReset,
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  color: Colors.black,
                  shape: StadiumBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
