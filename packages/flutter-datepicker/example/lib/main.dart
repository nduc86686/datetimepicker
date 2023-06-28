import 'package:flutter/material.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DatePicker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker Demo"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LinearDatePicker(
                startDate: "2023/03/23",
                endDate: "2100/01/01",
                initialDate: "2023/02/23",
                dateChangeListener: (String selectedDate) {
                  print(selectedDate);
                },
                showDay: true,
                showLabels: false,
                columnWidth: 100,
                showMonthName: true,
                isJalaali: false,
              ),
              ElevatedButton(
                child: Text(
                  "Pick Date",
                ),
                onPressed: () {
                  showDateDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Choose Date'),
        content: LinearDatePicker(
          dateChangeListener: (String selectedDate) {
            print(selectedDate);
          },
          showMonthName: true,
          isJalaali: false,
        ),
      ),
    );
  }
}
