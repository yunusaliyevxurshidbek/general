import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {


  _dialogiOS(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return CupertinoAlertDialog(
          title: Text('Cancel'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text('Cancel'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              isDefaultAction: false,
              child: Text('Confirm'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _dialogAndroid(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            MaterialButton(

              onPressed: (){
                Navigator.of(context).pop();
                },
              child: Text('Cancel'),

            ),
            MaterialButton(
              onPressed: (){
                Navigator.of(context).pop();
                },
              child: Text('Confirm'),
            ),
          ],


        );

      }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            if (Platform.isAndroid){
              _dialogAndroid();
            }
            else if (Platform.isIOS){
              _dialogiOS();
            }
          },
          color: Colors.lightBlue,
          child: Text('Open dialog'),
        ),
      ),
    );
  }
}
