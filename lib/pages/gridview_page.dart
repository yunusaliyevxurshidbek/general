import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: GridView.count(

          crossAxisCount: 2,

          children: [
            _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
            _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
            _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
            _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
            _itemList(image: 'assets/images/girl_1.jpg',title: 'Lisa'),
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
    );
  }

  Widget _itemList({image,title}){
    return Container(

      width: 200,
      height: 200,
      color: Colors.red,
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10,),
          Text(title,style: TextStyle(fontSize: 25),),


        ],

      ),
    );
  }

}
