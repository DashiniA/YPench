import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HotelBelihuloya {
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

  HotelBelihuloya(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class servicedatadelihuloya {
  List<HotelBelihuloya> hotelBelhuloya = [];

  Future<List<HotelBelihuloya>> get() async {
    final currentUser = FirebaseFirestore.instance.collection('Belihuloya');

    await currentUser.get().then((value) {
      hotelBelhuloya = [];
      value.docs.forEach((element) {
        hotelBelhuloya.add(HotelBelihuloya(
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

      print(hotelBelhuloya.length);
      print('beliioi${hotelBelhuloya.first.owner}');
      print(hotelBelhuloya.first.days);
      print(hotelBelhuloya.first.contact);
    });

    return hotelBelhuloya;
  }
}
