import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  List specialist = [
    [Colors.blue, Colors.greenAccent, Colors.deepPurple, Colors.cyanAccent],
    [
      'Calls',
      'Tasks',
      'Repots',
      'Attendens-Leaving',
    ],
    [
      Icon(
        Icons.person_add,
      ),
      Icon(
        Icons.task,
      ),
      Icon(
        Icons.description,
      ),
      Icon(
        Icons.fingerprint,
      ),
    ],
    []
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'DAIDRIS7',
          ),
          elevation: 1),
      body: SafeArea(
        child: GridView.builder(
          itemCount: specialist.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: specialist[0][index],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: specialist[2][index],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    specialist[1][index],
                  ),
                ],
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }
}
