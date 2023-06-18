import 'package:flutter/material.dart';

class DateTimePicker {
  DateTime _dateTime = DateTime(2002);
  dateTimePicker(context) async {
    await showModalBottomSheet(
      context: context,
      builder: (context) => _date(context, _dateTime),
    );
  }
}

_date(
  context,
  _dateTime,
) {
  showDatePicker(
    context: context,
    initialDate: _dateTime,
    firstDate: DateTime(1956),
    lastDate: DateTime(2030),
    currentDate: _dateTime,
  );
}
