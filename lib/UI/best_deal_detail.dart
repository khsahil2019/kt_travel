import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:kt_travel/controller/authController.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../Register/login.dart';

class BestDealsDetail extends StatefulWidget {
  const BestDealsDetail() : super();

  @override
  State<BestDealsDetail> createState() => _BestDealsDetailState();
}

class _BestDealsDetailState extends State<BestDealsDetail> {
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
                      for (var x in authController.dealsList)
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
                                // 'https://cruxtech.in/admin/packageimage/' +
                                //     x["image"],
                                // // 'https://cruxtech.in/admin/packageimage/' +
                                // //     x["image"],
                                // // 'https://cruxtech.in/admin/packageimage/' +
                                // //     x["image"],
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
                                  x["PackageName"].toString(),
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
                                  x['PackageLocation'],
                                  style: const TextStyle(fontSize: 12),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            Text(x['PackageFetures'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.orange)),
                            SizedBox(
                              height: 10,
                            ),

                            Text(x['PackageDetails'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.teal)),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    width: width * .9,
                                    child: Text("Rs " +
                                        x["PackagePrice"].toString() +
                                        "/per Person")),
                                Icon(Icons.person_outline),
                                // Icon(Icons.person_outline),
                                // Icon(Icons.person_outline)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // Container(
                            //   height: 100,
                            //   decoration: BoxDecoration(
                            //       boxShadow: [
                            //         BoxShadow(
                            //           color: Colors.grey.withOpacity(0.5),
                            //           spreadRadius: 5,
                            //           blurRadius: 7,
                            //           offset: Offset(
                            //               0, 3), // changes position of shadow
                            //         ),
                            //       ],
                            //       borderRadius: BorderRadius.circular(12),
                            //       color: Color.fromARGB(255, 161, 238, 230)
                            //       // color: Color.fromARGB(255, 247, 178, 75)

                            //       ),
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceEvenly,
                            //     children: [
                            //       Column(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Icon(
                            //             Icons.wifi,
                            //             color: Colors.black,
                            //           ),
                            //           SizedBox(height: 5.0),
                            //           Text('Free wifi'),
                            //         ],
                            //       ),
                            //       Column(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Icon(
                            //             Icons.free_breakfast,
                            //             color: Colors.black,
                            //           ),
                            //           SizedBox(height: 5.0),
                            //           Text('BreakFast'),
                            //         ],
                            //       ),
                            //       // SizedBox(width: 50.0),
                            //       Column(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Icon(
                            //             Icons.park,
                            //             color: Colors.black,
                            //           ),
                            //           SizedBox(height: 5.0),
                            //           Text('Parking'),
                            //         ],
                            //       ),
                            //       // SizedBox(width: 50.0),
                            //       Column(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Icon(
                            //             Icons.pool,
                            //             color: Colors.black,
                            //           ),
                            //           SizedBox(height: 5.0),
                            //           Text('Swimming Pool'),
                            //         ],
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width * .3,
                                  child: Text(
                                    "Hotel Name :",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ),
                                Text(
                                  x["hotelname"],
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.orange),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
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
                                    x["high1"],
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
                                    x["high2"],
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
                                    x["high3"],
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
                                    x["high4"],
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
                                    x["high5"],
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
                                    x["high6"],
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
                                              ? Color.fromARGB(
                                                  255, 228, 224, 224)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(18),
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
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          border: Border.all(
                                            color: isInclude
                                                ? Colors.teal
                                                : Colors.orange,
                                          )),
                                      child:
                                          Center(child: Text("Not Included"))),
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
                                              x["include1"],
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
                                              x["include2"],
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
                                              x["include3"],
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
                                              x["include4"],
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
                                              x["include5"],
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
                                              x["include6"],
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
                                              x["include7"],
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
                                              x["include8"],
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
                                              x["include9"],
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
                                              x["include10"],
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
                                              x["notinclude1"],
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
                                              x["notinclude2"],
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
                                              x["notinclude3"],
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
                                              x["notinclude4"],
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
                                              x["notinclude5"],
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
                                              x["notinclude6"],
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
                                              x["notinclude7"],
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
                                              x["notinclude8"],
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
                                              x["notinclude9"],
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
                                              x["notinclude10"],
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
                                Get.to(LoginScreen());
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
}
