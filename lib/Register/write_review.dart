import 'package:flutter/material.dart';

class WriteReviewPage extends StatefulWidget {
  const WriteReviewPage({Key? key}) : super(key: key);

  @override
  State<WriteReviewPage> createState() => _WriteReviewPageState();
}

class _WriteReviewPageState extends State<WriteReviewPage> {
  TextEditingController _reviewController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.cut_sharp)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Write a review",
                style: TextStyle(
                    // fontFamily: "Sail",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: TextField(
                  controller: _reviewController,
                  maxLines: 5,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Type your review here...'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text("click a star to rate the HOtel Name"),
              SizedBox(
                height: 40,
              ),
              star(),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        // handle the button click event
                        print('Confirm ');
                      },
                      child: Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
      ]),
    );
  }

  Widget star() {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 40,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 40,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 40,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star_half,
          size: 40,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star_outline,
          size: 40,
          color: Colors.yellow,
        ),
        SizedBox(width: 8.0),
      ],
    );
  }
}
