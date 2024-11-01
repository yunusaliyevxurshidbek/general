import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        //margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                print('Clicked');
              },
                child: Text('Cick me',style: TextStyle(fontSize: 30),)),

            SizedBox(height:20,),

            GestureDetector(
              onLongPress: (){
                print('CLicked');
              },
              child: Image(
                image: AssetImage('assets/images/girl_1.jpg'),
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
