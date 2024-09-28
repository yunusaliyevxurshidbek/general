import 'package:flutter/material.dart';
import 'package:general/pages/home_page.dart';

class DetailsPage extends StatefulWidget {

  static const String id = 'details_page';

  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  // _callHomePage(){
  //   Navigator.of(context).pop();
  // }

  _callHomePage2(){
    Navigator.of(context).pushReplacementNamed(HomePage.id);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Details Page'),
      ),
      body: Center(
        child: MaterialButton(

          color: Colors.yellowAccent,
          onPressed: (){
            _callHomePage2();

          },
          child: Text('Exit'),
        ),

      ),

    );
  }
}
