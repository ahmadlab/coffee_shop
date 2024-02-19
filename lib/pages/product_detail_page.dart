import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String selectedSize = "";
  Widget boxSize(String size) {
    return Expanded(
      flex: 5,
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedSize = size;
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 15, 26, 35),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color:(selectedSize== size)? Colors.brown:Color.fromARGB(255, 15, 26, 35))),
          child: Center(
              child: Text(
            size,
            style: TextStyle(
                color:(selectedSize == size)?Colors.brown: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(0),
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/2.png"),
                          fit: BoxFit.cover)),
                  child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    reverse: true,
                    children: [
                      Container(
                              //padding: const EdgeInsets.all(20),
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(30)),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(30)),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10,
                                    sigmaY: 10
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Expanded(
                                          flex: 7,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Cappucino",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "With Oat Milk",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    FluentIcons.star_32_filled,
                                                    color: Colors.brown,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "4.5",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "(1,890)",
                                                    style: TextStyle(color: Colors.grey),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.all(5),
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius.circular(10)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/bean.png",
                                                          width: 30,
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Coffee",
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 10),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.all(5),
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius.circular(10)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/milk.png",
                                                          width: 30,
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Milk",
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 10),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(10)),
                                                child: const Text(
                                                  "Medium Roasted",
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                                
                            
                              
                            
                            /*  */
                          
                      
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "A Cappucino is a coffee-based drink made primarily from espresso and milk",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 17),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Size",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    boxSize("S"),
                    boxSize("M"),
                    boxSize("L"),

                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          FluentIcons.chevron_left_32_regular,
                          color: Colors.grey,
                          size: 30,
                        )),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        FluentIcons.heart_32_filled,
                        color: Colors.grey,
                        size: 30,
                      ))
                ],
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 110,
        color: Colors.black,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Price", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$', style: TextStyle(color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Text("4.20", style: TextStyle(fontSize: 20, color:Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Buy Now", style: TextStyle(color: Colors.grey[100],fontSize: 20,fontWeight: FontWeight.bold))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
