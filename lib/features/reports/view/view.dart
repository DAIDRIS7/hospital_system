import 'package:flutter/material.dart';
import 'package:hospital/features/reports/view/create_report.dart';

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Reports',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return ListView(
    children: [
      _reportFormSection(context),
      _showReportsSection(),
    ],
  );
}

_reportFormSection(context) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(
          bottom: 7,
          top: 7,
          left: 7,
          right: 7,
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        child: TextFormField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.calendar_month),
            ),
            hintText: 'DAIDRIS7',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.width * 0.16,
        width: MediaQuery.of(context).size.width * 0.1,
        color: Colors.blue,
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ccontext) => CreateReport(),
              ),
            );
          },
          icon: Icon(
            Icons.add,
          ),
        ),
      ),
    ],
  );
}

_showReportsSection() {
  return ListTile(
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Icon(
            Icons.person,
          ),
        ),
        Container(
          child: Icon(
            Icons.calendar_month,
          ),
        ),
      ],
    ),
    title: Text(
      'DAIDRIS7',
    ),
    subtitle: Text(
      'daidris7',
    ),
    trailing: Icon(
      Icons.favorite,
    ),
  );
}
