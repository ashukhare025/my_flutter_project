import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeHome extends StatefulWidget {
  const DateTimeHome({super.key});

  @override
  State<DateTimeHome> createState() => _DateTimeHomeState();
}

class _DateTimeHomeState extends State<DateTimeHome> {
  DateTime pickDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date & Time Picker'), centerTitle: true),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Flexible(
            //   child: CupertinoDatePicker(
            //     onDateTimeChanged: (date) {
            //       print(date);
            //     },
            //   ),
            // ),
            // Flexible(
            //   child: CupertinoTimerPicker(
            //     onTimerDurationChanged: (time) {
            //       print(time);
            //     },
            //   ),
            // ),
            Text(DateFormat('dd/MM/yyyy hh:mm a').format(pickDate)),
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(Duration(days: 365 * 100)),
                  // firstDate: DateTime(1900),
                  // lastDate: DateTime(2026),
                  lastDate: DateTime.now().add(Duration(days: 365 * 10)),
                );

                if (date != null) {
                  setState(() {
                    pickDate = date;
                  });
                }
                print(date);
              },
              child: Text('Pick Date'),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(time?.format(context));
              },
              child: Text('Pick Time'),
            ),
          ],
        ),
      ),
    );
  }
}
