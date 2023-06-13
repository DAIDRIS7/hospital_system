import 'package:flutter/material.dart';
import 'package:hospital/features/attendance_and_leaving/view/finger_print.dart';
import 'package:hospital/features/notification/view/view.dart';
import 'package:hospital/features/profile/view/view.dart';

class AttendanceAndLeaving extends StatelessWidget {
  final userSpecialist = 'DAIDRIS7';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProfileInfo(userSpecialist: userSpecialist),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(7),
              child: Image.asset(
                'assets/images/daidris7.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProfileInfo(userSpecialist: userSpecialist),
                ),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'DAIDRIS7',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Specialist, $userSpecialist',
                  style: TextStyle(
                    fontSize: 7,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ),
                  );
                },
                child: Icon(
                  color: Colors.black,
                  Icons.notifications,
                )),
          ],
          elevation: 1),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: EdgeInsets.all(
          7,
        ),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.9,
        color: Colors.deepOrangeAccent,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 7,
                ),
                Text(
                  ' Note ',
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Details Note: DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7',
            ),
          ],
        ),
      ),
      SizedBox(
        height: 7,
      ),
      _fingerPrint(context),
      _fingerPrint(context),
    ],
  );
}

_fingerPrint(context) {
  return Container(
    margin: EdgeInsets.all(7 + 7),
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width * 0.9,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'DAIDRIS7',
            ),
            Text(
              '7.7',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FingerPrint(),
                  ),
                );
              },
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        Column(
          children: [
            Icon(Icons.favorite),
          ],
        ),
      ],
    ),
  );
}
