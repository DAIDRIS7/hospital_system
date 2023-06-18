import 'package:flutter/material.dart';
import 'package:hospital/features/attendance_and_leaving/view/view.dart';

class FingerPrint extends StatefulWidget {
  var dateTime;
  FingerPrint({super.key, this.dateTime});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  Alignment _alignment = Alignment.centerLeft;
  IconData _icon = Icons.fingerprint;
  Widget _floating = Container();
  @override
  initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _alignment = Alignment.center;
      });
    });
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _icon = Icons.check_circle;
        _floating = FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AttendanceAndLeaving(
                    dateTime: DateTime.now(),
                    hour: DateTime.now().hour,
                    minute: DateTime.now().minute,
                  ),
                ));
          },
          child: Icon(Icons.arrow_forward_ios),
        );
      });
      print('One second has passed.'); // Prints after 1 second.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Icon(
            _icon,
            size: 77 + 7 + 7,
            color: Colors.white,
          ),
          SizedBox(
            height: 7 + 7 + 7,
          ),
          AnimatedContainer(
            duration: Duration(
              seconds: 3,
            ),
            alignment: _alignment,
            child: Text(
              'Your Attendance Has been Registered',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 7 + 7 + 7,
          ),
          _floating
        ],
      ),
    );
  }
}
