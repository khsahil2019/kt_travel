import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kt_travel/controller/authController.dart';

import 'loading_state.dart';

Widget detailBox() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200.0,
      width: 150.0,
      child: Column(
        children: <Widget>[
          Expanded(
            //  flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/img/beach.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            //flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hawaii',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '1 Room-2 Adults',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '13 - 18 Nov',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget BestDeal2() {
  return Container(
    height: 150.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/img/girlpho.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hotel Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 18.0),
                Row(
                  children: [
                    Icon(Icons.location_history, color: Colors.grey),
                    SizedBox(
                      width: 120,
                      child: Text(
                        '2 km to city',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    Icon(Icons.currency_pound_outlined),
                    Text("200")
                  ],
                ),
                star(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget DrawerBox(double width) {
  return Container(
    width: width * .7,
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            // arrowColor: Colors.black,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            accountName: Text("Tester"),
            accountEmail: Text("test@gmail.com"),
            currentAccountPicture: Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89c3e38-b6f3-48a0-9f9e-df9a0129fb93/daghh5x-4a77b3ec-fd4f-4d17-9f84-5963a8cb5c03.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4OWMzZTM4LWI2ZjMtNDhhMC05ZjllLWRmOWEwMTI5ZmI5M1wvZGFnaGg1eC00YTc3YjNlYy1mZDRmLTRkMTctOWY4NC01OTYzYThjYjVjMDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dWTFMrwnbAbj5TtUp9U_vQsohW7MnkRPymzR5wZQoV8'),
          ),
          ListTile(
            leading: Icon(Icons.home),

            //shape: Border.all(color: Colors.black),
            title: Text('Home'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.play_circle),

            //  shape: Border.all(color: Colors.black),
            title: Text('Wedding Destination'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.place_sharp),

            // shape: Border
            //.all(color: Colors.black),
            title: Text('Exotic Place'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.dehaze_rounded),

            // shape: Border
            //.all(color: Colors.black),
            title: Text('Best Deals'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.hotel),

            // shape: Border.all(color: Colors.black),
            title: Text('Hotels'),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => AboutUs()),
              // );
              // Navigator.pop(context);
            },
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.flight),

            // shape: Border.all(color: Colors.black),
            title: Text('Flights'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.question_answer_outlined),
            title: Text(
              "FAQs",
            ),
            // subtitle: Text('Item description'),
            //trailing: Icon(Icons.more_vert),
            // shape: Border.all(color: Colors.black),
            // title: Text('FAQ'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text("Legals")),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              Text("Contact us"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text("Version 1.0.0"))
        ],
      ),
    ),
  );
}

Widget star() {
  return Row(
    children: [
      Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 17,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 19,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_half,
        size: 21,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_outline,
        color: Colors.yellow,
      ),
      SizedBox(width: 8.0),
      Text(
        '4.5',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(width: 14.0),
      Text("/per night")
    ],
  );
}

getUnderlineBorder(var color) {
  return Border(
    bottom: BorderSide(
      color: color,
      width: 0.5,
    ),
  );
}

Border buildBottomBorder(var color) {
  return Border(
    bottom: BorderSide(
      color: color,
      width: 0.5,
    ),
  );
}

Widget loadingIndicator(LoadingState loadingState) {
  return loadingState.isLoading
      ? BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            alignment: AlignmentDirectional.center,
            decoration: const BoxDecoration(
              color: Colors.black26,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      height: 30.0,
                      width: 30.0,
                      child: Image.asset('assets/img/loading.gif'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                    child: Center(
                      child: Text(
                        loadingState.msg,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      : const SizedBox();
}
