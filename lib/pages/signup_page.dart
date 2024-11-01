import 'package:flutter/material.dart';
import 'package:general/pages/home_page.dart';
import 'package:general/pages/signinpage.dart';

class SignUpPage extends StatefulWidget {

  static const String id = 'signup_page';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  _callSignIn(){
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }

  _callHomePage(){
    Navigator.of(context).pushReplacementNamed(HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #Background:
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1),
            ],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(
              child: Container(
                //color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // #Logo:
                    Text('Instagram',
                      style: TextStyle(color: Colors.white,fontSize: 45,
                          fontFamily: 'Billabong'),),

                    // #fullname:
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      //padding: EdgeInsets.only(right: 10,left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Fullname',
                          hintStyle: TextStyle(color: Colors.white54,fontSize: 17),
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                    // #Email_input:
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      //padding: EdgeInsets.only(right: 10,left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white54,fontSize: 17),
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                    // #Password_input:
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      //padding: EdgeInsets.only(right: 10,left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white54,fontSize: 17),
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),

                    // #C_Password_input:
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      //padding: EdgeInsets.only(right: 10,left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(color: Colors.white54,fontSize: 17),
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),

                    // #SignIn:
                    GestureDetector(
                      onTap: (){
                        _callHomePage();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        //padding: EdgeInsets.only(right: 10,left: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        //color: Colors.orange,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text('Sign Up',style: TextStyle(color: Colors.white,
                              fontSize: 17),),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            // #SignUp_button:
            Container(
              height: 48,
              //color: Colors.orange,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an acount",
                    style: TextStyle(color: Colors.white,),),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      _callSignIn();
                    },
                    child: Text('Sign In',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}

