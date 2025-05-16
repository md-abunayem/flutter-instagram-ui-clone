import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  var arrImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9YYh5Fk1u9VsWWr1MhkyQeOzeNbtnnMO96g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s",
    "https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp",
    "https://static.vecteezy.com/system/resources/thumbnails/061/902/176/small/moon-shining-over-lake-and-pine-trees-at-night-photo.jpg",
    "https://media.istockphoto.com/id/1280385511/photo/colorful-background.jpg?s=612x612&w=0&k=20&c=kj0PRQlgvWLzA1-1me6iZp5mlwsZhC4QlcvIEb1J1bs=",
    "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg",
    "https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://static.vecteezy.com/system/resources/thumbnails/009/273/280/small/concept-of-loneliness-and-disappointment-in-love-sad-man-sitting-element-of-the-picture-is-decorated-by-nasa-free-photo.jpg",
    "https://tinypng.com/static/images/boat.png",
    "https://t3.ftcdn.net/jpg/02/70/35/00/360_F_270350073_WO6yQAdptEnAhYKM5GuA9035wbRnVJSr.jpg",
    "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
    "https://img.freepik.com/free-photo/animal-eye-staring-close-up-watch-nature-generative-ai_188544-15471.jpg?semt=ais_hybrid&w=740",
    "https://images.ctfassets.net/hrltx12pl8hq/4f6DfV5DbqaQUSw0uo0mWi/6fbcf889bdef65c5b92ffee86b13fc44/shutterstock_376532611.jpg?fit=fill&w=600&h=400",
    "https://media.springernature.com/lw703/springer-static/image/art%3A10.1038%2F528452a/MediaObjects/41586_2015_Article_BF528452a_Figg_HTML.jpg",
    "https://stimg.cardekho.com/images/carexteriorimages/930x620/Maruti/Dzire/11387/1731318279714/front-left-side-47.jpg?impolicy=resize&imwidth=420",
    "https://thumbs.dreamstime.com/b/falling-drop-rain-blue-earth-image-water-splash-crown-shape-water-splash-crown-shape-falling-drop-earth-140453719.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSihidVa_r_CSpi6SLK08RkFa6T9_xFoXSBzA&s",
    "https://i.redd.it/o6f2qwf7ii1a1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 75,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 38,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF262626),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: searchController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontSize: 18, color: Color(0xFF8E8E93)),
                    prefixIcon: UiHelper.CustomImage(imgurl: "Search Icon.png"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            UiHelper.CustomImage(
              imgurl: "Live.png",
            ),
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              smallContainer(text: "IGTV", width: 75, url: "Icon_IGTV.png"),
              SizedBox(
                width: 11,
              ),
              smallContainer(text: "Shop", width: 77, url: "Icon_Shop.png"),
              SizedBox(
                width: 11,
              ),
              smallContainer(text: "Style", width: 60),
              SizedBox(
                width: 11,
              ),
              smallContainer(text: "Sports", width: 68),
              SizedBox(
                width: 11,
              ),
              smallContainer(text: "Auto", width: 55),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                height: 180,
                width: 180,
                child: Image.network(
                  arrImages[index].toString(),
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: arrImages.length,
          ),
        )
      ],
    ));
  }

  Widget smallContainer(
      {required String text, String? url, required double width}) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xFF000000),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white24),
      ),
      child: url != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/$url"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
    );
  }
}
