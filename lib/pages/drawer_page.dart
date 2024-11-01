import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Drawer Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text('Welcome'),
      ),

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Xurshidbek',
                    style:TextStyle(color: Colors.white,fontSize: 20) ,),
                  Text('xurshidbek4466@gmail.com',style:
                    TextStyle(color: Colors.white,fontSize: 18),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
