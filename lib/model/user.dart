import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Hotel {
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

  Hotel(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class users {
  String? username;

  users(this.username);
}

class servicedata {
  List<Hotel> hotel = [];

  Future<List<Hotel>> get() async {
    final currentUser = FirebaseFirestore.instance.collection('Yala');

    await currentUser.get().then((value) {
      hotel = [];
      value.docs.forEach((element) {
        hotel.add(Hotel(
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

      print(hotel.length);
      print(hotel.first.owner);
      print(hotel.first.days);
      print(hotel.first.contact);
    });

    return hotel;
  }
}
