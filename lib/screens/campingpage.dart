// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/belihuloyaModel.dart';
import 'package:flutter_application_1/model/ellaModel.dart';
import 'package:flutter_application_1/model/kuckelsModel.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/screens/bottomappbar.dart';
import 'package:flutter_application_1/widget/container/hotel_view.dart';
import 'package:flutter_application_1/widget/container/hotel_viewBelihuloya.dart';
import 'package:flutter_application_1/widget/container/hotel_viewElla.dart';
import 'package:flutter_application_1/widget/container/hotel_viewKn.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'internetConnectionChecker.dart';

class campainPage extends StatefulWidget {
  const campainPage({Key? key}) : super(key: key);

  @override
  _campainPageState createState() => _campainPageState();
}

class _campainPageState extends State<campainPage> {
  getinYala() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return yalaindise();
        },
      ),
    );
  }

  getInElla() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return ellainside();
        },
      ),
    );
  }

  getInBelihuloya() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return belihuloyaInside();
        },
      ),
    );
  }

  getInKnuckles() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return knucklesInside();
        },
      ),
    );
  }

  // getInKithulgala() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(builder: (_) {
  //       return kithulgalaInside();
  //     }),
  //   );
  // }

  // getInVaddaVillage() {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
  //     return vaddaVilageinside();
  //   }));
  // }

  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<internetConnectionChecker>(context, listen: false)
        .initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return appbar();
              }));
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
            color: const Color.fromARGB(255, 255, 0, 179),
            iconSize: 30.0,
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: .5,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 5, 105, 255)),
        title: const Text(
          'CAMPING',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: context.watch<internetConnectionChecker>().setnetworkState
                ? SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.height / 30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Travel Options',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: Icon(
                                  Icons.local_taxi,
                                  size: MediaQuery.of(context).size.height / 30,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: Icon(
                                  Icons.pedal_bike_sharp,
                                  size: MediaQuery.of(context).size.height / 30,
                                  color: const Color.fromARGB(255, 0, 255, 98),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: Icon(
                                  Icons.directions_bus_rounded,
                                  size: MediaQuery.of(context).size.height / 30,
                                  color: Color.fromARGB(255, 162, 0, 255),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color:
                                      const Color.fromARGB(255, 255, 253, 253),
                                ),
                                child: Icon(
                                  Icons.train,
                                  size: MediaQuery.of(context).size.height / 30,
                                  color: Color.fromARGB(255, 0, 238, 255),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                child: const Text(
                                  'Taxi',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                child: const Text(
                                  'Bike',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                child: const Text(
                                  'Bus',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 13,
                                child: const Text(
                                  'Train',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 200,
                          ),
                          const Divider(
                            color: Color.fromARGB(64, 0, 0, 0),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          Text(
                            'Best Camping Places In Country',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height / 40,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: getinYala,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(26, 0, 0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 2),
                                    ],
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.red,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://t4.ftcdn.net/jpg/01/30/56/47/360_F_130564726_JiHcgRj4kxKqNVN3BxqUg4Nco69Hkpgu.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          'Yala Wildlife National Park',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Multiple Entrance\nAvailable',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    70,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 19,
                              ),
                              GestureDetector(
                                onTap: getInElla,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.4,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(26, 0, 0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 2),
                                    ],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://thesailor343.files.wordpress.com/2019/01/lrm_export_76331017815956_20190106_114112455-01.jpeg?w=1400',
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.red,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Ella, Srilanka',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          60,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Badulla District of \nUva Province',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    70,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: getInBelihuloya,
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  height:
                                      MediaQuery.of(context).size.height / 2.4,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(26, 0, 0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 2),
                                    ],
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'https://images.thrillophilia.com/image/upload/s--e8nbs5XB--/c_fill,h_450,q_auto,w_400/f_auto,fl_strip_profile/v1/images/photos/000/176/591/original/1573019568_shutterstock_248736571.jpg.jpg?1573019568'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.red,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Belihuloya',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          60,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Ratnapura District,\nSabaragamuwa \nProvince',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    70,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 19,
                                height: MediaQuery.of(context).size.height / 2,
                              ),
                              GestureDetector(
                                onTap: getInKnuckles,
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  height:
                                      MediaQuery.of(context).size.height / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(26, 0, 0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 2),
                                    ],
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'https://nexttravelsrilanka.com/wp-content/uploads/2021/05/A-man-at-the-top-of-Knuckles-Mountain-Range-the-Fascinating-Wonder-of-Nature-in-Sri-Lanka..jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.red,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Knuckles Mountain',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          60,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Kandy,\nnorthern end of\nCentral Highlands ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    70,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   children: <Widget>[
                          //     GestureDetector(
                          //       onTap: getInKithulgala,
                          //       child: Container(
                          //         alignment: Alignment.bottomLeft,
                          //         height:
                          //             MediaQuery.of(context).size.height / 2.4,
                          //         width:
                          //             MediaQuery.of(context).size.width / 2.5,
                          //         decoration: BoxDecoration(
                          //           boxShadow: const [
                          //             BoxShadow(
                          //                 color: Color.fromARGB(26, 0, 0, 0),
                          //                 blurRadius: 20,
                          //                 spreadRadius: 2),
                          //           ],
                          //           image: const DecorationImage(
                          //               image: NetworkImage(
                          //                   'https://www.magicalisleholidays.com/image/pages/accommodation/accommodation-kithulgala/borderlands.jpg'),
                          //               fit: BoxFit.cover),
                          //           borderRadius: BorderRadius.circular(20.0),
                          //           color: Colors.red,
                          //         ),
                          //         child: Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: Column(
                          //             mainAxisAlignment: MainAxisAlignment.end,
                          //             children: <Widget>[
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.start,
                          //                 children: <Widget>[
                          //                   Text(
                          //                     'Kitulgala',
                          //                     style: TextStyle(
                          //                         color: Colors.white,
                          //                         fontSize:
                          //                             MediaQuery.of(context)
                          //                                     .size
                          //                                     .height /
                          //                                 60,
                          //                         fontWeight: FontWeight.bold),
                          //                   ),
                          //                 ],
                          //               ),
                          //               Row(
                          //                 children: <Widget>[
                          //                   Icon(
                          //                     Icons.location_on_outlined,
                          //                     color: Colors.white,
                          //                   ),
                          //                   Text(
                          //                     'Kitulgala, \nSabaragamuwa \nProvince ',
                          //                     style: TextStyle(
                          //                       color: Colors.white,
                          //                       fontWeight: FontWeight.normal,
                          //                       fontSize: MediaQuery.of(context)
                          //                               .size
                          //                               .height /
                          //                           70,
                          //                     ),
                          //                   )
                          //                 ],
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //     SizedBox(
                          //       width: MediaQuery.of(context).size.width / 19,
                          //     ),
                          //     GestureDetector(
                          //       onTap: getInVaddaVillage,
                          //       child: Container(
                          //         alignment: Alignment.bottomLeft,
                          //         height:
                          //             MediaQuery.of(context).size.height / 2.4,
                          //         width:
                          //             MediaQuery.of(context).size.width / 2.5,
                          //         decoration: BoxDecoration(
                          //           boxShadow: const [
                          //             BoxShadow(
                          //                 color: Color.fromARGB(26, 0, 0, 0),
                          //                 blurRadius: 20,
                          //                 spreadRadius: 2),
                          //           ],
                          //           image: const DecorationImage(
                          //               image: NetworkImage(
                          //                   'https://travelmapsrilanka.com/img/camping/camping-sri-lanka-udawalawe.jpg'),
                          //               fit: BoxFit.cover),
                          //           borderRadius: BorderRadius.circular(20.0),
                          //           color: Colors.red,
                          //         ),
                          //         child: Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: Column(
                          //             mainAxisAlignment: MainAxisAlignment.end,
                          //             children: <Widget>[
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.start,
                          //                 children: <Widget>[
                          //                   Text(
                          //                     'Vaddha Village',
                          //                     style: TextStyle(
                          //                         color: Colors.white,
                          //                         fontSize:
                          //                             MediaQuery.of(context)
                          //                                     .size
                          //                                     .height /
                          //                                 60,
                          //                         fontWeight: FontWeight.bold),
                          //                   ),
                          //                 ],
                          //               ),
                          //               Row(
                          //                 children: <Widget>[
                          //                   Icon(
                          //                     Icons.location_on_outlined,
                          //                     color: Colors.white,
                          //                   ),
                          //                   Text(
                          //                     'Dabana\nEast the city of \nMahiyangana',
                          //                     style: TextStyle(
                          //                       color: Colors.white,
                          //                       fontWeight: FontWeight.normal,
                          //                       fontSize: MediaQuery.of(context)
                          //                               .size
                          //                               .height /
                          //                           70,
                          //                     ),
                          //                   )
                          //                 ],
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  )
                : CircularProgressIndicator.adaptive()),
      ),
    );
  }
}

