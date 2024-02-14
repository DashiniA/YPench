import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/forgotPwpage.dart';

import 'createAccount.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final passwordPW = TextEditingController();
  final _emailcontroller = TextEditingController();

  Future signIN() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        });
    if (_formKey.currentState!.validate()) {}
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: passwordPW.text.trim(),
      );
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
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
                      const Text(
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
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    passwordPW.dispose();
    super.dispose();
  }

  Widget UserNameFeild() {
    return TextFormField(
      controller: _emailcontroller,
      cursorColor: Colors.white,
      autofillHints: [AutofillHints.email],
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(132, 255, 255, 255),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Email Address",
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon:
            Icon(Icons.email_outlined, color: Color.fromARGB(255, 80, 65, 82)),
      ),
      maxLength: 40,
      validator: (text) {
        if (text!.isEmpty) {
          return 'Email can not be empty';
        }

        return null;
      },
      onSaved: (text) {
        var _name = text;
      },
    );
  }

  Widget PasswordFeild() {
    return TextFormField(
      controller: passwordPW,
      obscureText: true,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: "Password",
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
        fillColor: Color.fromARGB(132, 255, 255, 255),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color.fromARGB(255, 80, 65, 82),
        ),
      ),
      maxLength: 15,
      maxLines: 1,
      validator: (text1) {
        if (text1!.isEmpty) {
          return 'Password can not be empty';
        }
        return null;
      },
      onSaved: (text1) {
        var _password = text1;
      },
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/IMG_0786.JPG"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 200,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const <Widget>[
                          Text(
                            'FLY LIKE A BIRD',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),

                      // child: Image.asset('assets/logo.png'),
                      height: MediaQuery.of(context).size.height / 2.77,
                      width: MediaQuery.of(context).size.height / 3,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "Welcome back. you've been missed!",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height / 20),
                    child: UserNameFeild(),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height / 20),
                    child: PasswordFeild(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                  width: MediaQuery.of(context).size.height / 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height / 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return frogotPw();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 216, 244)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 20,
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        onPressed: signIN,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return createAccount();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            '  CREATE ACCOUNT',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 3, 216, 244),
                                fontWeight: FontWeight.w900),
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
      ),
    );
  }
}
