// import 'dart:html';

import 'package:flutter/material.dart';

import 'dart:developer';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:kt_travel/UI/best_deal_detail.dart';
import 'package:kt_travel/UI/destination_wedding_detail.dart';
import 'package:kt_travel/UI/exotic_place.dart';
import 'package:kt_travel/UI/exotic_place_detail.dart';
import 'package:kt_travel/UI/hotel_room_detail.dart';
import 'package:kt_travel/UI/planforme.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../widget.dart';
import 'best_deal.dart';
import 'destination_wedding.dart';
import 'hotel_rooms.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
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

  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        drawer: DrawerBox(width),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text(
            'TRAVEL APP',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SearchScreen()),
                // );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {
                // Do something when the more_vert icon is pressed
              },
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 255, 254, 254),
        body: Stack(children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListView(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: new TextSpan(
                                text: 'Let’s find your\ndream ',
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: 'Destination\n',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange)),
                                  new TextSpan(text: ' make with enjoy!'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Travor is one of the most \n popular Travel agency for those\n  who want to explore the world \n and try to make adventure",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/img/first.png",
                          height: 150,
                          width: 150,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // _openPopup(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => PlanForMe()),
                            // );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Plan for me",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        //  Text("Get Price")
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: new TextSpan(
                        text: 'We ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'always ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange)),
                          new TextSpan(
                              text: 'focus on best ',
                              style: new TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          new TextSpan(
                              text: 'Benefits ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal)),
                          new TextSpan(
                              text: 'as\n well as ',
                              style: new TextStyle(
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          new TextSpan(
                              text: 'Professional ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal)),
                          new TextSpan(
                              text: 'service',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BestDeals()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/img/10.png",
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Best Deals", style: TextStyle())
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExoticPlace()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/img/7.png",
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Exotic Places", style: TextStyle())
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DestinationWedding()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/img/9.png",
                                height: 95,
                                width: 100,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text("Destination Wedding",
                                  textAlign: TextAlign.center,
                                  style: TextStyle())
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HotelRooms()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/img/8.png",
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Hotels Rooms", style: TextStyle())
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/img/6.png",
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Flights", style: TextStyle())
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(height: 30),
                    // Row(
                    //   children: [
                    //     Text(
                    //       "Most Attractive",
                    //       style: TextStyle(color: Colors.teal),
                    //     ),
                    //     Image.asset("assets/img/location1.png")
                    //   ],
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => BestDeals()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              "Best Deals",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          DealBox(width, "maldiv.jpg", "Maldives"),
                          DealBox(width, "uae.jpg", "UAE"),
                          DealBox(width, "italy.jpg", "Italy"),
                          DealBox(width, "italy.jpg", "Greece"),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BestDeals()),
                                );
                              },
                              child: View(width))
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => DestinationWedding()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              "Destination Wedding",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/img/second.png",
                              height: 170,
                              width: width * .45,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Welcome to K-T Travel",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: new TextSpan(
                                    text: 'We Recommend\n ',
                                    style: TextStyle(color: Colors.black),
                                    children: <TextSpan>[
                                      new TextSpan(
                                          text: 'Beautiful ',
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange)),
                                      new TextSpan(
                                          text: 'Destination\n ',
                                          style: new TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      new TextSpan(
                                          text: 'every month ',
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.teal)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Travor is one of the most popular Travel agency\n for those who want to explore the world\n and try to make adventure as well\n as we can provide beautiful\n destination around the\n world and make\n you trip",
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          DestinationBox(width, "desti1.jpg", "Kerala"),
                          DestinationBox(width, "desti2.jpeg", "Havelock"),
                          DestinationBox(width, "desti3.jpeg", "Rishikesh"),
                          DestinationBox(width, "desti4.jpeg", "Goa"),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DestinationWedding()),
                                );
                              },
                              child: View(width))
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => HotelRooms()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              "Hotels Rooms",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          RoomBox(width, "room1.jpg", "Manali", "Mall Road"),
                          RoomBox(width, "room2.jpg", "Nanital", "Anand Road"),
                          RoomBox(width, "room3.jpg", "Delhi", "Kashmiri Gate"),
                          RoomBox(width, "room4.jpg", "Auli", "Sector 49"),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HotelRooms()),
                                );
                              },
                              child: View(width))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Avail your Discount offer now!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.teal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/img/forth.png",
                                height: 100, width: 50)
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: new TextSpan(
                                    text: 'Grab ',
                                    style: TextStyle(color: Colors.black),
                                    children: <TextSpan>[
                                      new TextSpan(
                                          text: 'Up to 35% off ',
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange)),
                                      new TextSpan(
                                          text: 'on your\n ',
                                          style: new TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      new TextSpan(
                                          text: 'favorite Hotel Rooms ',
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.teal)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Limited time offer, don’t miss the opportunity",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/img/third.png",
                                height: 100, width: 80)
                          ],
                        )
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20),
                    //           color: Colors.teal),
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(
                    //             top: 10, bottom: 10, right: 30, left: 30),
                    //         child: Text(
                    //           "Book Now",
                    //           style: TextStyle(color: Colors.white),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/img/tree.png",
                            height: 100, width: 100),
                        Image.asset("assets/img/bus.png",
                            height: 100, width: 100)
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          Trip(width, "beach.jpg", "City Adventure trip",
                              "Paris France"),
                          Trip(width, "exotic1.png", "HoneyMoon Trip",
                              "Thialand"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ExoticPlace()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              "Exotic Places",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * .8,
                          child: Text(
                            "KT Travel is one of the most popular travel agency for who want to explore the world with adventure",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          ExoticBox(width, "exotic1.png", "Majuli", "Assam"),
                          ExoticBox(
                              width, "exotic2.png", "Nanital", "Anand Road"),
                          ExoticBox(
                              width, "exotic3.png", "Rann Of Kutch", "Gujarat"),
                          ExoticBox(
                              width, "exotic4.png", "Pangong Lake", "Ladakh"),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ExoticPlace()),
                                );
                              },
                              child: View(width))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          Trip(width, "beach.jpg", "City Adventure trip",
                              "Paris France"),
                          Trip(width, "exotic1.png", "HoneyMoon Trip",
                              "Thialand"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/img/fifth.png",
                            height: 150, width: 150),
                        SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          Row(
                            children: [
                              Text(
                                "Our Testimonials",
                                style: TextStyle(color: Colors.teal),
                              ),
                              Image.asset(
                                "assets/img/badge.png",
                                height: 20,
                                width: 30,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          RichText(
                            textAlign: TextAlign.center,
                            text: new TextSpan(
                              text: 'Happy ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                new TextSpan(
                                    text: 'Travelers\n',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange)),
                                new TextSpan(
                                    text: 'Expression',
                                    style: new TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.teal)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Travor is one of the most popular\n Travel agency for those who\n want to explore the world\n and try to make adventure\n as well as we can\n provide",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "John smith",
                                style:
                                    TextStyle(color: Colors.teal, fontSize: 13),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "[Ceo Founder]",
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                            ],
                          ),
                        ])
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              "Flights",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset("assets/img/plane.png")
                  ],
                )
              ])),
        ]));
  }

  Widget DealBox(double width, String img, String place) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * .41,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/img/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                      Image.asset("assets/img/$img", height: 130, width: 130)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width * .28,
                    child: Text(
                      place,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Icon(
                  Icons.star,
                  color: Colors.teal,
                  size: 12,
                ),
                Text("4.5"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                    //width: width * .28,
                    child: Text(
                  "Nuda Penida, Maldives",
                  style: TextStyle(fontSize: 10),
                )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: new TextSpan(
                      text: '\$110/',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'person',
                            style: new TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BestDealsDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "Book",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget DestinationBox(double width, String img, String place) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * .41,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/img/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                      Image.asset("assets/img/$img", height: 130, width: 130)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width * .28,
                    child: Text(
                      place,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Icon(
                  Icons.star,
                  color: Colors.teal,
                  size: 12,
                ),
                Text("4.5"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                    //width: width * .28,
                    child: Text(
                  "Nuda Penida, Maldives",
                  style: TextStyle(fontSize: 10),
                )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: new TextSpan(
                      text: '\$110/',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'person',
                            style: new TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinationWeddingDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "Book",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget RoomBox(double width, String img, String place, String location) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * .41,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/img/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                      Image.asset("assets/img/$img", height: 130, width: 130)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width * .28,
                    child: Text(
                      place,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Icon(
                  Icons.star,
                  color: Colors.teal,
                  size: 12,
                ),
                Text("4.5"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                    //width: width * .28,
                    child: Text(
                  location,
                  style: TextStyle(fontSize: 10),
                )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: new TextSpan(
                      text: '\$110/',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'person',
                            style: new TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HotelRoomDetails()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "Book",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget View(double width) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * .41,
        // height: ,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.white,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 100, bottom: 100),
                  child: Text("See all",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                )),
          ],
        ),
      ),
    );
  }

  Widget ExoticBox(double width, String img, String place, String location) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * .41,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/img/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                      Image.asset("assets/img/$img", height: 130, width: 130)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width * .35,
                    child: Text(
                      place,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                // Icon(
                //   Icons.star,
                //   color: Colors.teal,
                //   size: 12,
                // ),
                // Text("4.5"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                    //width: width * .28,
                    child: Text(
                  location,
                  style: TextStyle(fontSize: 10),
                )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: new TextSpan(
                      text: '\$110/',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'person',
                            style: new TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExoticPlaceDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "Book",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Trip(double width, String img, String place, String location) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * .8,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/img/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Image.asset("assets/img/$img",
                      height: 130, width: width * .7)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(children: [
                Text(
                  "4 days 3 night",
                  style: TextStyle(color: Colors.teal),
                )
              ]),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: width * .5,
                      child: Text(
                        place,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                  // Icon(
                  //   Icons.star,
                  //   color: Colors.teal,
                  //   size: 12,
                  // ),
                  // Text("4.5"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 14,
                  ),
                  SizedBox(
                      //width: width * .28,
                      child: Text(
                    location,
                    style: TextStyle(fontSize: 10),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: new TextSpan(
                      text: '\$110/',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'person',
                            style: new TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "Book",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