// *****************sub pages yala indside*****************

class yalaindise extends StatefulWidget {
  const yalaindise({Key? key}) : super(key: key);

  @override
  _yalaindiseState createState() => _yalaindiseState();
}

class _yalaindiseState extends State<yalaindise> {
  servicedata hotel = servicedata();
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: false,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 50.0,
                    color: Color.fromARGB(71, 0, 0, 0),
                    spreadRadius: 1,
                  )
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.worldatlas.com/upload/7f/6c/cf/shutterstock-513139585.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
                        child: Container(
                          alignment: Alignment.center,
                          child: IconButton(
                              onPressed: (() {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return campainPage();
                                }));
                              }),
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(92, 255, 255, 255),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(75, 255, 255, 255)),
                              child: IconButton(
                                onPressed: yalaImages,
                                icon: Icon(
                                  Icons.photo_library_outlined,
                                  size: 30,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(92, 255, 255, 255),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(75, 255, 255, 255)),
                              child: Text(
                                '$rating',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Yala National Park',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Your Experience',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromARGB(0, 135, 201, 146)),
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color.fromARGB(0, 253, 253, 253)),
                    child: RatingBar.builder(
                      initialRating: rating,
                      itemSize: 25,
                      minRating: 1,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: const Center(
                  child: Text(
                    "Yala (යාල) National Park is the most visited and second largest national park in Sri Lanka, bordering the Indian Ocean. The park consists of five blocks, two of which are now open to the public, and also adjoining parks. The blocks have individual names such as, Ruhuna National Park (Block 1), and Kumana National Park or 'Yala East' for the adjoining area.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Top Hotels And Resorts",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FutureBuilder(
              future: hotel.get(),
              builder: ((context, AsyncSnapshot<List<Hotel>> snapshot) {
                if (snapshot.hasData) {
                  print('----->');
                  print(snapshot.data?.first.name);
                  List<Hotel> data = snapshot.data!;
                  print(data.length);
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        child: Column(
                          children: [
                            HotelView(hotel: data[index]),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      );
                    }),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
            ),
          ],
        ),
      ),
    );
  }

  void yalaImages() {
    showSlidingBottomSheet(
      context,
      builder: ((context) {
        return SlidingSheetDialog(
          elevation: 8,
          avoidStatusBar: false,
          dismissOnBackdropTap: true,
          cornerRadius: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      child: Text('Images'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/aafi5eaxotbgtvdzy3en/Yala%20National%20Park%20Safari%20Experience%20from%20Mirissa,%20Sri%20Lanka.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8HTi6nwo1NQZLpNF1oevaQ2V7fG_vIYxq2g&usqp=CAU'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://villablutangalle.com/wp-content/uploads/2018/11/7.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.mrandmrssmith.com/images/698x522/3510665-wild-coast-tented-lodge-yala-national-park-sri-lanka.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://niwadudeals.lk/uploads/images/activities/slider/555684_yala-national-park-safari-530X420.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/19/dd/0c.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://s1.it.atcdn.net/wp-content/uploads/2018/12/yala.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.getyourguide.com/img/tour/5e78c773d6abd.jpeg/97.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

// ************sub pages ella inside************

class ellainside extends StatefulWidget {
  const ellainside({Key? key}) : super(key: key);

  @override
  _ellainsideState createState() => _ellainsideState();
}

class _ellainsideState extends State<ellainside> {
  servicedataella hotelella = servicedataella();
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 50.0,
                      color: Color.fromARGB(71, 0, 0, 0),
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://haleyblackall.com/wp-content/uploads/2020/12/things-to-do-in-Ella-1-2.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
                          child: Container(
                            alignment: Alignment.center,
                            child: IconButton(
                                onPressed: (() {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_) {
                                    return campainPage();
                                  }));
                                }),
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: IconButton(
                                  onPressed: ellaImages,
                                  icon: Icon(
                                    Icons.photo_library_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: Text(
                                  '$rating',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Ella, SriLanka',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Your Experience',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(0, 135, 201, 146)),
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color.fromARGB(0, 253, 253, 253)),
                        child: RatingBar.builder(
                          initialRating: rating,
                          itemSize: 25,
                          minRating: 1,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: const Center(
                    child: Text(
                      "Ella (Sinhala: ඇල්ල; Lit. 'water fall'; Tamil: எல்ல) is a small town in the Badulla District of Uva Province, Sri Lanka governed by an Urban Council. It is approximately 200 kilometres (120 mi) east of Colombo and is situated at an elevation of 1,041 metres (3,415 ft) above sea level.[2] The area has a rich bio-diversity, dense with numerous varieties of flora and fauna. Ella is surrounded by hills covered with cloud forests and tea plantations. The town has a cooler climate than surrounding lowlands, due to its elevation. The Ella Gap allows views across the southern plains of Sri Lanka",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Top Hotels And Resorts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: hotelella.get(),
                builder: ((context, AsyncSnapshot<List<HotelElla>> snapshot) {
                  if (snapshot.hasData) {
                    print('----->');
                    print(snapshot.data?.first.name);
                    List<HotelElla> data = snapshot.data!;
                    print(data.length);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          // onTap: () => bottomSheet(context),
                          child: Column(
                            children: [
                              hotelViewElla(hotelElla: data[index]),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        );
                      }),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ellaImages() {
    showSlidingBottomSheet(
      context,
      builder: ((context) {
        return SlidingSheetDialog(
          elevation: 8,
          avoidStatusBar: false,
          dismissOnBackdropTap: true,
          cornerRadius: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      child: Text('Images'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://h8r3x6j3.rocketcdn.me/wp-content/uploads/2019/12/ella-sri-lanka-nine-arch-bridge-1.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.squarespace-cdn.com/content/v1/5a3bb03b4c326d76de73ddaa/1551070508251-XB4JK9OVWNA5SE98VCQC/The_Common_Wanderer_Things_to_do_ella-17.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://res.cloudinary.com/travelio/image/fetch/c_fill,f_auto,g_center/https://images.ctfassets.net/t13sz4t8kyqs/3S8nh8A7NPgFJYIoH9WKVN/0770c2ee4cdf042713a171416c84f0a1/LK.Ella.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://solarpoweredblonde.com/wp-content/uploads/2019/05/24.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.squarespace-cdn.com/content/v1/5a3bb03b4c326d76de73ddaa/1551068909788-D42JJSD0ZKF61FIOIKF2/The_Common_Wanderer_Things_to_do_ella-22.jpg?format=1000w'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://travellingtam.com/wp-content/uploads/2018/05/DSC_0458-1.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.atlasandboots.com/wp-content/uploads/2017/03/Hiking-trails-around-Ella-Sri-Lanka-Little-Adams-Peak.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.squarespace-cdn.com/content/v1/596b2969d2b85786e6892853/1531933637904-X0YQXR65QJV5E2VRBDJ0/220A8659.jpg?format=1500w'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

// **************sub pages belihuloya**************

class belihuloyaInside extends StatefulWidget {
  const belihuloyaInside({Key? key}) : super(key: key);

  @override
  _belihuloyaInsideState createState() => _belihuloyaInsideState();
}

class _belihuloyaInsideState extends State<belihuloyaInside> {
  servicedatadelihuloya hotel = servicedatadelihuloya();
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 50.0,
                      color: Color.fromARGB(71, 0, 0, 0),
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://preview.redd.it/6qzo90344n281.jpg?auto=webp&s=7a07ebf884d068e8cf56c80919d1488cd63090ec'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
                          child: Container(
                            alignment: Alignment.center,
                            child: IconButton(
                                onPressed: (() {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_) {
                                    return campainPage();
                                  }));
                                }),
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: IconButton(
                                  onPressed: yalaImages,
                                  icon: Icon(
                                    Icons.photo_library_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: Text(
                                  '$rating',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Belihuloya',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Your Experience',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(0, 135, 201, 146)),
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color.fromARGB(0, 253, 253, 253)),
                        child: RatingBar.builder(
                          initialRating: rating,
                          itemSize: 25,
                          minRating: 1,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: const Center(
                    child: Text(
                      "Belihuloya is a village in the Ratnapura District, Sabaragamuwa Province of Sri Lanka.[1] It is approximately 150 kilometres (93 mi) south-east of Colombo and is situated at an elevation of 616 metres (2,021 ft) above sea level. This hillside location is a climatically transitional area, linking both the dry and wet zones and the hill and low country. Belihuloya, is derived from the Belih Oya ('Oya' being the Sinhala word for river), which flows through the area.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Top Hotels And Resorts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: hotel.get(),
                builder:
                    ((context, AsyncSnapshot<List<HotelBelihuloya>> snapshot) {
                  if (snapshot.hasData) {
                    print('----->');
                    print(snapshot.data?.first.name);
                    List<HotelBelihuloya> data = snapshot.data!;
                    print(data.length);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          // onTap: () => bottomSheet(context),
                          child: Column(
                            children: [
                              hotelViewBelihuloya(hotelBelihuloya: data[index]),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        );
                      }),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void yalaImages() {
    showSlidingBottomSheet(
      context,
      builder: ((context) {
        return SlidingSheetDialog(
          elevation: 8,
          avoidStatusBar: false,
          dismissOnBackdropTap: true,
          cornerRadius: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      child: Text('Images'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://img.picture.lk/data/photos/t7mz90yJ5zD.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.bespokesrilankatravel.co.uk/wp-content/uploads/2019/01/Ahaspokuna-3.jpeg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://media.timeout.com/images/103349822/image.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/20/0d/0e/photo0jpg.jpg?w=600&h=400&s=1'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.bestoflanka.com/images/recommended-stays-sri-lanka/stay-in-the-tea-and-hills-sri-lanka/the-glenrock-belihuloya/64.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.attractionsinsrilanka.com/wp-content/uploads/2020/03/39958492071_4d0e36bb7f_b.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/736x/e7/26/7b/e7267baa7b011e1ff598ad7e900d7a9d.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://live.staticflickr.com/4768/28178717009_d4067b0902_b.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

// *************sub pages knuckles*****************

class knucklesInside extends StatefulWidget {
  const knucklesInside({Key? key}) : super(key: key);

  @override
  _knucklesInsideState createState() => _knucklesInsideState();
}

class _knucklesInsideState extends State<knucklesInside> {
  servicedatakn hotelkn = servicedatakn();
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 50.0,
                      color: Color.fromARGB(71, 0, 0, 0),
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://blueelephant.tours/wp-content/uploads/2022/08/Riverstone-way-to-top-1024x768.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
                          child: Container(
                            alignment: Alignment.center,
                            child: IconButton(
                                onPressed: (() {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_) {
                                    return campainPage();
                                  }));
                                }),
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: IconButton(
                                  onPressed: kuncklesImages,
                                  icon: Icon(
                                    Icons.photo_library_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: Text(
                                  '$rating',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Knuckles Mountain',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Your Experience',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(0, 135, 201, 146)),
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color.fromARGB(0, 253, 253, 253)),
                        child: RatingBar.builder(
                          initialRating: rating,
                          itemSize: 25,
                          minRating: 1,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: const Center(
                    child: Text(
                      "The Knuckles Mountain Range lies in central Sri Lanka, in the Districts of Matale and Kandy. The range takes its name from a series of recumbent folds and peaks in the west of the massif which resemble the knuckles of clenched fist when viewed from certain locations in the Kandy District. Whilst this name was assigned by early British surveyors, the Sinhalese residents have traditionally referred to the area as Dumbara Kanduvetiya meaning Mist-laden Mountain Range.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Top Hotels And Resorts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: hotelkn.get(),
                builder: ((context, AsyncSnapshot<List<HotelKn>> snapshot) {
                  if (snapshot.hasData) {
                    print('----->');
                    print(snapshot.data?.first.name);
                    List<HotelKn> data = snapshot.data!;
                    print(data.length);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          child: Column(
                            children: [
                              hotelViewKn(hotelKn: data[index]),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        );
                      }),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void kuncklesImages() {
    showSlidingBottomSheet(
      context,
      builder: ((context) {
        return SlidingSheetDialog(
          elevation: 8,
          avoidStatusBar: false,
          dismissOnBackdropTap: true,
          cornerRadius: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      child: Text('Images'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.theculturetrip.com/wp-content/uploads/2018/05/sctp0182-knuckles-mountain-range-sri-lanka-abasnejad-9.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.passportandpixels.com/wp-content/uploads/2022/03/Knuckles-315_pp.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/74/b6/8a.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.ampersandtravel.com/media/64203/Knuckles-Mountain-Range-Sri-Lanka-3-.jpg?mode=crop&quality=95&width=820&height=534'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.ceylonexpeditions.com/medias/destination_places/big/145/knuckles-mountain-range-sri-lanka-30447.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.ceylonexpeditions.com/medias/media/big/635/knuckles-mountain-range-sri-lanka-1c1b5-1.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://storyofsrilanka.com/images/slider/knuckles-mountain-range/01.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/71/49/43.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

// ******** sub pages kithulgala *********

// class kithulgalaInside extends StatefulWidget {
//   const kithulgalaInside({Key? key}) : super(key: key);

//   @override
//   _kithulgalaInsideState createState() => _kithulgalaInsideState();
// }

// class _kithulgalaInsideState extends State<kithulgalaInside> {
//   double rating = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 alignment: Alignment.bottomLeft,
//                 height: 400,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   boxShadow: const [
//                     BoxShadow(
//                       blurRadius: 50.0,
//                       color: Color.fromARGB(71, 0, 0, 0),
//                       spreadRadius: 1,
//                     )
//                   ],
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(50),
//                       bottomRight: Radius.circular(50)),
//                   image: const DecorationImage(
//                       image: NetworkImage(
//                           'https://dazzlingtours.com/wp-content/uploads/2016/12/02-2.jpg'),
//                       fit: BoxFit.cover),
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
//                           child: Container(
//                             alignment: Alignment.center,
//                             child: IconButton(
//                                 onPressed: (() {
//                                   Navigator.of(context)
//                                       .push(MaterialPageRoute(builder: (_) {
//                                     return campainPage();
//                                   }));
//                                 }),
//                                 icon: const Icon(
//                                   Icons.arrow_back_ios,
//                                   color: Colors.white,
//                                 )),
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: <Widget>[
//                           Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 50,
//                                 width: 50,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Color.fromARGB(92, 255, 255, 255),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(75, 255, 255, 255),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: kuncklesImages,
//                                   icon: Icon(
//                                     Icons.photo_library_outlined,
//                                     size: 30,
//                                     color: Color.fromARGB(255, 255, 255, 255),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 alignment: Alignment.center,
//                                 height: 50,
//                                 width: 50,
//                                 decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: Color.fromARGB(92, 255, 255, 255),
//                                     ),
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: Color.fromARGB(75, 255, 255, 255)),
//                                 child: Text(
//                                   '$rating',
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 25),
//                         child: Text(
//                           'Kitulgala',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Your Experience',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         alignment: Alignment.center,
//                         height: 30,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             border: Border.all(
//                                 color: Color.fromARGB(0, 135, 201, 146)),
//                             borderRadius: BorderRadius.circular(30.0),
//                             color: Color.fromARGB(0, 253, 253, 253)),
//                         child: RatingBar.builder(
//                           initialRating: rating,
//                           itemSize: 25,
//                           minRating: 1,
//                           updateOnDrag: true,
//                           onRatingUpdate: (rating) => setState(() {
//                             this.rating = rating;
//                           }),
//                           itemBuilder: (context, _) => const Icon(
//                             Icons.star,
//                             color: Colors.amber,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   child: const Center(
//                     child: Text(
//                       "Kitulgala is a small town in the west of Sri Lanka.[1] The Academy Award-winning The Bridge on the River Kwai was filmed on the Kelani River near Kitulgala,[2][3] although nothing remains now except the concrete foundations for the bridge. Kitulgala is also a base for white-water rafting,[4] which starts a few kilometres upstream and also popular as a location for adventure based training programs.",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 0, 0, 0),
//                           fontWeight: FontWeight.w200),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25),
//                   child: Text(
//                     "Top Hotels And Resorts",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   children: <Widget>[
//                     Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           color: Colors.redAccent),
//                     ),
//                     Container(
//                       height: 100,
//                       width: 278,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           color: Colors.redAccent),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           color: Colors.redAccent),
//                     ),
//                     Container(
//                       height: 100,
//                       width: 278,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           color: Colors.redAccent),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           color: Colors.redAccent),
//                     ),
//                     Container(
//                       height: 100,
//                       width: 278,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           color: Colors.redAccent),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void kuncklesImages() {
//     showSlidingBottomSheet(
//       context,
//       builder: ((context) {
//         return SlidingSheetDialog(
//           elevation: 8,
//           avoidStatusBar: false,
//           dismissOnBackdropTap: true,
//           cornerRadius: 40,
//           color: Color.fromARGB(255, 255, 255, 255),
//           snapSpec: const SnapSpec(
//             snap: true,
//             snappings: [0.4, 0.7, 0.7],
//             positioning: SnapPositioning.relativeToAvailableSpace,
//           ),
//           builder: (context, state) {
//             return Padding(
//               padding: EdgeInsets.all(8),
//               child: Center(
//                 child: Column(
//                   children: <Widget>[
//                     DefaultTextStyle(
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                       child: Text('Images'),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Column(
//                           children: <Widget>[
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: const DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.srilankatravelandtourism.com/places-sri-lanka/kitulgala/kitulgala-images/kitulgala-10-sri-lanka.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://img.traveltriangle.com/blog/wp-content/uploads/2019/09/Places-to-visit-in-Kitulgala-for-leisure.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://youimg1.tripcdn.com/target/0ww1u120008ygxh4a0F36_C_640_320_R5_Q70.jpg_.webp'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://luxeasia.lk/wp-content/uploads/2018/07/kitulgala-1001-visually-similar-location-.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           children: <Widget>[
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.reddottours.com/uploads/Activities/Kitulgala-Kelani-Forest-Reserve/Kitulgala-Kelani-Forest-Reserve-header.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.jetwingeco.com/wp-content/uploads/2016/06/Kithulgala-YE0M8177-2009-01-24.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.srilankaecotourism.lk/location_img/1489656751kitulgala_4.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://lankatourexperience.com/wp-content/uploads/2020/03/Kitulgala-Sri-lanka.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// ******** sub pages vadda village **********

// class vaddaVilageinside extends StatefulWidget {
//   const vaddaVilageinside({Key? key}) : super(key: key);

//   @override
//   _vaddaVilageinsideState createState() => _vaddaVilageinsideState();
// }

// class _vaddaVilageinsideState extends State<vaddaVilageinside> {
//   servicedata hotel = servicedata();
//   double rating = 0;
//   @override
//   Widget build(BuildContext context) {
//     print("length......");
//     print(hotel.hotel.length);
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 alignment: Alignment.bottomLeft,
//                 height: 400,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   boxShadow: const [
//                     BoxShadow(
//                       blurRadius: 50.0,
//                       color: Color.fromARGB(71, 0, 0, 0),
//                       spreadRadius: 1,
//                     )
//                   ],
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(50),
//                       bottomRight: Radius.circular(50)),
//                   image: DecorationImage(
//                       onError: (exception, stackTrace) {
//                         throw ArgumentError.value(exception);
//                       },
//                       image: NetworkImage(
//                           'https://media.istockphoto.com/photos/vedda-people-sri-lanka-picture-id117148259?k=20&m=117148259&s=612x612&w=0&h=AHELaP2MZ9YuxoGB6LdjLGAE5exniQg5Rhmw3xM2TYw='),
//                       fit: BoxFit.cover),
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
//                           child: Container(
//                             alignment: Alignment.center,
//                             child: IconButton(
//                                 onPressed: (() {
//                                   Navigator.of(context)
//                                       .push(MaterialPageRoute(builder: (_) {
//                                     return campainPage();
//                                   }));
//                                 }),
//                                 icon: const Icon(
//                                   Icons.arrow_back_ios,
//                                   color: Colors.white,
//                                 )),
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: <Widget>[
//                           Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 50,
//                                 width: 50,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Color.fromARGB(92, 255, 255, 255),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(75, 255, 255, 255),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: kuncklesImages,
//                                   icon: Icon(
//                                     Icons.photo_library_outlined,
//                                     size: 30,
//                                     color: Color.fromARGB(255, 255, 255, 255),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 alignment: Alignment.center,
//                                 height: 50,
//                                 width: 50,
//                                 decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: Color.fromARGB(92, 255, 255, 255),
//                                     ),
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: Color.fromARGB(75, 255, 255, 255)),
//                                 child: Text(
//                                   '$rating',
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 25),
//                         child: Text(
//                           'Vadda Village',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Your Experience',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         alignment: Alignment.center,
//                         height: 30,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             border: Border.all(
//                                 color: Color.fromARGB(0, 135, 201, 146)),
//                             borderRadius: BorderRadius.circular(30.0),
//                             color: Color.fromARGB(0, 253, 253, 253)),
//                         child: RatingBar.builder(
//                           initialRating: rating,
//                           itemSize: 25,
//                           minRating: 1,
//                           updateOnDrag: true,
//                           onRatingUpdate: (rating) => setState(() {
//                             this.rating = rating;
//                           }),
//                           itemBuilder: (context, _) => const Icon(
//                             Icons.star,
//                             color: Colors.amber,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   child: const Center(
//                     child: Text(
//                       "The Vedda (Sinhala: වැද්දා [ˈvædːaː], Tamil: வேடர் (Vēḍar)), or Wanniyalaeto,[4] are a minority indigenous group of people in Sri Lanka who, among other sub-communities such as Coast Veddas, Anuradhapura Veddas and Bintenne Veddas,[5] are accorded indigenous status. The Vedda minority in Sri Lanka may become completely assimilated.[6] Most speak Sinhala instead of their indigenous languages, which are nearing extinction. It has been hypothesized that the Vedda were probably the earliest inhabitants of Sri Lanka and have lived on the island since before the arrival of other ethnic groups in India.[7][8]Veddas are also mentioned in Robert Knox's history of his captivity by the King of Kandy in the 17th century. Knox described them as 'wild men', but also said there was a 'tamer sort', and that the latter sometimes served in the king's army.[9]The Ratnapura District, which is part of the Sabaragamuwa Province, is known to have been inhabited by the Veddas in the distant past. This has been shown by scholars like Nandadeva Wijesekera. The very name Sabaragamuwa is believed to have meant the village of the Sabaras or 'forest barbarians'. Place-names such as Vedda-gala (Vedda Rock), Vedda-ela (Vedda Canal) and Vedi-Kanda (Vedda Mountain) in the Ratnapura District also bear testimony to this. As Wijesekera observes, a strong Vedda element is discernible in the population of Vedda-gala and its environs.",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 0, 0, 0),
//                           fontWeight: FontWeight.w200),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25),
//                   child: Text(
//                     "Top Hotels And Resorts",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ),
//               FutureBuilder(
//                 future: hotel.get(),
//                 builder: ((context, AsyncSnapshot<List<Hotel>> snapshot) {
//                   if (snapshot.hasData) {
//                     print('----->');
//                     print(snapshot.data?.first.name);
//                     List<Hotel> data = snapshot.data!;
//                     print(data.length);
//                     return ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: data.length,
//                       itemBuilder: ((context, index) {
//                         return InkWell(
//                           onTap: () => bottomSheet(context),
//                           child: Column(
//                             children: [
//                               HotelView(hotel: data[index]),
//                               SizedBox(
//                                 height: 30,
//                               )
//                             ],
//                           ),
//                         );
//                       }),
//                     );
//                   } else {
//                     return CircularProgressIndicator();
//                   }
//                 }),
//               ),
//               SizedBox(
//                 height: 10,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void bottomSheet(BuildContext context) {
//     showCupertinoModalPopup(
//         context: context,
//         builder: ((context) {
//           return Container(
//             height: 200,
//             color: Colors.amber,
//           );
//         }));
//   }

//   void kuncklesImages() {
//     showSlidingBottomSheet(
//       context,
//       builder: ((context) {
//         return SlidingSheetDialog(
//           elevation: 8,
//           avoidStatusBar: false,
//           dismissOnBackdropTap: true,
//           cornerRadius: 40,
//           color: Color.fromARGB(113, 255, 255, 255),
//           snapSpec: const SnapSpec(
//             snap: true,
//             snappings: [0.4, 0.7, 0.7],
//             positioning: SnapPositioning.relativeToAvailableSpace,
//           ),
//           builder: (context, state) {
//             return Padding(
//               padding: EdgeInsets.all(8),
//               child: Center(
//                 child: Column(
//                   children: <Widget>[
//                     DefaultTextStyle(
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                       child: Text('Images'),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Column(
//                           children: <Widget>[
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: const DecorationImage(
//                                     image: NetworkImage(
//                                         'https://img.trvcdn.net/https://media.tacdn.com/media/attractions-splice-spp-720x480/0b/29/a8/a7.jpg?imgeng=m_box/w_1418/h_946'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'http://www.funholidays.lk/blog/wp-content/uploads/2016/12/wadda.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.bestoflanka.com/images/best-things-to-do-in-sri-lanka/visit-vaddas-sri-lanka/03.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.bestoflanka.com/images/visit-vaddas-sri-lanka-1.jpg?q=79&w=800&h=571'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           children: <Widget>[
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://www.malteclavin.com/wp-content/uploads/2021/07/24-vedda.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://lanka-houses.com/media/sights/photo/41.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://cmb.ac.lk/wp-content/uploads/establishment-new-community-centres-cshr.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Container(
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         'https://img.theculturetrip.com/wp-content/uploads/2018/01/7h9a2585-copy.jpg'),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }
