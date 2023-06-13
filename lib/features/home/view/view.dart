import 'package:flutter/material.dart';
import 'package:hospital/features/attendance_and_leaving/view/view.dart';
import 'package:hospital/features/calls/view/view.dart';
import 'package:hospital/features/cases/view/view.dart';
import 'package:hospital/features/notification/view/view.dart';
import 'package:hospital/features/profile/view/view.dart';
import 'package:hospital/features/reports/view/view.dart';
import 'package:hospital/features/splash/model/model.dart';
import 'package:hospital/features/tasks/view/view.dart';

class Homepage extends StatelessWidget {
  final userSpecialist;
  bool isHasAccess;

  Homepage(
      {super.key, required this.userSpecialist, required this.isHasAccess});
  List specialist = [
    [
      Colors.blue,
      Colors.greenAccent,
      Colors.deepPurple,
      Colors.cyanAccent,
      Colors.brown,
    ],
    [
      'Calls',
      'Tasks',
      'Repots',
      'Attendens-Leaving',
      'Cases',
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
      Icon(
        Icons.health_and_safety,
      ),
    ],
    [
      CallsPage(),
      TasksPage(
          //    userSpecialist: userSpecialist,
          ),
      ReportsPage(),
      AttendanceAndLeaving(),
      CasesPage(),
    ],
  ];
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
      body: SafeArea(
        child: GridView.builder(
          itemCount: isHasAccess ? specialist.length + 1 : specialist.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => specialist[3][index]),
                );
              },
              child: Container(
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
