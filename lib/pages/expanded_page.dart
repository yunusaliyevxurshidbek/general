import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              color: Colors.purple,
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    flex:3,
                    child: Container(
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                height: 200,
                color: Colors.purple,
              ),
            ),
          ],


        ),


      ),
    );
  }
}
