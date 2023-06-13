import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital/features/auth/view/loginScreen.dart';
import 'package:hospital/features/splash/model/model.dart';

class LoadingScreen extends StatefulWidget {
  final userSpecialist;
  bool isHasAccess = false;
  LoadingScreen({super.key, required this.userSpecialist});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double _value = 0.0;
  _isHasAccess() {
    if (widget.userSpecialist == UserSpecialist().manager) {
      widget.isHasAccess = true;
    }
    if (widget.userSpecialist == UserSpecialist().doctor) {
      widget.isHasAccess = true;
    }
    if (widget.userSpecialist == UserSpecialist().nurse) {
      widget.isHasAccess = true;
    }
  }

  _linearProgressIndicatorValue() {
    Future.delayed(
        Duration(
          milliseconds: 400,
        ), () {
      if (_value > 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LogInPage(
                userSpecialist: widget.userSpecialist,
                isHasAccess: widget.isHasAccess),
          ),
        );
      } else {
        setState(() {
          _value += 0.1;
        });
        _linearProgressIndicatorValue();
      }
    });
  }

  initState() {
    super.initState();
    _linearProgressIndicatorValue();
    _isHasAccess();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/logo.png',
            ),
            const SizedBox(
              height: 7 + 7,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 7 + 7 + 7,
              ),
              child: LinearProgressIndicator(
                value: _value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
