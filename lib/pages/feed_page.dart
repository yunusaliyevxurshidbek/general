import 'package:flutter/material.dart';
import '../model/post_model.dart';
import '../model/story_model.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  List<Story> _stories = [
    Story("assets/images/user_1.jpg", "Jazmin"),
    Story("assets/images/user_2.jpg", "Sylvester"),
    Story("assets/images/user_3.jpg", "Lavina"),
    Story("assets/images/user_1.jpg", "Jazmin"),
    Story("assets/images/user_2.jpg", "Sylvester"),
    Story("assets/images/user_3.jpg", "Lavina"),
  ];

  List<Post> _posts = [
    Post(
        userName: "Brianne",
        userImage: "assets/images/user_1.jpg",
        postImage: "assets/images/feed_1.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Henri",
        userImage: "assets/images/user_2.jpg",
        postImage: "assets/images/feed_2.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Mariano",
        userImage: "assets/images/user_3.jpg",
        postImage: "assets/images/feed_3.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
          
              // #stories:
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Stories',style: TextStyle(color: Colors.grey,fontSize: 14),),
                    Text('Watch all',style: TextStyle(color: Colors.grey,fontSize: 14),),
                  ],
                ),
              ),
          
              //#Story_list:
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 110,
                //color: Colors.orange,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context,index){
                    return _itemOfStory(_stories[index]);
                  },
          
                ),
              ),
          
              //Post_list:
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:  _posts.length,
                  itemBuilder: (context,index){
                    return _itemOfPost(_posts[index]);
                  },
                ),
              )
              
            ],
          ),
        ),
      ),

    );
  }

  Widget _itemOfPost(Post post){
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 400 ,
      //color: Colors.orange,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: AssetImage(post.userImage!),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10,),
                Text(post.userName!,style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),

                Expanded(child: SizedBox.shrink()),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: (){},
                ),


              ],
            ),
          ),
          FadeInImage(
            image: AssetImage(post.postImage!),
            placeholder: AssetImage('assets/images/placeholder.png'),
            width: MediaQuery.of(context).size.width,

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.messenger_outline),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.send_sharp),
                  ),
                ],
              ),

              IconButton(
                onPressed: (){},
                icon: Icon(Icons.bookmark_border),
              ),
            ],
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                children: [TextSpan(
                  text: 'Liked By',
                  style: TextStyle(color: Colors.black),

                ),


                  TextSpan(
                    text: ' Sigmund, Yassenia, Dayan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                  ),



                  TextSpan(
                      text: ' and',
                      style: TextStyle(
                        color: Colors.black,
                      )
                  ),

                  TextSpan(
                      text: '  1263 others',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )
                  ),


                ],
              ),

            ),
          ),
          
        ],
      ),
    );
  }

  Widget _itemOfStory(Story story){
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(width: 3,color: Color(0xFF8e44ad))
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image!),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(story.name!),
      ],
    );
  }

}
