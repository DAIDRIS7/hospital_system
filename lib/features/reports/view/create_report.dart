import 'package:flutter/material.dart';

class CreateReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Create Report ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return ListView(
    children: [
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Report Name ',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Description',
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/icons/upload.jpg',
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Upload Image ',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Create Report ',
          ),
        ),
      ),
    ],
  );
}
