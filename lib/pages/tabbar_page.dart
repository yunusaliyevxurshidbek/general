import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(
          title: Text('TabBar page'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home,),text: 'Home',),
              Tab(icon: Icon(Icons.search,),text: 'Search',),
              Tab(icon: Icon(Icons.person,),text: 'Profile',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.green,
              child:Center(child: Text('Page one',style: TextStyle(fontSize: 30),)),
            ),
            Container(
              color: Colors.yellowAccent,
              child:Center(child: Text('Page two',style: TextStyle(fontSize: 30),)),
            ),
            Container(
              color: Colors.purple,
              child:Center(child: Text('Page three',style: TextStyle(fontSize: 30),)),
            ),
          ],
        ),
      
      ),
    );
  }
}
