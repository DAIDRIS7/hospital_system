import 'package:flutter/material.dart';

class TaskDetails extends StatefulWidget {
  final userSpecialist;

  const TaskDetails({super.key, required this.userSpecialist});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  bool isSelected = false;

  _isSelected() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Task Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body:
          _bodyWidget(context, widget.userSpecialist, isSelected, _isSelected),
    );
  }
}

_bodyWidget(
  context,
  userSpecialist,
  isSelected,
  _isSelected,
) {
  return ListView(
    children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(
              7,
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(7),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              '   Tasks Name ',
            ),
          ),
        ],
      ),
      SizedBox(
        height: 7 + 7,
      ),
      ListTile(
        leading: Image.asset(
          'assets/images/daidris7.jpg',
        ),
        title: Text(
          'DAIDRIS7',
        ),
        subtitle: Text(
          'Specialist- $userSpecialist',
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '7,77,7777',
            ),
          ],
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      Text(
        'Details Note: DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7 DAIDRIS7',
      ),
      SizedBox(
        height: 7 + 7,
      ),
      Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(
              'assets/images/daidris7.jpg',
            ),
          ),
        ],
      ),
      SizedBox(
        height: 7 + 7,
      ),
      _toDo(
        isSelected,
        _isSelected,
      ),
      SizedBox(
        height: 7 + 7,
      ),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 7 + 7,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Execution',
          ),
        ),
      ),
    ],
  );
}

_toDo(
  isSelected,
  _isSelected(),
) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: [
          Text(
            '  To Do',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      GestureDetector(
        onTap: _isSelected,
        child: Row(
          children: [
            isSelected
                ? Icon(Icons.check_circle, color: Colors.greenAccent)
                : CircleAvatar(
                    radius: 9,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.white,
                    ),
                  ),
          ],
        ),
      ),
    ],
  );
}
