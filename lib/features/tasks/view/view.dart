import 'package:flutter/material.dart';
import 'package:hospital/features/tasks/task_details/view/view.dart';

class TasksPage extends StatelessWidget {
  var userSpecialist;

  TasksPage({super.key, this.userSpecialist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Tasks',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: _bodyWidget(context, userSpecialist),
    );
  }
}

_bodyWidget(context, userSpecialist) {
  return ListView(
    children: [
      _tasksFormSection(context),
      _showTasksSection(context, userSpecialist)
    ],
  );
}

_tasksFormSection(context) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 7,
      top: 7,
      left: 7,
      right: 7,
    ),
    // width: MediaQuery.of(context).size.width * 0.85,
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
  );
}

_showTasksSection(context, userSpecialist) {
  return ListTile(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TaskDetails(userSpecialist: userSpecialist),
        ),
      );
    },
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
