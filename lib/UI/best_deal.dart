import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_travel/UI/best_deal_detail.dart';
import 'dart:developer';

import '../controller/authController.dart';
import 'destination_wedding_detail.dart';
import 'exotic_place_detail.dart';

class BestDeals extends StatefulWidget {
  const BestDeals() : super();

  @override
  State<BestDeals> createState() => _BestDealsState();
}

class _BestDealsState extends State<BestDeals> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        // backgroundColor: const Color(0xFFEEE6EE),
        body: Stack(children: [
      Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(children: [
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: width * .05,
                          ),
                          Text(
                            "Best Deals",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(children: [
                            for (var x in authController.dealsList)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18)),
                                  child: Column(
                                    children: [
                                      // SizedBox(
                                      //   height: 20,
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cruxtech.in/admin/packageimage/" +
                                                    x["PackageImage"],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Image.network(
                                              "https://cruxtech.in/admin/packageimage/" +
                                                  x["PackageImage"],
                                              height: 150,
                                              width: width * .9),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                width: width * .52,
                                                child: Text(
                                                  x["PackageType"],
                                                  style: const TextStyle(
                                                      color: Colors.teal),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.1)),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: const Text("20% off",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                              )
                                            ]),
                                      ),
                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                                width: width * .5,
                                                child: Text(
                                                  x['PackageName'],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
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
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.center,
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
                                              style:
                                                  const TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                              text: new TextSpan(
                                                text: "Rs. " +
                                                    x['PackagePrice'] +
                                                    "/",
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                      text: 'person',
                                                      style: new TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight
                                                              .normal)),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Get.to(BestDealsDetail());
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      border: Border.all(
                                                          color:
                                                              Colors.orange)),
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 5,
                                                        bottom: 5,
                                                        right: 10,
                                                        left: 10),
                                                    child: const Text(
                                                      "Book",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
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
                              )
                          ])),

                      // BestDeals(width, "desti1.jpg"),
                      //BestDeals(width, "desti2.jpeg"),
                      // BestDeals(width, "desti3.jpeg"),
                      // BestDeals(width, "desti4.jpeg"),
                      // BestDeals(width, "desti1.jpg"),
                      // BestDeals(width, "desti2.jpeg"),
                      // BestDeals(width, "desti3.jpeg"),
                      // BestDeals(width, "desti4.jpeg"),
                    ],
                  ),
                )
              ],
            )
          ])),
    ]));
  }

  Widget BestDeals(double width, String img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 1,
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.black),
            color: Colors.white,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: width * .9,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/img/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text("")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .05,
                ),
                SizedBox(
                    width: width * .78,
                    child: Text(
                      "place",
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .05,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .05,
                ),
                SizedBox(
                  width: width * .75,
                  child: RichText(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
