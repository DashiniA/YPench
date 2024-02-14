import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class getDataFBase extends StatelessWidget {
  final String documentId;

  getDataFBase({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference usres = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
      future: usres.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text('username:${data['username']}');
        }
        return Text('loading');
      }),
    );
  }
}
