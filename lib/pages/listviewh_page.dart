import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPage2 extends StatefulWidget {
  const ListViewPage2({super.key});

  @override
  State<ListViewPage2> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            height: 210,
            color: Colors.grey,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
                _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),

              ],
            ),

          ),
        ],
      ),
    );
  }
  Widget _itemList({image,title}){
    return Container(
      color: Colors.red,
      height: 200,
      width: 200,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
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
