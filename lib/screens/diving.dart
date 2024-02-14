import 'package:flutter/material.dart';

class divingPage extends StatefulWidget {
  const divingPage({Key? key}) : super(key: key);

  @override
  _divingPageState createState() => _divingPageState();
}

class _divingPageState extends State<divingPage> {
  Future tab_option() async {
    showDialog(
      context: context,
      builder: (context) {
        return CircularProgressIndicator.adaptive();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'DIVING',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Travel Options',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
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
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 70,
                      child: const Text(
                        'Taxi',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 70,
                      child: const Text(
                        'Bike',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 70,
                      child: const Text(
                        'Bus',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: tab_option,
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 70,
                      child: const Text(
                        'Train',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
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
                'Best Diving Places In Country',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 220,
                      width: 180,
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
                              'https://s3.ap-south-1.amazonaws.com/gotripslk/images/client/activity/1745/1555992935_0_-57956113746_133247027160_1499772316_n.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const Text(
                              'Trincomalee',
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
                                  'Nilaveli Rd, \nTrincomalee',
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 280,
                    width: 180,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(26, 0, 0, 0),
                            blurRadius: 20,
                            spreadRadius: 2),
                      ],
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://www.taruvillas.com/wp-content/uploads/2021/11/inner-banner_Mob_Coral-Reef-Exploring-720x720-1.jpg',
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Hikkaduwa',
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
                                'Hikkaduwa Beach',
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
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 280,
                    width: 180,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(26, 0, 0, 0),
                            blurRadius: 20,
                            spreadRadius: 2),
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.unawatunadiving.com/unawatuna/wp-content/uploads/2020/03/Wreck-Diving-1.jpg'),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Unawatuna',
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
                                'Galle Rd, Hikkaduwa',
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
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 220,
                    width: 180,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(26, 0, 0, 0),
                            blurRadius: 20,
                            spreadRadius: 2),
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/fe/a3/24/fea324cbd19ee490a6c0743cd896aace.jpg'),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Nilaveli',
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
                                'Nilaveli',
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
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 220,
                    width: 180,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(26, 0, 0, 0),
                            blurRadius: 20,
                            spreadRadius: 2),
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/258098656.jpg?k=297677dec261439fda1e359d1e7d61b57cec7380c08dbcb55ed712aefd6cbadd&o=&hp=1'),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Weligama',
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
                                'Kapparatota, \nWeligama ',
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 280,
                    width: 180,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(26, 0, 0, 0),
                            blurRadius: 20,
                            spreadRadius: 2),
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://sugartravelsblog.com/wp-content/uploads/2019/02/srilanka-kabalana-2.jpg'),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Bull Dog Reef \nin Kalpitiya',
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
                                'Kalpitiya',
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
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
