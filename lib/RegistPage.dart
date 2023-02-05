import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  String _selectedDate = '';

  TextEditingController? start_dt_controller;
  TextEditingController? end_dt_controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start_dt_controller = new TextEditingController();
    end_dt_controller = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regist Page'),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: null,
                  decoration: InputDecoration(labelText: '습관 이름')),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: null,
                  decoration: InputDecoration(labelText: '일일 갯수')),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                onTap: () async {
                  await _selectDate(context, start_dt_controller);
                },
                controller: start_dt_controller,
                decoration: InputDecoration(labelText: '시작일'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                onTap: () async {
                  await _selectDate(context, end_dt_controller);
                },
                controller: end_dt_controller,
                decoration: InputDecoration(labelText: '종료일'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('저장하기'),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Future _selectDate(BuildContext context, controller) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selected != null) {
      setState(() {
        String year = (DateFormat.y()).format(selected);
        String month = (DateFormat.M()).format(selected);
        String day = (DateFormat.d()).format(selected);
        _selectedDate = (DateFormat.M()).format(selected);
        controller!.value =
            TextEditingValue(text: year + '-' + month + '-' + day);
      });
    }
    return _selectedDate;
  }
}
