import 'package:flutter/material.dart';

class CircleImagePage extends StatefulWidget {
  const CircleImagePage({super.key});

  @override
  State<CircleImagePage> createState() => _CircleImagePageState();
}

class _CircleImagePageState extends State<CircleImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleImage Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [

            //Container method:
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/girl_1.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(height: 10,),

            //CLipOval method:
            ClipOval(
              child: Image(
                image: AssetImage('assets/images/girl_1.jpg'),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),

            //CircleAvatar method:

            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://unsplash.com/photos/black-and-white-round-analog-watch-H7qMwOxf6Z8'),
            ),
            
            //ClipReact method:!!!!!problem
            ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: Image(
                  image: AssetImage('assets/images/girl_1.jpg'),
                ),
              ),
              

            ),


          ],

        ),
      ),
    );
  }
}
