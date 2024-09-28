import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Stack(
        children: [
          
          Center(
            child: Text('Welcome!',style: TextStyle(fontSize: 50),),
          ),

          Center(
            child: CircularProgressIndicator(),
          ),

        ],
      ),
    );
  }
}
