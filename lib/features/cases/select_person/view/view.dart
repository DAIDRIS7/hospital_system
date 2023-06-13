import 'package:flutter/material.dart';

class SelectPerson extends StatefulWidget {
  @override
  State<SelectPerson> createState() => _SelectPersonState();
}

class _SelectPersonState extends State<SelectPerson> {
  bool isSelected = false;

  _isSelected() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Person',
        ),
      ),
      body: _bodyWidget(context, _isSelected, isSelected),
    );
  }
}

_bodyWidget(context, _isSelected, isSelected) {
  return SafeArea(
    child: Column(
      children: [
        _searchBar(),
        _selectionPerson(context, _isSelected, isSelected),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Select Person',
          ),
        ),
      ],
    ),
  );
}

_searchBar() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      prefixIcon: Icon(
        Icons.search,
      ),
      hintText: 'Search for nurse',
    ),
  );
}

_selectionPerson(context, _isSelected, isSelected) {
  return ListTile(
    onTap: _isSelected,
    leading: Image.asset(
      'assets/images/daidris7.jpg',
      fit: BoxFit.cover,
    ),
    title: Text(
      'DAIDRIS7',
    ),
    subtitle: Text(
      'GOAT',
    ),
    trailing: CircleAvatar(
      radius: 7 + 7,
      backgroundColor: Colors.grey[300],
      child: CircleAvatar(
        radius: 7,
        backgroundColor: isSelected == true ? Colors.green : Colors.grey[300],
      ),
    ),
  );
}
