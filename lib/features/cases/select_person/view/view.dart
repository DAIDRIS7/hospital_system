import 'package:flutter/material.dart';

class SelectPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Person',
        ),
      ),
      body: _bodyWidget(),
    );
  }
}

_bodyWidget() {
  return SafeArea(
    child: Column(
      children: [
        _searchBar(),
        _selectionPerson(),
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

_selectionPerson() {
  return ListTile(
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
    trailing: Icon(
      Icons.favorite,
    ),
  );
}
