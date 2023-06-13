import 'package:flutter/material.dart';
import 'package:hospital/features/calls/view/create_call.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Calls',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 1,
        centerTitle: true,
      ),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return SafeArea(
    child: Column(
      children: [
        _addCallSection(context),
        _showCallsSection(),
      ],
    ),
  );
}

_addCallSection(context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
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
                builder: (context) => CreateCall(),
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

_showCallsSection() {
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
