import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('ListView Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ) ,

      body: ListView(
        children: [
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
          _itemList(image: 'assets/images/girl_1.jpg',title: 'Xurshidbek'),
        ],
      ),

    );
  }

Widget _itemList({image,title}){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
            height: 70,
            width: 70,
          ),
          SizedBox(width: 10,),
          Text(title),
        ],


      ),
    );
}

}
