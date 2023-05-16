// import 'dart:html';

import 'package:flutter/material.dart';

import 'dart:developer';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:get/get.dart';
import 'package:kt_travel/Register/signup.dart';
import 'package:kt_travel/UI/best_deal_detail.dart';
import 'package:kt_travel/UI/destination_wedding_detail.dart';
import 'package:kt_travel/UI/exotic_place.dart';
import 'package:kt_travel/UI/exotic_place_detail.dart';
import 'package:kt_travel/UI/hotel_room_detail.dart';
import 'package:kt_travel/UI/planforme.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../controller/authController.dart';
import '../widget.dart';
import 'best_deal.dart';
import 'destination_wedding.dart';
import 'hotel_rooms.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlan = false;
  // late Map mapResponse;
  // // late Map dataResponse;
  // late List listResponse;
  // Future apicall() async {
  //   http.Response response;
  //   response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       // stringResponse = response.body;
  //       mapResponse = jsonDecode(response.body);
  //       listResponse = mapResponse['data'];
  //     });
  //   }
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   listResponse = ["null"];
  //   apicall();
  //   super.initState();
  // }

  // _openPopup(context) {
  //   Alert(
  //       context: context,
  //       title: "LOGIN",
  //       content: Column(
  //         children: <Widget>[
  //           TextField(
  //             decoration: InputDecoration(
  //               icon: Icon(Icons.account_circle),
  //               labelText: 'Username',
  //             ),
  //           ),
  //           TextField(
  //             obscureText: true,
  //             decoration: InputDecoration(
  //               icon: Icon(Icons.lock),
  //               labelText: 'Password',
  //             ),
  //           ),
  //         ],
  //       ),
  //       buttons: [
  //         DialogButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: Text(
  //             "LOGIN",
  //             style: TextStyle(color: Colors.white, fontSize: 20),
  //           ),
  //         )
  //       ]).show();
  // }

  Widget build(BuildContext context) {
    // log(authController.)
    // log("asdfaf" + authController.user.toString());
    log("Exotic place :" + authController.exoticplaceList.toString());
    log("index : " + authController.indexPageList.toString());
    log("Deals : " + authController.dealsList.toString());
    log("logo : " + authController.logoList.toString());
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
          title: const Text(
            'TRAVEL APP',
            style: const TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // authController.getExoticpalce();
                //authController.getIndexPage();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SearchScreen()),
                // );
              },
            ),
            GestureDetector(
              onTap: () {},
              child: IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SignupPage()),
                  // );
                  // Do something when the more_vert icon is pressed
                },
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
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
                            SizedBox(
                              width: width * .35,
                              child: Text(authController.indexPageList!["p2"]
                                  .toString()),
                            ),

                            // RichText(
                            //   text: new TextSpan(
                            //     text: 'Let’s find your\ndream ',
                            //     style: TextStyle(color: Colors.black),
                            //     children: <TextSpan>[
                            //       new TextSpan(
                            //           text: 'Destination\n',
                            //           style: new TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.orange)),
                            //       new TextSpan(text: ' make with enjoy!'),
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(
                              height: 20,
                            ),

                            SizedBox(
                              width: width * .6,
                              child: Text(
                                authController.indexPageList!["p3"].toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Image.network(
                            "https://cruxtech.in/admin/index_images/" +
                                authController.indexPageList!["pimg"],
                            height: 150,
                            width: 150),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Image.network(
                    //     "https://cruxtech.in/admin/index_images/" +
                    //         authController.indexPageList!["pimg"],
                    //     height: 150,
                    //     width: 150),
                    // Text(authController.exoticplaceList[0].toString()),
                    //Text(authController.exoticplaceList.length.toString()),
                    // Text(authController.indexPageList!.length.toString()),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   isPlan = !isPlan;
                            // });
                            Get.to(PlanForMe());
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
                                authController.indexPageList!["p4"].toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        //  Text("Get Price")
                      ],
                    ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    // isPlan == true ?Column(children: [

                    // ],):SizedBox(),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: width * .7,
                        child: Text(
                          authController.indexPageList!['p5'].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.teal),
                        )),

                    // RichText(
                    //   textAlign: TextAlign.center,
                    //   text: new TextSpan(
                    //     text: 'We ',
                    //     style: TextStyle(color: Colors.black),
                    //     children: <TextSpan>[
                    //       new TextSpan(
                    //           text: 'always ',
                    //           style: new TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.orange)),
                    //       new TextSpan(
                    //           text: 'focus on best ',
                    //           style: new TextStyle(
                    //               // fontWeight: FontWeight.bold,
                    //               color: Colors.black)),
                    //       new TextSpan(
                    //           text: 'Benefits ',
                    //           style: new TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.teal)),
                    //       new TextSpan(
                    //           text: 'as\n well as ',
                    //           style: new TextStyle(
                    //               //  fontWeight: FontWeight.bold,
                    //               color: Colors.black)),
                    //       new TextSpan(
                    //           text: 'Professional ',
                    //           style: new TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.teal)),
                    //       new TextSpan(
                    //           text: 'service',
                    //           style: new TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.orange)),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
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
                                  builder: (context) => const BestDeals()),
                            );
                          },
                          child: Column(
                            children: [
                              // Image.network(
                              //   authController.indexPageList![
                              //       'cruxtech.in/admin/index_images/6.png'],
                              //   height: 100,
                              //   width: 100,
                              // ),
                              Image.network(
                                  "https://cruxtech.in/admin/index_images/" +
                                      authController.indexPageList!["icon1"],
                                  height: 100,
                                  width: 100),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  authController.indexPageList!["iconh1"]
                                      .toString(),
                                  style: const TextStyle())
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ExoticPlace()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network(
                                  "https://cruxtech.in/admin/index_images/" +
                                      authController.indexPageList!["icon2"],
                                  height: 100,
                                  width: 100),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  authController.indexPageList!["iconh2"]
                                      .toString(),
                                  style: const TextStyle())
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DestinationWedding()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network(
                                  "https://cruxtech.in/admin/index_images/" +
                                      authController.indexPageList!["icon3"],
                                  height: 100,
                                  width: 100),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                  authController.indexPageList!["iconh3"]
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle())
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
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
                                  builder: (context) => const HotelRooms()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network(
                                  "https://cruxtech.in/admin/index_images/" +
                                      authController.indexPageList!["icon4"],
                                  height: 100,
                                  width: 100),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  authController.indexPageList!["iconh4"]
                                      .toString(),
                                  style: const TextStyle())
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image.network(
                                "https://cruxtech.in/admin/index_images/" +
                                    authController.indexPageList!["icon5"],
                                height: 100,
                                width: 100),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                authController.indexPageList!["iconh5"]
                                    .toString(),
                                style: const TextStyle())
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      authController.indexPageList!["iconp1"].toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.teal),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        Image.asset("assets/img/forth.png",
                            height: 100, width: width * .23),
                        Column(
                          children: [
                            SizedBox(
                              width: width * .6,
                              child: Text(
                                authController.indexPageList!["iconp2"]
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * .6,
                              child: Text(
                                authController.indexPageList!["iconp3"]
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    //fontSize: 28,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/img/third.png",
                            height: 100, width: width * .2)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/img/tree.png",
                            height: 100, width: 100),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: new TextSpan(
                                text: 'Grab ',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 18),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: 'Best Deal',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.orange)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                        Image.asset("assets/img/bus.png",
                            height: 100, width: 100)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          for (var x in authController.dealsList)
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: width * .8,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: const Offset(
                                            0, 0), // changes position of shadow
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
                                            image: new DecorationImage(
                                                image: NetworkImage(
                                                  "https://cruxtech.in/admin/packageimage/" +
                                                      x["PackageImage"],
                                                ),
                                                fit: BoxFit.cover)),
                                        child: Image.network(
                                            "https://cruxtech.in/admin/packageimage/" +
                                                x["PackageImage"],
                                            height: 130,
                                            width: width * .7),
                                        //  Image.asset(
                                        //     "assets/img/beach.jpg",
                                        //     height: 130,
                                        //     width: width * .7)
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
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
                                                  padding: EdgeInsets.all(4.0),
                                                  child: const Text("20% off",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white)),
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    // SizedBox(
                                    //   height: 5,
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: width * .5,
                                              child: Text(
                                                x['PackageName'],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
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
                                      padding: const EdgeInsets.only(left: 15),
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
                                      padding: const EdgeInsets.only(left: 15),
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
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                new TextSpan(
                                                    text: 'person',
                                                    style: new TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                                                        color: Colors.orange)),
                                                child: const Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 5,
                                                      bottom: 5,
                                                      right: 10,
                                                      left: 10),
                                                  child: const Text(
                                                    "Book",
                                                    style:
                                                        TextStyle(fontSize: 12),
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

                    // SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    //   padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    //   child: Row(
                    //     children: [
                    //       Trip(width, "beach.jpg", "City Adventure trip",
                    //           "Paris France"),
                    //       Trip(width, "exotic1.png", "HoneyMoon Trip",
                    //           "Thialand"),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 50,
                    ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    GestureDetector(
                        onTap: () {
                          Get.to(BestDeals());
                        },
                        child: button("See All")),
                    const SizedBox(
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
                              authController.indexPageList!["iconh2"]
                                  .toString(),
                              style: const TextStyle(
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
                            authController.indexPageList!["iconp4"].toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var x in authController.exoticplaceList)
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: width * .45,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: const Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18)),
                                child: Column(
                                  children: [
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
                                            height: 130,
                                            width: width * .5),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: width * .35,
                                            child: Text(
                                              x['PackageName'],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        // Icon(
                                        //   Icons.star,
                                        //   color: Colors.teal,
                                        //   size: 12,
                                        // ),
                                        // Text("4.5"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        SizedBox(
                                            width: width * .35,
                                            child: Text(
                                              x['PackageLocation'],
                                              style:
                                                  const TextStyle(fontSize: 10),
                                            )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: new TextSpan(
                                              text: 'Rs ' +
                                                  x["PackagePrice"] +
                                                  '/',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                new TextSpan(
                                                    text: 'person',
                                                    style: const TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(ExoticPlaceDetail());
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.teal)),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    right: 10,
                                                    left: 10),
                                                child: const Text(
                                                  "Book",
                                                  style:
                                                      TextStyle(fontSize: 12),
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
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(const ExoticPlace());
                        },
                        child: button("See All")),
                    /*Exotic ends*/
                    /*wedding destination*/
                    const SizedBox(
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
                            //       builder: (context) => DestinationWedding()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              authController.indexPageList!["iconh3"]
                                  .toString(),
                              style: const TextStyle(
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
                            authController.indexPageList!["iconp5"].toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          DestinationBox(width, "desti1.jpg", "Kerala"),
                          DestinationBox(width, "desti2.jpeg", "Havelock"),
                          DestinationBox(width, "desti3.jpeg", "Rishikesh"),
                          DestinationBox(width, "desti4.jpeg", "Goa"),
                          // GestureDetector(
                          //     onTap: () {
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) =>
                          //                 DestinationWedding()),
                          //       );
                          //     },
                          //     child: View(width))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    button("See All"),
                    // Divider(
                    //   thickness: 1,
                    // ),
                    /*End wedding destination*/
                    /*Hotel rooms */
                    const SizedBox(
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
                            //       builder: (context) => DestinationWedding()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              authController.indexPageList!["iconh4"]
                                  .toString(),
                              style: const TextStyle(
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
                            authController.indexPageList!["p1"].toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          DestinationBox(width, "desti1.jpg", "Kerala"),
                          DestinationBox(width, "desti2.jpeg", "Havelock"),
                          DestinationBox(width, "desti3.jpeg", "Rishikesh"),
                          DestinationBox(width, "desti4.jpeg", "Goa"),
                          // GestureDetector(
                          //     onTap: () {
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) =>
                          //                 DestinationWedding()),
                          //       );
                          //     },
                          //     child: View(width))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    button("See All"),
                    // Divider(
                    //   thickness: 1,
                    // ),
                    /*End Hotel rooms */
                    /* Flights  */
                    const SizedBox(
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
                            //       builder: (context) => DestinationWedding()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Text(
                              authController.indexPageList!["iconh5"]
                                  .toString(),
                              style: const TextStyle(
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
                          child: const Text(
                            "KT is one of the most popular Travel agency for who want to explore the wold with adventure",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset("assets/img/plane.png"),
                    // Divider(
                    //   thickness: 1,
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    button("See All"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/img/fifth.png",
                            height: 150, width: 150),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          Row(
                            children: [
                              const Text(
                                "Our Testimonials",
                                style: const TextStyle(color: Colors.teal),
                              ),
                              Image.asset(
                                "assets/img/badge.png",
                                height: 20,
                                width: 30,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            textAlign: TextAlign.center,
                            text: new TextSpan(
                              text: 'Happy ',
                              style: const TextStyle(color: Colors.black),
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
                          const SizedBox(height: 10),
                          const Text(
                            "Travor is one of the most popular\n Travel agency for those who\n want to explore the world\n and try to make adventure\n as well as we can\n provide",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "John smith",
                                style:
                                    TextStyle(color: Colors.teal, fontSize: 13),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "[Ceo Founder]",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                            ],
                          ),
                        ])
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20),
                    //           color: Colors.orange),
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(
                    //             top: 10, bottom: 10, right: 30, left: 30),
                    //         child: Text(
                    //           "Flights",
                    //           style: TextStyle(color: Colors.white),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // Image.asset("assets/img/plane.png")
                  ],
                )
              ])),
        ]));
  }

  Widget button(String text) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.teal),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
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
            offset: const Offset(0, 0), // changes position of shadow
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
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                const Icon(
                  Icons.star,
                  color: Colors.teal,
                  size: 12,
                ),
                const Text("4.5"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                const SizedBox(
                    //width: width * .28,
                    child: Text(
                  "Nuda Penida, Maldives",
                  style: const TextStyle(fontSize: 10),
                )),
              ],
            ),
            const SizedBox(
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
                      style: const TextStyle(
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
                            builder: (context) => const BestDealsDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: const Padding(
                        padding: EdgeInsets.only(
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
            offset: const Offset(0, 0), // changes position of shadow
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
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                const Icon(
                  Icons.star,
                  color: Colors.teal,
                  size: 12,
                ),
                const Text("4.5"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                const SizedBox(
                    //width: width * .28,
                    child: const Text(
                  "Nuda Penida, Maldives",
                  style: TextStyle(fontSize: 10),
                )),
              ],
            ),
            const SizedBox(
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
                      style: const TextStyle(
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
                            builder: (context) =>
                                const DestinationWeddingDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: const Padding(
                        padding: EdgeInsets.only(
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
            offset: const Offset(0, 0), // changes position of shadow
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
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                const Icon(
                  Icons.star,
                  color: Colors.teal,
                  size: 12,
                ),
                const Text("4.5"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                    //width: width * .28,
                    child: Text(
                  location,
                  style: const TextStyle(fontSize: 10),
                )),
              ],
            ),
            const SizedBox(
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
                      style: const TextStyle(
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
                            builder: (context) => const HotelRoomDetails()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orange)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: const Text(
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

  // Widget View(double width) {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Container(
  //       width: width * .41,
  //       // height: ,
  //       decoration: BoxDecoration(
  //           border: Border.all(color: Colors.black),
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(18)),
  //       child: Column(
  //         children: [
  //           // SizedBox(
  //           //   height: 20,
  //           // ),
  //           Container(
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(8),
  //               ),
  //               child: Padding(
  //                 padding: const EdgeInsets.only(
  //                     left: 20, right: 20, top: 100, bottom: 100),
  //                 child: Text("See all",
  //                     style:
  //                         TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  //               )),
  //         ],
  //       ),
  //     ),
  //   );
  // }

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
            offset: const Offset(0, 0), // changes position of shadow
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
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                // Icon(
                //   Icons.star,
                //   color: Colors.teal,
                //   size: 12,
                // ),
                // Text("4.5"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                    //width: width * .28,
                    child: Text(
                  location,
                  style: const TextStyle(fontSize: 10),
                )),
              ],
            ),
            const SizedBox(
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
                      style: const TextStyle(
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
                            builder: (context) => const ExoticPlaceDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.teal)),
                      child: const Padding(
                        padding: EdgeInsets.only(
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
            offset: const Offset(0, 0), // changes position of shadow
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
                const Text(
                  "4 days 3 night",
                  style: const TextStyle(color: Colors.teal),
                )
              ]),
            ),
            const SizedBox(
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
                        style: const TextStyle(
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 0,
                  ),
                  const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 14,
                  ),
                  SizedBox(
                      //width: width * .28,
                      child: Text(
                    location,
                    style: const TextStyle(fontSize: 10),
                  )),
                ],
              ),
            ),
            const SizedBox(
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
                      style: const TextStyle(
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
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: const Text(
                          "Book",
                          style: const TextStyle(fontSize: 12),
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
