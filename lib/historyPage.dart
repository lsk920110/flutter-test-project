import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('asd'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              child: Row(
                children: [
                  Text((10 - index).toString()),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text('2023/02/05'),
                  Padding(padding: EdgeInsets.only(right: 10, left: 40)),
                  Text('100/100'),
                  Padding(padding: EdgeInsets.only(right: 10, left: 40)),
                  Text('완료'),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
