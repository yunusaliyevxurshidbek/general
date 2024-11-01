// #This is the page that related to FeedPage:


import 'package:flutter/material.dart';


import 'feed_page.dart';

class HousePage extends StatefulWidget {

 static const String id = "house_page";
  const HousePage({super.key});

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {

  var _pages = [
  FeedPage(),
  FeedPage(),
  FeedPage(),
  FeedPage(),
  FeedPage(),
  ];

  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation:0 ,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.camera_alt_outlined,color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.tv,color: Colors.black,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.send_sharp,color: Colors.black,),
          ),
        ],
      ),

      body: _pages[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int index){
          setState(() {
            currentPage = index;
          });
          },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'Upload'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}
