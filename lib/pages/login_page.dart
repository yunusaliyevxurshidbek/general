import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            //email
            Padding(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
              
                ),
                validator: (input) => !input!.contains('@')? 'Please enter a valid email':null,
                onSaved: (input) => email = input,
              
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',

                ),
                validator: (input) => input!.length<6? 'Must be at least 6 characters':null,
                onSaved: (input) => password = input,
                obscureText: true,

              ),
            ),
          ],
        ),
      ),
    );
  }
}


