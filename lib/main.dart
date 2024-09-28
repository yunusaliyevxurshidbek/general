import 'package:flutter/material.dart';
import 'package:general/button_page.dart';
import 'package:general/pages/column_page.dart';
import 'package:general/pages/details_page.dart';
import 'package:general/pages/expanded_page.dart';
import 'package:general/pages/home_page.dart';
import 'package:general/pages/home_page2.dart';
import 'package:general/pages/row_page.dart';
import 'package:general/pages/stack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage2(),
      routes: {
        HomePage.id: (context) => HomePage(),
        DetailsPage.id: (context) => DetailsPage(),
      },
    );
  }
}

