import 'package:flutter/material.dart';

class ButtonPage2 extends StatefulWidget {
  const ButtonPage2({super.key});

  @override
  State<ButtonPage2> createState() => _ButtonPage2State();
}

class _ButtonPage2State extends State<ButtonPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          child: MaterialButton(
            onPressed: (){},
            color: Colors.lightBlue,
            child: Text('Sign Up'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),

          ),
        ),
      ),
    );
  }
}
