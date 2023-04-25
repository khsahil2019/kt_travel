import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class BestDealsDetail extends StatefulWidget {
  const BestDealsDetail() : super();

  @override
  State<BestDealsDetail> createState() => _BestDealsDetailState();
}

class _BestDealsDetailState extends State<BestDealsDetail> {
  _openPopup(context) {
    Alert(
        context: context,
        title: "LOGIN",
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "LOGIN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_sharp))
                      ],
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.9,
                      ),
                      items: [
                        'assets/img/desti1.jpg',
                        'assets/img/desti2.jpeg',
                        'assets/img/desti3.jpeg',
                      ]
                          .map((item) => Container(
                                child: Center(
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                    height: 400.0,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Royal Grand Hotel",
                          style: TextStyle(
                              fontFamily: "Sail",
                              fontSize: 28,
                              color: Colors.teal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 300, child: Text("Rs-3200 /per night")),
                        Icon(Icons.person_outline),
                        Icon(Icons.person_outline),
                        Icon(Icons.person_outline)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 161, 238, 230)
                          // color: Color.fromARGB(255, 247, 178, 75)

                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5.0),
                              Text('Free wifi'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.free_breakfast,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5.0),
                              Text('BreakFast'),
                            ],
                          ),
                          // SizedBox(width: 50.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.park,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5.0),
                              Text('Parking'),
                            ],
                          ),
                          // SizedBox(width: 50.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.pool,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5.0),
                              Text('Swimming Pool'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "This suite features a tiles/marble floor , minibar  and seating area"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Room Facilities :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * .6,
                          child: Text(
                            "- Tea/Coffee maker",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "- Television",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * .6,
                          child: Text(
                            "- Air conditioner Room",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "- Clean Bed Sheet",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * .6,
                          child: Text(
                            "- Sofa Set",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "- Dining table",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * .6,
                          child: Text(
                            "- Toilet",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "- WashRoom",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * .6,
                          child: Text(
                            "- Help Line Number",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "- Bell Service",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        _openPopup(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ReviewDetail()),
                        // );
                      },
                      child: Container(
                        width: width * .9,
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Add additional facilities and details below the slideshow
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
