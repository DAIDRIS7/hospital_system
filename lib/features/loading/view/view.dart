import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital/features/auth/view/loginScreen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  initState() {
    super.initState();
    Timer(
        const Duration(
          milliseconds: 700,
        ), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogInPage(),
        ),
      );
    });
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
                margin: const EdgeInsets.all(
                  7,
                ),
                child: const LinearProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
