import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../controller/authController.dart';

class ExoticPlaceDetail extends StatefulWidget {
  const ExoticPlaceDetail() : super();

  @override
  State<ExoticPlaceDetail> createState() => _ExoticPlaceDetailState();
}

class _ExoticPlaceDetailState extends State<ExoticPlaceDetail> {
  bool isInclude = false;
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
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // for (var x in authController.exoticplaceList)
                      Column(
                        children: [
                          // Row(
                          //   children: [
                          //     GestureDetector(
                          //         onTap: () {
                          //           Navigator.pop(context);
                          //         },
                          //         child: Icon(Icons.arrow_back_sharp))
                          //   ],
                          // ),
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 200.0,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              viewportFraction: 0.9,
                            ),
                            items: [
                              'assets/img/beach.jpg',
                              'assets/img/desti2.jpeg',
                              'assets/img/desti3.jpeg',
                            ]
                                .map((item) => Container(
                                      child: Center(
                                        child:
                                            // Image.network(
                                            //   x['cruxtech.in/admin/packageimage/PackageImage'],
                                            //   width: 100,
                                            // ),
                                            Image.asset(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                authController.exoticplaceList[0]["PackageName"]
                                    .toString(),
                                style: TextStyle(
                                    fontFamily: "Sail",
                                    fontSize: 28,
                                    color: Colors.teal),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(
                              //   width: 0,
                              // ),
                              const Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 14,
                              ),
                              SizedBox(
                                  //width: width * .28,
                                  child: Text(
                                authController.exoticplaceList[0]
                                    ['PackageLocation'],
                                style: const TextStyle(fontSize: 12),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Text(
                              authController.exoticplaceList[0]
                                  ['PackageFetures'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.orange)),
                          SizedBox(
                            height: 10,
                          ),

                          Text(
                              authController.exoticplaceList[0]
                                  ['PackageDetails'],
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.teal)),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width: width * .9,
                                  child: Text("Rs " +
                                      authController.exoticplaceList[0]
                                              ["PackagePrice"]
                                          .toString() +
                                      "/per Person")),
                              Icon(Icons.person_outline),
                              // Icon(Icons.person_outline),
                              // Icon(Icons.person_outline)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          // ),
                          Row(
                            children: [
                              Text(
                                "Highlights",
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
                            children: [
                              Icon(Icons.check, color: Colors.teal),
                              SizedBox(
                                width: width * .05,
                              ),
                              SizedBox(
                                width: width * .9,
                                child: Text(
                                  authController.exoticplaceList[0]["high1"],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check, color: Colors.teal),
                              SizedBox(
                                width: width * .05,
                              ),
                              SizedBox(
                                width: width * .9,
                                child: Text(
                                  authController.exoticplaceList[0]["high2"],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check, color: Colors.teal),
                              SizedBox(
                                width: width * .05,
                              ),
                              SizedBox(
                                width: width * .9,
                                child: Text(
                                  authController.exoticplaceList[0]["high3"],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check, color: Colors.teal),
                              SizedBox(
                                width: width * .05,
                              ),
                              SizedBox(
                                width: width * .9,
                                child: Text(
                                  authController.exoticplaceList[0]["high4"],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check, color: Colors.teal),
                              SizedBox(
                                width: width * .05,
                              ),
                              SizedBox(
                                width: width * .9,
                                child: Text(
                                  authController.exoticplaceList[0]["high5"],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check, color: Colors.teal),
                              SizedBox(
                                width: width * .05,
                              ),
                              SizedBox(
                                width: width * .9,
                                child: Text(
                                  authController.exoticplaceList[0]["high6"],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isInclude = true;
                                  });
                                  // isInclude == true
                                  //     ? Text("data")
                                  //     : Text("data2");
                                },
                                child: Container(
                                    width: width * .3,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: isInclude
                                            ? Color.fromARGB(255, 228, 224, 224)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(18),
                                        border: Border.all(
                                          color: isInclude
                                              ? Colors.orange
                                              : Colors.teal,
                                        )),
                                    child: Center(child: Text("Included"))),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isInclude = false;
                                  });
                                },
                                child: Container(
                                    width: width * .3,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: isInclude
                                            ? Colors.white
                                            : Color.fromARGB(
                                                255, 228, 224, 224),
                                        borderRadius: BorderRadius.circular(18),
                                        border: Border.all(
                                          color: isInclude
                                              ? Colors.teal
                                              : Colors.orange,
                                        )),
                                    child: Center(child: Text("Not Included"))),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          isInclude == true
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include1"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include2"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include3"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include4"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include5"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include6"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include7"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include8"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include9"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["include10"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude1"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude2"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude3"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude4"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude5"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude6"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude7"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude8"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude9"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check, color: Colors.teal),
                                        SizedBox(
                                          width: width * .05,
                                        ),
                                        SizedBox(
                                          width: width * .9,
                                          child: Text(
                                            authController.exoticplaceList[0]
                                                ["notinclude10"],
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              //  _openPopup(context);
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
          )
        ],
      ),
    );
  }

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
}
