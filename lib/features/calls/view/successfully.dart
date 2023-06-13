import 'package:flutter/material.dart';
import 'package:hospital/features/home/view/view.dart';

class SuccessfullyCall extends StatelessWidget {
  final userSpecialist;
  final isHasAccess;
  const SuccessfullyCall(
      {super.key, required this.userSpecialist, this.isHasAccess});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context, userSpecialist, isHasAccess),
    );
  }
}

_bodyWidget(context, userSpecialist, isHasAccess) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/icons/success.jpg',
      ),
      SizedBox(
        height: 7,
      ),
      Text(
        'The request has canceled successfully',
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(
                    userSpecialist: userSpecialist,
                    isHasAccess: isHasAccess,
                  ),
                ),
              );
            },
            child: const Text(
              'Back to home ',
            ),
          )),
    ],
  );
}
