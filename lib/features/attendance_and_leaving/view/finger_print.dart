import 'package:flutter/material.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  );
  late final _offsetPosition =
      Tween<Offset>(begin: Offset.zero, end: Offset(1.5, 0.0)).animate(
    CurvedAnimation(parent: _animationController, curve: Curves.elasticIn),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: ListView(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            child: CircleAvatar(
              radius: 57,
              backgroundColor: Colors.greenAccent,
              child: Icon(
                Icons.fingerprint,
                color: Colors.grey,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 7 + 7,
          ),
          SlideTransition(
            position: _offsetPosition,
            child: Text(
              'DAIDRIS7',
            ),
          ),
        ],
      ),
    );
  }
}
