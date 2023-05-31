import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _bodyWidget(),
    );
  }
}

_bodyWidget() {
  return SafeArea(
    child: ListView(
      children: [
        _showNotificationSection(),
      ],
    ),
  );
}

_showNotificationSection() {
  return Card(
    child: ListTile(
      leading: Image.asset(
        'assets/images/daidris7.jpg',
      ),
      title: Text(
        'DAIDRIS7',
      ),
      subtitle: Text(
        'You Have New Messages GOAT ',
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '7/7/7777',
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.favorite_border,
          ),
        ],
      ),
    ),
  );
}
