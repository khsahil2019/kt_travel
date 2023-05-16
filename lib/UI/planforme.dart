import 'package:flutter/material.dart';

class PlanForMe extends StatefulWidget {
  @override
  _PlanForMeState createState() => _PlanForMeState();
}

class _PlanForMeState extends State<PlanForMe> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String destination;
  late String type;
  DateTime? fromDate;
  DateTime? toDate;
  late int guests;

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );

    if (selectedDate != null) {
      setState(() {
        if (isFromDate) {
          fromDate = selectedDate;
        } else {
          toDate = selectedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Form'),
      ),
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                name = value!;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Destination'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a destination';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                destination = value!;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Type'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a type';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                type = value!;
                              },
                            ),
                            ListTile(
                              title: Text('From Date'),
                              subtitle: fromDate != null
                                  ? Text(fromDate.toString())
                                  : Text('Select a date'),
                              onTap: () {
                                _selectDate(context, true);
                              },
                            ),
                            ListTile(
                              title: Text('To Date'),
                              subtitle: toDate != null
                                  ? Text(toDate.toString())
                                  : Text('Select a date'),
                              onTap: () {
                                _selectDate(context, false);
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Guests'),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the number of guests';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                guests = int.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();

                                  // TODO: Process the form data

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Form submitted successfully')),
                                  );
                                }
                              },
                              child: Text('Submit'),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: PlanForMe(),
//   ));
// }
