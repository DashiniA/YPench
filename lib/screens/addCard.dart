import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class cardAdd extends StatefulWidget {
  const cardAdd({Key? key}) : super(key: key);

  @override
  _cardAddState createState() => _cardAddState();
}

class _cardAddState extends State<cardAdd> {
  final _accountNumber = TextEditingController();
  final _expireDate = TextEditingController();
  final _securityCode = TextEditingController();
  final _expireYear = TextEditingController();
  final _holderName = TextEditingController();
  Future addCard() async {
    if (_fromkey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _accountNumber.dispose();
    _expireDate.dispose();
    _securityCode.dispose();
    _expireYear.dispose();
    _holderName.dispose();

    super.dispose();
  }

  Future setCardDetails(int cardNumber, String holderName, int month, int year,
      int securityCode) async {
    Future.delayed(Duration(seconds: 1));
    return await FirebaseFirestore.instance.collection('CardDetails').add({
      'Visa card Number': cardNumber,
      'Card Holder Name': holderName,
      'Expire Month': month,
      'Expire year': year,
      'CVV': securityCode
    });
  }

  Widget accountNumber() {
    return TextFormField(
      controller: _accountNumber,
      obscureText: false,
      maxLength: 16,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Add card Number',
      ),
      validator: (textAcNum) {
        if (textAcNum!.isEmpty) {
          return 'Card number can not be empty';
        }
        return null;
      },
      onSaved: (text11) {
        var _accNUm = (text11);
      },
    );
  }

  Widget cardHolderName() {
    return TextFormField(
      controller: _holderName,
      obscureText: false,
      maxLength: 30,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Card holder name'),
      validator: (textCardHN) {
        if (textCardHN!.isEmpty) {
          return 'Card holder name can not be empty';
        }
        return null;
      },
      onSaved: (text31) {
        var _nameCH = (text31);
      },
    );
  }

  Widget expireDate() {
    return TextFormField(
      controller: _expireDate,
      obscureText: false,
      maxLength: 2,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "MM"),
      validator: (textdate) {
        if (textdate!.isEmpty) {
          return 'Month can not be empty';
        }
        return null;
      },
      onSaved: (text30) {
        var _year = (text30);
      },
    );
  }

  Widget year() {
    return TextFormField(
      controller: _expireYear,
      obscureText: false,
      maxLength: 2,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "YY"),
      validator: (textYear) {
        if (textYear!.isEmpty) {
          return 'Year can not be empty';
        }
        return null;
      },
      onSaved: (text29) {
        var _year = (text29);
      },
    );
  }

  Widget cvv() {
    return TextFormField(
      controller: _securityCode,
      obscureText: false,
      maxLength: 3,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "CVV"),
      validator: (textCvv) {
        if (textCvv!.isEmpty) {
          return 'CVV can not be empty';
        }
        return null;
      },
      onSaved: (text28) {
        var cvvCard = (text28);
      },
    );
  }

  final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Scaffold(
          body: Form(
            key: _fromkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1,
                  child: Image.asset(
                    'assets/376-3769996_debit-card-blue-visa-hd-png-download.png',
                    fit: BoxFit.cover,
                  ),
                ),
                accountNumber(),
                SizedBox(height: 10.0),
                cardHolderName(),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                            child: expireDate(),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                            child: year(),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.2,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                            child: cvv(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ButtonTheme(
                  minWidth: 300.0,
                  height: 60,
                  child: MaterialButton(
                    onPressed: addCard,
                    child: Text(
                      'ADD CARD',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    color: Color.fromARGB(255, 14, 145, 233),
                    shape: StadiumBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
