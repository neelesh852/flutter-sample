import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Constants/app_data.dart';

class DatePicker {
  final BuildContext context;
  final String dateFormat;
  final ValueChanged<String>? date;

  DatePicker(this.context, {this.dateFormat = AppData.dateFormat, this.date});

  void show() async {
    var pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now()
    );
    if (pickedDate != null) {
      String formattedDate =
      DateFormat(dateFormat).format(pickedDate);
      if (date != null) {
        date!(formattedDate);
      }
    }
  }
}