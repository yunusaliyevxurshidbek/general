import 'package:flutter/material.dart';
import 'package:general/pages/details_page.dart';

import 'house_page.dart';

class HomePage extends StatefulWidget {

  static const String id = 'home_page';



  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;


  _callDetailsPage2() {
    Navigator.of(context).pushReplacementNamed(DetailsPage.id);
  }

  _callHousePage(){
    Navigator.of(context).pushReplacementNamed(HousePage.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text('Home Page',style:
          TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.shopping_cart,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.notifications,color: Colors.white,),
          SizedBox(width: 10,),

        ],

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //color: Colors.lightBlue,
              child: Text(count.toString(),style: TextStyle(fontSize: 50),),
            ),
            GestureDetector(
              onTap: (){
                _callHousePage();
              },
              child: Container(
                child: Text('Click me',style: TextStyle(
                  fontSize: 30,color: Colors.lightBlue
                ),),
              ),
            ),
          ],
        ),
      ),













      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++; 

          });

        },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.lightBlue,
      ),
      


    );
  }
}
