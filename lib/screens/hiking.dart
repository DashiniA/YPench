import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/adamsPeek.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/screens/internetConnectionChecker.dart';
import 'package:flutter_application_1/widget/container/hotel_view.dart';
import 'package:flutter_application_1/widget/container/hotel_viewadams.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'bottomappbar.dart';

class hikingPage extends StatefulWidget {
  const hikingPage({Key? key}) : super(key: key);

  @override
  _hikingPageState createState() => _hikingPageState();
}

class _hikingPageState extends State<hikingPage> {
  void adamspeakinside() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return adamsPeak();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) {
                  return appbar();
                }),
              );
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
        elevation: 0.5,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 5, 105, 255),
        ),
        title: const Text(
          'HIKING',
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              'Travel Option',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(26, 0, 0, 0),
                                      blurRadius: 20,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: const Icon(
                                Icons.local_taxi,
                                size: 30.0,
                                color: Color.fromARGB(255, 255, 0, 0),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(26, 0, 0, 0),
                                      blurRadius: 20,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: const Icon(
                                Icons.pedal_bike_sharp,
                                size: 30.0,
                                color: const Color.fromARGB(255, 0, 255, 98),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(26, 0, 0, 0),
                                      blurRadius: 20,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: const Icon(
                                Icons.directions_bus_rounded,
                                size: 30.0,
                                color: Color.fromARGB(255, 162, 0, 255),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(26, 0, 0, 0),
                                      blurRadius: 20,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 255, 253, 253),
                              ),
                              child: const Icon(
                                Icons.train,
                                size: 30.0,
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
                              height: 30,
                              width: 70,
                              child: const Text(
                                'Taxi',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 70,
                              child: const Text(
                                'Bike',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 70,
                              child: const Text(
                                'Bus',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 70,
                              child: const Text(
                                'Train',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: Color.fromARGB(64, 0, 0, 0),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Best Hiking Places In Country',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: adamspeakinside,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.5,
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
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL-S8kcit5jzBo74BC_q8eB6YUjxwXFaT4WA&usqp=CAU'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      const Text(
                                        "Adam's Peak",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const <Widget>[
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Multiple Entrance\nAvailable',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
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
                              onTap: () {
                                print("clicked");
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.4,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                        'https://saltinourhair.com/wp-content/uploads/2018/05/sigiriya-lion-rock-sri-lanka.jpg',
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
                                        children: const <Widget>[
                                          Text(
                                            'Sigiriya & \nPidurangula',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const <Widget>[
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'northern Matale \nDistrict \nDambulla \nCentral Province',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 29,
                        ),

                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                print("clicked2");
                              },
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                height:
                                    MediaQuery.of(context).size.height / 2.4,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                        'https://images.fineartamerica.com/images-medium-large/worlds-end-horton-plains-national-park-sri-lanka-jenny-rainbow.jpg',
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
                                        children: const <Widget>[
                                          Text(
                                            'Horton Plains & \nWorld’s End',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const <Widget>[
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Ohiya, Sri Lanka, \nNuwara Eliya ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
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
                              onTap: () {
                                print("clicked3");
                              },
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(26, 0, 0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 2),
                                  ],
                                  image: const DecorationImage(
                                      image: const NetworkImage(
                                          'https://images.squarespace-cdn.com/content/v1/596b2969d2b85786e6892853/1531922870345-RPXQFZ5ETNX6CL2PPRGV/The+view+from+Lipton%27s+Seat+at+sunrise'),
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
                                        children: const <Widget>[
                                          Text(
                                            'Lipton’s Seat  ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const <Widget>[
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Dambethenna \nEstate,\nHaputhale, \nLipton Seat Rd, \nSri Lanka, \nHaputale ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
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
                        //     Container(
                        //       alignment: Alignment.bottomLeft,
                        //       height: 220,
                        //       width: 180,
                        //       decoration: BoxDecoration(
                        //         boxShadow: const [
                        //           BoxShadow(
                        //               color: Color.fromARGB(26, 0, 0, 0),
                        //               blurRadius: 20,
                        //               spreadRadius: 2),
                        //         ],
                        //         image: const DecorationImage(
                        //             image: NetworkImage(
                        //                 'https://t4.ftcdn.net/jpg/03/73/03/95/360_F_373039561_3Yl2WwLiO8NcDEMKhLfPL28esizcQiQK.jpg'),
                        //             fit: BoxFit.cover),
                        //         borderRadius: BorderRadius.circular(20.0),
                        //         color: Colors.red,
                        //       ),
                        //       child: Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: Column(
                        //           mainAxisAlignment: MainAxisAlignment.end,
                        //           children: <Widget>[
                        //             Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               children: const <Widget>[
                        //                 Text(
                        //                   'Hanthana Mountain \nRange',
                        //                   style: TextStyle(
                        //                       color: Colors.white,
                        //                       fontSize: 15,
                        //                       fontWeight: FontWeight.bold),
                        //                 ),
                        //               ],
                        //             ),
                        //             Row(
                        //               children: const <Widget>[
                        //                 Icon(
                        //                   Icons.location_on_outlined,
                        //                   color: Colors.white,
                        //                 ),
                        //                 Text(
                        //                   'south-west\ncity of Kandy.',
                        //                   style: TextStyle(
                        //                       color: Colors.white,
                        //                       fontWeight: FontWeight.normal),
                        //                 )
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //     const SizedBox(
                        //       width: 10,
                        //     ),
                        //     Container(
                        //       alignment: Alignment.bottomLeft,
                        //       height: MediaQuery.of(context).size.height / 3.2,
                        //       width: MediaQuery.of(context).size.width / 2.5,
                        //       decoration: BoxDecoration(
                        //         boxShadow: const [
                        //           BoxShadow(
                        //               color: Color.fromARGB(26, 0, 0, 0),
                        //               blurRadius: 20,
                        //               spreadRadius: 2),
                        //         ],
                        //         image: const DecorationImage(
                        //             image: const NetworkImage(
                        //                 'https://www.srilankaecotourism.lk/location_img/15196276093.jpg'),
                        //             fit: BoxFit.cover),
                        //         borderRadius: BorderRadius.circular(20.0),
                        //         color: Colors.red,
                        //       ),
                        //       child: Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: Column(
                        //           mainAxisAlignment: MainAxisAlignment.end,
                        //           children: <Widget>[
                        //             Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               children: const <Widget>[
                        //                 Text(
                        //                   'Meemure',
                        //                   style: TextStyle(
                        //                       color: Colors.white,
                        //                       fontSize: 15,
                        //                       fontWeight: FontWeight.bold),
                        //                 ),
                        //               ],
                        //             ),
                        //             Row(
                        //               children: const <Widget>[
                        //                 Icon(
                        //                   Icons.location_on_outlined,
                        //                   color: Colors.white,
                        //                 ),
                        //                 Text(
                        //                   'Meemure \nWana Arana \n15/C, \nUdawanatha, \nMeemure, \nSri Lanka',
                        //                   style: TextStyle(
                        //                       color: Colors.white,
                        //                       fontWeight: FontWeight.normal),
                        //                 )
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                )
              : CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}

class adamsPeak extends StatefulWidget {
  const adamsPeak({Key? key}) : super(key: key);

  @override
  State<adamsPeak> createState() => _adamsPeakState();
}

class _adamsPeakState extends State<adamsPeak> {
  @override
  double rating = 0;
  servicedataadms hotelAdamsP = servicedataadms();
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
                          'https://bestofceylon.com/images/ella/trek-to-little-adams-peak/trek-to-little-adams-peak1.jpg'),
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
                                    return hikingPage();
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
                          "Adam's Peek",
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
                      "Adam's Peak or Śrī Pāda is a 2,243 m (7,359 ft) tall conical sacred mountain located in central Sri Lanka.[1][2] It is well known for the Śrī Pāda (Sinhala: ශ්‍රී පාද), i.e., sacred footprint, a 1.8 m (5 ft 11 in) rock formation near the summit. In Buddhist tradition the print is held to be the footprint of the Buddha, in Hindu tradition that of Hanuman or Shiva (Tamil: சிவனொளிபாதமலை, lit. 'Sivanolipaathamalai'), i.e., Mountain of Shiva's Light, and in some Islamic and Christian traditions that of Adam, or that of St. Thomas.[2][3][4]The mountain is also known as Mount Malaya in Buddhist sources, particularly the Mahayana Lankavatara Sutra, which states that the Buddha preached this sutra on top of the mountain. According to this sutra, the mountain was the abode of Rāvanā, overlord of the Raskshasas and ruler of Laṅkā.[5][6] Other names in Sanskrit sources include Mount Lanka, Ratnagiri (Mountain of Gems), Malayagiri (Mount Malaya) or Mount Rohana.[1]The mountain is also seen as the abode of the deity Saman and also goes by various names associated with this, including Sumanakūta (Sumana's Mountain) and Samanalakanda (Saman's Mountain or Mountain of the Butteries).[1][2]",
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
                future: hotelAdamsP.get(),
                builder: ((context, AsyncSnapshot<List<Hoteladms>> snapshot) {
                  if (snapshot.hasData) {
                    print('----->');
                    print(snapshot.data?.first.name);
                    List<Hoteladms> data = snapshot.data!;
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
                              hotelViewAdams(hoteladms: data[index]),
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
              )
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
                                        'https://bestofceylon.com/images/ella/trek-to-little-adams-peak/trek-to-little-adams-peak1.jpg'),
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
                              width: 200,
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
                              width: 200,
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
                              width: 200,
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
                              width: 200,
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
                              width: 200,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
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
