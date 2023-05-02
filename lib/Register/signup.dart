import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

Future<void> signUp(
    String username, String email, String mobile, String password) async {
  const url =
      'http://localhost/Tourism/Tourism%20Management%20System%20using%20PHP%20&%20MySQL%20-TMS/tms/api/signup.php';

  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'email': email,
      'mobile': mobile,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data);
  } else {
    print('Error: ${response.statusCode}');
  }
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _firstNameController = TextEditingController();
  // TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign up'),
      // ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_sharp)),
              Text("Login")
            ]),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sign up",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                // fontFamily: "Sail"
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: 'First name',
              ),
            ),
            // SizedBox(height: 16),
            // TextField(
            //   controller: _firstNameController,
            //   decoration: InputDecoration(
            //     labelText: 'Last name',
            //   ),
            // ),
            SizedBox(height: 16),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _mobileController,
              // obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),

            SizedBox(height: 46),
            ElevatedButton(
              onPressed: () {
                _submitForm();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => DetailPage()),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.mail),
                  //SizedBox(width: 8),
                  Text('Create account'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(child: Text("or")),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey, //background color of button
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CategoryScreen()),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  SizedBox(width: 8),
                  Text('Continue with Gmail'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    final username = _firstNameController.text;
    final email = _emailController.text;
    final mobile = _mobileController.text;
    final password = _passwordController.text;

    signUp(username, email, mobile, password);
  }
}
