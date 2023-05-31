import 'package:flutter/material.dart';
import 'package:hospital/features/cases/case_details/view/view.dart';

class CasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Cases',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return SafeArea(
    child: ListView(
      children: [
        _caseCard(context),
        SizedBox(
          height: 7,
        ),
        _caseCard(context),
      ],
    ),
  );
}

_caseCard(context) {
  return Card(
    child: Column(children: [
      _iconText(),
      _iconText(),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CaseDetails(),
            ),
          );
        },
        child: Text(
          'Show Details',
        ),
      )
    ]),
  );
}

_iconText({
  IconData? iconData,
  String? info,
}) {
  return TextButton(
    child: Row(
      children: [
        Icon(iconData ?? Icons.favorite, color: Colors.greenAccent),
        SizedBox(
          width: 7 + 7,
        ),
        Text(
          info ?? 'DAIDRIS7',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
    onPressed: () {},
  );
}
