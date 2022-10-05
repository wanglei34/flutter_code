import 'package:flutter/material.dart';

class DateDemo extends StatefulWidget {
  const DateDemo({Key? key}) : super(key: key);

  @override
  _DateDemoState createState() => _DateDemoState();
}

class _DateDemoState extends State<DateDemo> {
  var _datetime = DateTime.now();

  _showDatePicker() async {
    var date = await showDatePicker(
        context: context,
        initialDate: _datetime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2050),
        locale: Locale('zh'));
    if (date == null) return;
    print(date);
    setState(() {
      _datetime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('日期和时间'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDatePicker();
          },
          child: const Text('点击'),
        ),
      ),
    );
  }
}
