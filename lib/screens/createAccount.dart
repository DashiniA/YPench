import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/loginPage.dart';

class createAccount extends StatefulWidget {
  const createAccount({Key? key}) : super(key: key);

  @override
  _createAccountState createState() => _createAccountState();
}

class _createAccountState extends State<createAccount> {
  final _newpassword = TextEditingController();
  final _newUserName = TextEditingController();
  final _confirmpassword = TextEditingController();
  final _emailNew = TextEditingController();

  Future join() async {
    if (confirmpassword() && _fromkey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailNew.text.trim(), password: _newpassword.text.trim());
        adduser(_newUserName.text.trim(), _emailNew.text.trim());

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
                      children: const [
                        Text(
                          "Congratulations",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Your account is ready to use',
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
        print(e);
      }
    } else {
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
                    children: const [
                      Text(
                        "Oops!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Details are not correct',
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

  Future adduser(String userName, String emailAddress) async {
    return await FirebaseFirestore.instance.collection('users').add({
      'username': userName,
      'email': emailAddress,
    });
  }

  bool confirmpassword() {
    if (_confirmpassword.text.trim() == _newpassword.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _newUserName.dispose();
    _confirmpassword.dispose();
    _emailNew.dispose();
    _newpassword.dispose();
    super.dispose();
  }

  backToLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return homeScreen();
        },
      ),
    );
  }

  Widget Usernamefeild() {
    return TextFormField(
      controller: _newUserName,
      maxLength: 100,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "User Name",
        filled: true,
        prefixIcon: Icon(Icons.account_circle_outlined),
        fillColor: Color.fromARGB(132, 255, 255, 255),
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      validator: (tetx11) {
        if (tetx11!.isEmpty) {
          return 'User name cna not be empty';
        }
        return null;
      },
      onSaved: (text11) {
        var nName = (text11);
      },
    );
  }

  Widget emailFeild() {
    return TextFormField(
      controller: _emailNew,
      maxLength: 100,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: "Enter Email address",
        filled: true,
        prefixIcon: Icon(Icons.email_outlined),
        fillColor: Color.fromARGB(132, 255, 255, 255),
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      validator: (text12) {
        if (text12!.isEmpty) {
          return 'Email can not be empty';
        }
        return null;
      },
      onSaved: (text12) {
        var _Nemail = text12;
      },
    );
  }

  Widget newPassword() {
    return TextFormField(
      controller: _newpassword,
      obscureText: true,
      maxLength: 20,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: "New Password",
        prefixIcon: Icon(Icons.lock_outline),
        filled: true,
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(132, 255, 255, 255),
      ),
      validator: (text13) {
        if (text13!.isEmpty) {
          return ' Password can not be empty';
        }
        return null;
      },
      onSaved: (text14) {
        var _nPassword = text14;
      },
    );
  }

  Widget confirmPassword() {
    return TextFormField(
      controller: _confirmpassword,
      obscureText: true,
      maxLength: 20,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: "Confirm Password",
        prefixIcon: Icon(Icons.lock_outline),
        filled: true,
        hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        fillColor: Color.fromARGB(132, 255, 255, 255),
      ),
      validator: (text14) {
        if (text14!.isEmpty) {
          return 'Confirm Email can not be empty';
        }
        return null;
      },
      onSaved: (text14) {
        var _cPassword = text14;
      },
    );
  }

  final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/IMG_0786.JPG"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
              Form(
                key: _fromkey,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'WELCOME',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: MediaQuery.of(context).size.height / 25),
                      ),
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height / 20),
                        child: Usernamefeild(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 90,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height / 20),
                        child: emailFeild(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 90,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height / 20),
                        child: newPassword(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 90,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height / 20),
                        child: confirmPassword(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 90,
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 20,
                      child: MaterialButton(
                        onPressed: join,
                        child: Text(
                          'JOIN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        color: Colors.black,
                        shape: StadiumBorder(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: backToLogin,
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 10,
                                color: Color.fromARGB(255, 0, 225, 255)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
