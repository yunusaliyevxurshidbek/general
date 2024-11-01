import 'package:flutter/material.dart';

class PagerViewPage extends StatefulWidget {
  const PagerViewPage({super.key});

  @override
  State<PagerViewPage> createState() => _PagerViewPageState();
}

class _PagerViewPageState extends State<PagerViewPage> {

  PageController? _pageController;

  String title = 'Page one';

  int _selectedIndex = 0;

  _changeTitle(int index){
    if (index == 0){
      title = 'Page one';
    }
    else if (index == 1){
      title = 'Page two';
    }
    else if (index == 2){
      title = 'Page three';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,

      ),
      body: PageView(
        controller: _pageController,

        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;
            _changeTitle(index);
          });

        },

        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Page one',style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Center(
              child: Text('Page two',style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Page three',style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        onTap: (int index){
          setState(() {
            _selectedIndex = index;
            _pageController?.animateToPage(
                index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            _changeTitle(index);


          });

        },
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black45,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
      ),
    );
  }
}
