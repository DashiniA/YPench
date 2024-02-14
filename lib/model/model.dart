class userdata {
  String? email;
  String? username;

  userdata({this.username, this.email});

  factory userdata.fromMap(map) {
    return userdata(email: map['email'], username: map['username']);
  }

  Map<String, dynamic> toMap() {
    return {'username': username, 'email': email};
  }
}
