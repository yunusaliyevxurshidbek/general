import 'package:flutter/material.dart';

class ScrollviewPage extends StatefulWidget {
  const ScrollviewPage({super.key});

  @override
  State<ScrollviewPage> createState() => _ScrollviewPageState();
}

class _ScrollviewPageState extends State<ScrollviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollview Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.yellowAccent,
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.purple,
            ),
          ],
        ),
      )


    );
  }
}
