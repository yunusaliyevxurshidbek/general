import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Row Page'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,

      ),
      body: Container(
        //width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 60,
              height: 60,
              color: Colors.yellowAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
