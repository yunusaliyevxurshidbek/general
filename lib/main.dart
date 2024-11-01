import 'package:flutter/material.dart';
import 'package:general/button_page.dart';
import 'package:general/facebook_clone/facebook.dart';
import 'package:general/pages/button_page2.dart';
import 'package:general/pages/circleimage_page.dart';
import 'package:general/pages/column_page.dart';
import 'package:general/pages/container_page.dart';
import 'package:general/pages/details_page.dart';
import 'package:general/pages/drawer_page.dart';
import 'package:general/pages/expanded_page.dart';
import 'package:general/pages/gesture_page.dart';
import 'package:general/pages/gridview_page.dart';
import 'package:general/pages/home_page.dart';
import 'package:general/pages/dialogAndroidios.dart';
import 'package:general/pages/house_page.dart';
import 'package:general/pages/listview_page.dart';
import 'package:general/pages/listviewh_page.dart';
import 'package:general/pages/login_page.dart';
import 'package:general/pages/pagerview_page.dart';
import 'package:general/pages/row_page.dart';
import 'package:general/pages/scrollview_page.dart';
import 'package:general/pages/signinpage.dart';
import 'package:general/pages/splash_page.dart';
import 'package:general/pages/stack_page.dart';
import 'package:general/pages/tabbar_page.dart';
import 'package:general/pages/textfield_page.dart';

import 'pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FacebookPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        DetailsPage.id: (context) => DetailsPage(),
        SplashPage.id:(context) => SplashPage(),
        SignInPage.id:(context) => SignInPage(),
        SignUpPage.id:(context) => SignUpPage(),
        HousePage.id:(context) => HousePage(),

      },
    );
  }
}

