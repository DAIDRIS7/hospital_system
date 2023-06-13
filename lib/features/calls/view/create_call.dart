import 'package:flutter/material.dart';
import 'package:hospital/features/calls/view/successfully.dart';

class CreateCall extends StatelessWidget {
  final userSpecialist = 'DAIDRIS7';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Create Call ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _bodyWidget(context, userSpecialist),
    );
  }
}

_bodyWidget(context, userSpecialist) {
  return ListView(
    children: [
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Name ',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Age  ',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Phone Number ',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Select Doctor ',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Description  ',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessfullyCall(
                    userSpecialist: userSpecialist,
                  ),
                ),
              );
            },
            child: Text(
              'Create Call',
            ),
          )),
    ],
  );
}
