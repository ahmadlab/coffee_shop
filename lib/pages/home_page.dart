import 'package:animate_do/animate_do.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> coffees = ['Cappucino', 'Espresso', 'Latte', 'Flat', 'Milky'];
  String activeTab = "Cappucino";

  Widget conffeeItem(String item) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[900]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(item), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Cappucino",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.brown),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "With Oat Milk",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.20",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown),
                child: const Text(
                  "+",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget newsList(String image) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 28, 28, 39),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Text(
                  "Top 5 Coffee You Must Try",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      height: 1.2,
                      color: Colors.grey[400]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListView(
              children: [
                // topbar
                // text
                //search bar
                // tab
                // product list
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentIcons.list_28_filled,
                        color: Colors.grey,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile2.png"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                FadeInLeft(
                  duration: Duration(seconds: 2),
                  child: const Text(
                    "Find The Best Coffee For You",
                    style: TextStyle(
                        height: 1.2,
                        fontSize: 37,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Find Your Coffee",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 17),
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 40,
                        color: Colors.white,
                      ),
                      fillColor: Colors.grey[800],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: coffees.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            activeTab = coffees[index];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Text(
                                coffees[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: (activeTab == coffees[index])
                                        ? Colors.brown
                                        : Colors.grey[700],
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              (activeTab == coffees[index])
                                  ? FadeInUp(
                                    duration: Duration(milliseconds: 500),
                                    child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.brown),
                                      ),
                                  )
                                  : SizedBox(
                                      height: 0,
                                    )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5, child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/detail');
                            },
                            child: conffeeItem("assets/images/1.png"))),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 5, child: conffeeItem("assets/images/2.png")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Special For You",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: [
                    newsList("assets/images/1.png"),
                    newsList("assets/images/2.png"),

                  ],
                )
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey[600],
          items: const [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    FluentIcons.home_32_filled,
                  ),
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(FluentIcons.shopping_bag_24_filled),
                ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(FluentIcons.heart_32_filled),
                ),
                label: "Wishlist"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(FluentIcons.more_circle_32_filled),
                ),
                label: "More"),
          ],
        ),
      ),
    );
  }
}
