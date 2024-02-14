import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Hoteladms {
  String? owner;
  String? name;
  String? ImageUrl;
  String? address;
  String? days;
  String? price;
  String? contact;
  String? rooms;
  String? rating;
  String? locationUrl;

  Hoteladms(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class servicedataadms {
  List<Hoteladms> hoteladmspeek = [];

  Future<List<Hoteladms>> get() async {
    final currentUser = FirebaseFirestore.instance.collection("Adam'sPeek");

    await currentUser.get().then((value) {
      hoteladmspeek = [];
      value.docs.forEach((element) {
        hoteladmspeek.add(Hoteladms(
            element.data()['owner'],
            element.data()['name'],
            element.data()['ImageUrl'],
            element.data()['address'],
            element.data()['days'],
            element.data()['price'],
            element.data()['rooms'],
            element.data()['rating'],
            element.data()['contact'],
            element.data()['locationUrl']));
      });

      print(hoteladmspeek.length);
      print(hoteladmspeek.first.owner);
      print(hoteladmspeek.first.days);
      print(hoteladmspeek.first.contact);
    });

    return hoteladmspeek;
  }
}
