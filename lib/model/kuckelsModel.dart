import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HotelKn {
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

  HotelKn(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class servicedatakn {
  List<HotelKn> hotelkn = [];

  Future<List<HotelKn>> get() async {
    final currentUser = FirebaseFirestore.instance.collection('Knuckles');

    await currentUser.get().then((value) {
      hotelkn = [];
      value.docs.forEach((element) {
        hotelkn.add(HotelKn(
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

      print(hotelkn.length);
      print(hotelkn.first.owner);
      print(hotelkn.first.days);
      print(hotelkn.first.contact);
    });

    return hotelkn;
  }
}
