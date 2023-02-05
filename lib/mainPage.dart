import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testproject/detailPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('habit list')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              child: Row(
                children: [
                  Text(
                    'pushup',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 50, right: 50),
                  ),
                  Text(
                    '15/100',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                  ),
                  Text('진행중'),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/detail', arguments: '25');
              },
              onLongPress: () {
                print('delete');
              },
            ),
          );
        },
        itemCount: 100,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/regist');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



// Container(
//         child: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pushNamed('/detail', arguments: '25');
//             },
//             child: Text('Detail'),
//           ),
//         ),
//       ),