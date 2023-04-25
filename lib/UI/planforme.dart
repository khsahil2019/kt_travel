import 'package:flutter/material.dart';
import 'dart:developer';

import '../widget.dart';

class PlanForMe extends StatefulWidget {
  const PlanForMe() : super();

  @override
  State<PlanForMe> createState() => _PlanForMeState();
}

class _PlanForMeState extends State<PlanForMe> {
  @override
  late String destination = "";
  List destinationList = ["Car", "Bus", "Train", "Aeroplane"];
  late String type;
  late String date;
  late String guest;

  List<String> items = ["Car", "Bus", "Train", "Aeroplane"];
  // Declare lists for dropdown options

  String currentItem = "";

  String selectval = "Tokyo";

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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Destination',
                          hintText: 'Enter Destination',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            destination = value;
                          });
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Type',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        height: 30,
                        width: width * .30,
                        decoration: BoxDecoration(
                            border: buildBottomBorder(Colors.teal)),
                        child: DropdownButton(
                            // icon: const Icon(
                            //   Icons.arrow_drop_down_sharp,
                            //   color: AppColors.primary,
                            //   size: 40,
                            // ),
                            // icon: Image.asset(
                            //   "assets/img/drop.png",
                            //   width: 20,
                            // ),
                            onChanged: (value) {
                              setState(() {
                                if (destination != value) {
                                  // getSubSubject(value as String);
                                }
                                destination = value.toString();
                              });
                              setState(() {
                                destination = value.toString();
                              });
                            },
                            hint: Text(
                              "Destination",
                              style: TextStyle(
                                // fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            underline: const Text(""),
                            //  style: AppTextStyle.secondary,
                            isExpanded: true,
                            value: destination,
                            items: destinationList
                                .map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              );
                            }).toList()),
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Confirm your password',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != date) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            guest = value;
                          });
                        },
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ],
            )
          ])),
    ]));
  }
}
