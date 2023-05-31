import 'package:flutter/material.dart';

class MedicalMeasurement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Medical Measurement',
        ),
      ),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return ListView(
    children: [
      ListTile(
        leading: Image.asset(
          'assets/images/daidris7.jpg',
        ),
        title: Text(
          'DAIDRIS7',
        ),
        subtitle: Text(
          'Specialist-Nurse',
        ),
        trailing: Text(
          '7/7/7777',
        ),
      ),
      Text(
        'Details Note:DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 ',
      ),
      Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Blood pressure',
            ),
          ),
          SizedBox(
            width: 7,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Sugar Analyze',
            ),
          ),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Text(
            'Add Measurement',
          ),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: MediaQuery.of(context).size.width * 0.35,
              child: DropdownMenuItem(
                alignment: Alignment.center,
                child: Text(
                  'Blood pressure',
                ),
              )),
          SizedBox(
            width: 7,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.35,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '7/7/7777',
                ),
              )),
        ],
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: MediaQuery.of(context).size.width * 0.35,
              child: DropdownMenuItem(
                alignment: Alignment.center,
                child: Text(
                  'Sugar Analyze',
                ),
              )),
          SizedBox(
            width: 7,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.35,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )),
        ],
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Note',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      SizedBox(
        height: 7,
      ),
      Container(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Add Measurement',
          ),
        ),
      ),
    ],
  );
}
