import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/Messages/messagesscreen.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var arrImages = [
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-person-arms-raised-outstretched-69762123.jpg",
      "name": "Your Story",
      "city": "Tokyo, Japan",
      "storyImg":
          "https://media.istockphoto.com/id/1184028419/photo/jaguar-in-the-amazon-jungle.jpg?s=612x612&w=0&k=20&c=3E3dYJZzcZoaiP5PSXh0SLwjviQpHCEToR6C99wbx0E="
    },
    {
      "img":
          "https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name": "Michel",
      "city": "Melbourne, Australia",
      "storyImg":
          "https://images.pexels.com/photos/169647/pexels-photo-169647.jpeg?cs=srgb&dl=pexels-peng-liu-45946-169647.jpg&fm=jpg"
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-person-arms-raised-outstretched-69762123.jpg",
      "name": "Jhon Limmand",
      "city": "Johannesburg, South Africa",
      "storyImg":
          "https://images.pexels.com/photos/290595/pexels-photo-290595.jpeg?cs=srgb&dl=pexels-pixabay-290595.jpg&fm=jpg"
    },
    {
      "img":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "name": "Perry",
      "city": "Johannesburg, South Africa",
      "storyImg":
          "https://cdn.mos.cms.futurecdn.net/K6WmxeWt9gT5CcQQRKUuQM-1200-80.jpg"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkJO2A-EDK7Is0z67PwZis-1pbLwNFx_DjNw&s",
      "name": "Jhonson",
      "city": "Sydney, Australia",
      "storyImg":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHoS0phEqqJQAh1aREBP_cBkXEJxgSIVQGNg&s"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtRIN7vCVCE559ulSYLXPZUDYB8kp6QK4pcw&s",
      "name": "Doyane",
      "city": "Delhi, India",
      "storyImg":
          "https://media.istockphoto.com/id/1277015766/photo/sporty-man-on-the-mountain-peak-looking-on-mountain-valley-with-sunbeams-at-colorful-sunset.jpg?s=612x612&w=0&k=20&c=gYxqA6ChjCMO-f9aNkkJnoeWbcNW3C3yedaASPeIfoA="
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "name": "Saadat",
      "city": "New York, USA",
      "storyImg":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0c7q_dbJ1dDo5Ukw9icRd4Ff3WlJmbgcjVQ&s"
    },
    {
      "img":
          "https://media.istockphoto.com/id/1445597021/photo/black-man-phone-and-social-media-in-city-reading-text-message-or-communication-on-social.jpg?s=612x612&w=0&k=20&c=B7pEc-0pgtUw33hz9P5-row1Go3YwwHacUJrE-lCNgA=",
      "name": "Darwin",
      "city": "London, UK",
      "storyImg":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReMTrjxB64OZqz8M-Fie6jPWoH3Mb37J4bpA&s"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo_2.png"),
        centerTitle: true,
        backgroundColor: Color(0xFF121212),
        leading: UiHelper.CustomImage(imgurl: "Camera Icon.png"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/Shape.png",
              )),
          SizedBox(
            width: 15,
          ),
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MessagesScreen();
            }));
          }, child: Image.asset(
            "assets/images/Messanger.png",
          ),),
          SizedBox(
            width: 18,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.orange,
                              Colors.pink,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                arrImages[index]['img'].toString()),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("${arrImages[index]["name"]}"),
                    ],
                  ),
                );
              },
              itemCount: arrImages.length,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: arrImages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage(arrImages[index]["img"].toString()),
                        ),
                        title: Text("${arrImages[index]['name']}",style: TextStyle(color: Color(0xFFF9F9F9),fontWeight: FontWeight.w600),),
                        subtitle: Text("${arrImages[index]["city"]}",style: TextStyle(color: Color(0xFFF9F9F9),fontWeight: FontWeight.w400),),
                        trailing: UiHelper.CustomImage(imgurl: "More Icon.png")
                      ),
                      Container(
                        height: 405,
                        child: Image.network(
                          "${arrImages[index]['storyImg'].toString()}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(

                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: UiHelper.CustomImage(
                                        imgurl: "Like.png")),
                                IconButton(
                                    onPressed: () {},
                                    icon: UiHelper.CustomImage(
                                        imgurl: "Comment.png")),
                                IconButton(
                                    onPressed: () {},
                                    icon: UiHelper.CustomImage(
                                        imgurl: "Messanger.png")),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: UiHelper.CustomImage(imgurl: "Save.png")),
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/Oval_1.png",height:25,fit: BoxFit.cover,),
                            title: UiHelper.CustomText(text: "Liked by sujal_dave and 44,686 others", fontSize: 13,textColor: Color(0xFFF9F9F9)),
                          ),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 18,),
                                  UiHelper.CustomText(text: "sujal_dave", fontSize: 12, fontWeight: FontWeight.w600,textColor: Color(0xFFF9F9F9)),
                                  UiHelper.CustomText(text: " The game in Japan was amazing and I want", fontSize: 13,textColor: Color(0xFFF9F9F9)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  UiHelper.CustomText(text: "to share some photos", fontSize: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
