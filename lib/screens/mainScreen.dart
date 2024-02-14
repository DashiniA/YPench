import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/screens/campingpage.dart';
import 'package:flutter_application_1/screens/diving.dart';
import 'package:flutter_application_1/screens/hiking.dart';
import 'package:flutter_application_1/screens/internetConnectionChecker.dart';
import 'package:provider/provider.dart';

import 'package:sliding_sheet/sliding_sheet.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  void initState() {
    Provider.of<internetConnectionChecker>(context, listen: false)
        .initialization();
    super.initState();
  }

  final _searchController = TextEditingController();

  Widget searchfield() {
    return Container(
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: MediaQuery.of(context).size.height / 30,
              color: Color.fromARGB(55, 80, 65, 82),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.height / 40),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: MediaQuery.of(context).size.height / 40,
              color: Color.fromARGB(255, 241, 234, 234),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              width: 1.0,
              color: Color.fromARGB(6, 0, 0, 0),
            ),
          ),
          fillColor: Color.fromARGB(255, 247, 243, 243),
          filled: true,
          hintText: 'Search',
          hintStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
      ),
      height: MediaQuery.of(context).size.height / 15,
    );
  }

  climb() {
    return ((Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const hikingPage();
        },
      ),
    )));
  }

  camping() {
    return Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const campainPage();
    }));
  }

  diving() {
    return Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const divingPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 16),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height / 110),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: MediaQuery.of(context).size.height / 20,
                          color: Color.fromARGB(255, 80, 65, 82),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.6,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: const Color.fromARGB(255, 80, 65, 82),
                            size: MediaQuery.of(context).size.width / 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Row(
                  children: <Widget>[
                    Text(
                      'Where do\nyou want to go?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height / 30,
                        fontWeight: (FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                searchfield(),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Row(
                  children: <Widget>[
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: MediaQuery.of(context).size.height / 30,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: camping,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromARGB(255, 247, 243, 243),
                            ),
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/night-camping-vector.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                  ),
                                ),
                                const Text(
                                  'Camping',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height / 40,
                        ),
                        GestureDetector(
                          onTap: climb,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              color: const Color.fromARGB(255, 247, 243, 243),
                            ),
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/hiking-family-in-nature-trekking-man-woman-vector-21256804.png',
                                          ),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                  ),
                                ),
                                const Text(
                                  'Hiking',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height / 40,
                        ),
                        GestureDetector(
                          onTap: diving,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromARGB(255, 247, 243, 243),
                            ),
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/1171219191.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                  ),
                                ),
                                const Text(
                                  'Diving',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 31,
                ),
                Row(
                  children: const <Widget>[
                    Text(
                      'Popular in Country',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: aboutninearch,
                          child: Container(
                            width: MediaQuery.of(context).size.height / 5,
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.red,
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/3.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.height / 5,
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.red,
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/0ec4d98a33948b889f279949e82d6a85.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          onTap: aboutGalle,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.height / 5,
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.red,
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/0-578x854.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          onTap: aboutsinharaja,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  void aboutGalle() {
    showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          elevation: 8,
          cornerRadius: 30,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40.0,
                  ),
                  const DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    child: Text('Explore About The Place'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.location_on_rounded,
                          size: 30.0,
                          color: Colors.lightBlue,
                        ),
                      ),
                      MaterialButton(
                        textColor: Colors.black,
                        onPressed: () {},
                        child: const Icon(
                          Icons.fastfood_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 244, 3, 55),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.local_hotel_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 2, 255, 57),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite_sharp,
                          size: 30,
                          color: Color.fromARGB(255, 120, 2, 255),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const DefaultTextStyle(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        child: Text('Images'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Image.network(
                          'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/shutterstock_397314796.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Galle_Fort.jpg/300px-Galle_Fort.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: DefaultTextStyle(
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      child: Text(
                        "About ",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 600,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: <Widget>[
                        DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          child: Text(
                            "Galle Dutch Fort ෴ ගාල්ල ඕලන්ද කොටුව\n ",
                          ),
                        ),
                        DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height / 50,
                              fontWeight: FontWeight.normal),
                          child: Text(
                            "A UNESCO World Heritage Site reverberates through every traveller’s photos and captions. Initially built by the Portuguese in the 16th century during their conquests, the fort was later fortified and conquered by the Dutch in the 17th century, until it later fell to the might of the British. The old town of Galle was once used as a trading port for spices and other goods for over 200 years. However, today, the fort has been transformed into a place of history, romance and beauty where travellers are warmly welcomed to dive head first into the exotic stories and be a part of this heritage site.Fifty Lighthouse Street is set within the fort and offers the perfect base for you to explore the charms of Galle. Preserved in its original glory, stroll along the ramparts and admire the imposing structures like the Galle Lighthouse, Galle Clocktower and the Groote Kerk. A Galle Fort Walking Tour with us, will reveal secrets that only a local from within the fort will know. Our walking tour takes you through the backroads of this iconic fort, visiting charming structures, museums, old buildings and more as you hear endless stories, legends and some secrets of the Galle Dutch Fort.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void aboutninearch() async {
    final result = await showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          elevation: 8,
          cornerRadius: 30,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.5, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40.0,
                  ),
                  const DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    child: Text('Explore About The Place'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.location_on_rounded,
                          size: 30.0,
                          color: Colors.lightBlue,
                        ),
                      ),
                      MaterialButton(
                        textColor: Colors.black,
                        onPressed: () {},
                        child: const Icon(
                          Icons.fastfood_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 244, 3, 55),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.local_hotel_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 2, 255, 57),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite_sharp,
                          size: 30,
                          color: Color.fromARGB(255, 120, 2, 255),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const DefaultTextStyle(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        child: Text('Images'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Image.network(
                          'https://img.freepik.com/premium-photo/demodara-nine-arch-bridge-ella-sri-lanka_131985-429.jpg?w=2000',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Image.network(
                          'https://w0.peakpx.com/wallpaper/117/126/HD-wallpaper-nine-arch-bridge-colombo-ella-srilanka-train-upcountry.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: DefaultTextStyle(
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      child: Text(
                        "About ",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 600,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: <Widget>[
                        const DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          child: Text(
                            "Nine Arch Bridge ෴ ආරුක්කු නවය පාළම\n ",
                          ),
                        ),
                        DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height / 50,
                              fontWeight: FontWeight.normal),
                          child: const Text(
                            "Built at 3100m above sea level, among the craggy peaks of the Central Highlands; the Nine Arches forms a viaduct between the Demodara and Ella Railway stations. Built entirely out of brick, rock and cement; without a single piece of steel; the bridge has stood solid from 1921, its time of creation. According to history, the bridge was built by the locals using such materials; when the construction came to a standstill from the lack of steel caused by World War I. But, in addition to this history; lore abounds the creation of the bridge.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void aboutsinharaja() async {
    final result = await showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          elevation: 8,
          cornerRadius: 30,
          color: Color.fromARGB(255, 255, 255, 255),
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 0.7],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40.0,
                  ),
                  const DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    child: Text('Explore About The Place'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.location_on_rounded,
                          size: 30.0,
                          color: Colors.lightBlue,
                        ),
                      ),
                      MaterialButton(
                        textColor: Colors.black,
                        onPressed: () {},
                        child: const Icon(
                          Icons.fastfood_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 244, 3, 55),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.local_hotel_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 2, 255, 57),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite_sharp,
                          size: 30,
                          color: Color.fromARGB(255, 120, 2, 255),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const DefaultTextStyle(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        child: Text('Images'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Image.network(
                          'https://www.bestoflanka.com/images/slider/best-things-to-do-in-sri-lanka/trekking-and-Hiking-in-sri-lanka/nature-exploration-sinharaja-rain-forest-sri-lanka/01.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Image.network(
                          'https://www.rapidholidays.lk/images/destinations/sinharaja/6.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const DefaultTextStyle(
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      child: Text(
                        "About ",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    width: 600,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: <Widget>[
                        const DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          child: Text(
                            "Sinharaja Rain Forest ෴ සිංහරාජ වන රක්ෂිතය\n ",
                          ),
                        ),
                        DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height / 50,
                              fontWeight: FontWeight.normal),
                          child: const Text(
                            "Sinharaja Rain Forest (a UNESCO World Heritage Site), the last viable remnant of Sri Lanka’s tropical lowland rainforest spanning an area of 18900 acres is located within Sabaragamuwa and Southern provinces of the south-west lowland wet zone of Sri Lanka. Sinharaja is bounded by rivers on three sides. On the north, Sinharaja is bounded by the Napola Dola and Koskulana Ganga. On the south and south-west are the rivers Maha Dola and Gin Ganga. On the west are the river Kalukandawa Ela and river Kudawa Ganga. To the east of Sinharaja is an ancient footpath near Beverley Tea Estate and by the Denuwa Kanda.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
