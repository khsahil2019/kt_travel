import 'package:flutter/material.dart';
import 'dart:developer';

import 'hotel_room_detail.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HotelRooms extends StatefulWidget {
  const HotelRooms() : super();

  @override
  State<HotelRooms> createState() => _HotelRoomsState();
}

class _HotelRoomsState extends State<HotelRooms> {
  //late String stringResponse;
  late Map mapResponse;
  // late Map dataResponse;
  late List listResponse;
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        listResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    listResponse = ["null"];
    apicall();
    super.initState();
  }

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
                            "Best Rooms",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // Container(
                      //   child: listResponse == null
                      //       ? Text("Loading")
                      //       : Text(listResponse[1]['first_name'].toString()),
                      // ),

                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                listResponse[index]['avatar']),
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
                                            listResponse[index]['last_name'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
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
                                        listResponse[index]['first_name'],
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
                                            text: 'Rs.',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                            children: <TextSpan>[
                                              new TextSpan(
                                                  text: listResponse[index]
                                                          ['id']
                                                      .toString(),
                                                  style: new TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              new TextSpan(
                                                  text: ' /'.toString(),
                                                  style: new TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              new TextSpan(
                                                  text: 'person',
                                                  style: new TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HotelRoomDetails()),
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Colors.teal)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  right: 10,
                                                  left: 10),
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
                        },
                        itemCount:
                            listResponse == null ? 0 : listResponse.length,
                      ),
                      // ListView.builder(itemBuilder: (context, index) {
                      //   return Rooms(width, "room1.jpg");
                      // }),
                      // Rooms(width, "room1.jpg"),
                      // Rooms(width, "room2.jpg"),
                      // Rooms(width, "room3.jpg"),
                      // Rooms(width, "room4.jpg"),
                      // Rooms(width, "room5.jpg"),
                      // Rooms(width, "room1.jpg"),
                      // Rooms(width, "room1.jpg"),
                      // Rooms(width, "room2.jpg"),
                      // Rooms(width, "room3.jpg"),
                      // Rooms(width, "room4.jpg"),
                      // Rooms(width, "room5.jpg"),
                      // Rooms(width, "room1.jpg"),
                    ],
                  ),
                )
              ],
            )
          ])),
    ]));
  }

  Widget Rooms(double width, String img) {
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
                      image: NetworkImage(img),
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
