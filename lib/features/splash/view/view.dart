import 'package:flutter/material.dart';
import 'package:hospital/features/loading/view/view.dart';

class SplashScreen extends StatelessWidget {
  final prototype = [
    'Doctor',
    'Reseption',
    'Nurse',
    'Analyze Employee',
    'Manager',
    'HR',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 7 + 7),
        //alignment: Alignment.center,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Prototype Map',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7 + 7 + 7,
            ),
            GridView.builder(
              //       padding: EdgeInsets.zero,
              shrinkWrap: true, itemCount: prototype.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoadingScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.50, vertical: 17.0),
                    margin: EdgeInsets.only(
                        left: 3.0, right: 3.0, top: 3.0, bottom: 3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                    ),
                    child: Text(
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      prototype[index],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 3),
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                crossAxisCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
