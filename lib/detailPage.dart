import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  // const DetailPage({super.key});
  // final String data;
  // const DetailPage(this.data);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)!.settings.arguments.toString();
    print(args);

    return Scaffold(
        appBar: AppBar(
          title: Text('푸쉬업'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('1일 횟수 : 100'),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('시작일 : 2023/02/01'),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text('종료일 : 2023/03/01'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      // height: 50,
                      // width: 50,
                      child: ElevatedButton(
                        child: Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('10/100'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      // padding: EdgeInsets.all(10),
                      // height: 50,
                      // width: 50,
                      child: ElevatedButton(
                        child: Icon(Icons.remove),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/history');
          },
          child: Icon(Icons.list),
        ));
  }
}
