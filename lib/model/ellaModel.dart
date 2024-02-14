import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HotelElla {
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

  HotelElla(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class servicedataella {
  List<HotelElla> hotelella = [];

  Future<List<HotelElla>> get() async {
    final currentUser = FirebaseFirestore.instance.collection('Ella');

    await currentUser.get().then((value) {
      hotelella = [];
      value.docs.forEach((element) {
        hotelella.add(HotelElla(
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

      print(hotelella.length);
      print(hotelella.first.owner);
      print(hotelella.first.days);
      print(hotelella.first.contact);
    });

    return hotelella;
  }
}
