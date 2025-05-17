import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  TextEditingController contactSearchController = TextEditingController();
  var arrContacts = [
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-person-arms-raised-outstretched-69762123.jpg",
      "name": "alisha_a",
      "msg": "Have a nice day, bro!",
      "time": "now",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name": "michel_",
      "msg": "I heard this is a good movie, s…",
      "time": "now",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-person-arms-raised-outstretched-69762123.jpg",
      "name": "martini_rond",
      "msg": "See you on the next meeting!",
      "time": "15m",
    },
    {
      "img":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "name": "jamie.franco",
      "msg": "Yeap, I'm going to travel in To…",
      "time": "20m",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkJO2A-EDK7Is0z67PwZis-1pbLwNFx_DjNw&s",
      "name": "andrewww_",
      "msg": "Sounds good 😂😂😂",
      "time": "1h",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtRIN7vCVCE559ulSYLXPZUDYB8kp6QK4pcw&s",
      "name": "maxjacobson",
      "msg": "Thank you, bro!",
      "time": "2h",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "name": "sadaat_hh",
      "msg": "Instagram UI is pretty good",
      "time": "4h",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1445597021/photo/black-man-phone-and-social-media-in-city-reading-text-message-or-communication-on-social.jpg?s=612x612&w=0&k=20&c=B7pEc-0pgtUw33hz9P5-row1Go3YwwHacUJrE-lCNgA=",
      "name": "darwin_dos",
      "msg": "Ok.....",
      "time": "6h",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-person-arms-raised-outstretched-69762123.jpg",
      "name": "martini_rond",
      "msg": "See you on the next meeting!",
      "time": "15m",
    },
    {
      "img":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "name": "jamie.franco",
      "msg": "Yeap, I'm going to travel in To…",
      "time": "20m",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abu_nayem"),
        centerTitle: true,
        backgroundColor: Color(0xFF121212),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.back,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 35,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 38,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xFF262626),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: contactSearchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 18),
                    border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: arrContacts.length,
                itemExtent: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          NetworkImage(arrContacts[index]["img"].toString()),
                    ),
                    title: Text(
                      "${arrContacts[index]["name"]}",
                      style: TextStyle(color: Color(0xFFF9F9F9)),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${arrContacts[index]["msg"]}",
                          style:
                              TextStyle(color: Color(0xFFF9F9F9), fontSize: 12),
                        ),
                        Text(
                          "\u00B7 ${arrContacts[index]["time"]}",
                          style: TextStyle(color: Color(0xFFF9F9F9)),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      CupertinoIcons.camera,
                      size: 30,
                    ),
                  );
                }),
          )
        ],
      ),
      bottomNavigationBar: Container(
      height: 79,
      color: Color(0xFF121212),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt, color: Color(0xFF4BA2F4), size: 35),
            SizedBox(width: 10),
            UiHelper.CustomText(
              text: "Camera",
              fontSize: 16,
              textColor: Color(0xFF3897F0),
            ),
          ],
        ),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
