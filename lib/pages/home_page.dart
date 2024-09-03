import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_demo/widgets/product_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class Product{
  String items ; 
  Color itemColor;
  Color bgColor;

  Product(this.items ,this.itemColor , this.bgColor);
}

class _HomePageState extends State<HomePage> {
  int iconControlller = 0;

  List<Product> _products = [
    Product(
       "assets/all (1).png",
        const Color.fromARGB(255, 121, 147, 174), Color.fromARGB(255, 207, 207, 207)),
        Product("assets/sofa-with-armrest-svgrepo-com 1.png", const Color.fromARGB(255, 121, 147, 174), Color.fromARGB(255, 207, 207, 207)),
        Product("assets/tv-solid-svgrepo-com 1.png", const Color.fromARGB(255, 121, 147, 174),  Color.fromARGB(255, 207, 207, 207)),
        Product("assets/table-lights-svgrepo-com 1.png", const Color.fromARGB(255, 121, 147, 174),  Color.fromARGB(255, 207, 207, 207)),
         Product("assets/sofa-with-armrest-svgrepo-com 1.png", const Color.fromARGB(255, 121, 147, 174),  Color.fromARGB(255, 207, 207, 207)),
        Product("assets/tv-solid-svgrepo-com 1.png", const Color.fromARGB(255, 121, 147, 174),  Color.fromARGB(255, 207, 207, 207)),
  ];
         
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Row(
                children: [
                  Text(
                    "Find the home \nfurniture",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.menu)
                ],
              ),
              Stack(children: [
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    
                    scrollDirection: Axis.horizontal,
                    itemCount: _products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                         
                              iconControlller = index;
                              print(iconControlller);
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 81,
                            
                            child: Image.asset(_products[index].items,color: index == iconControlller? _products[index].bgColor : _products[index].itemColor,) ,
                            // child: Image(
                            //   iconImage[index].item,
                            // ),
                            decoration: BoxDecoration(
                              //  color: Color.fromARGB(255, 207, 207, 207),
                                color:index == iconControlller? _products[index].itemColor : _products[index].bgColor,
                                borderRadius: BorderRadius.circular(10)),
                                
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                    right: -18,
                    top: 30,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
              ]),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductContainer(
                      image: "assets/sofa.png",
                      productName: "Room Sofa",
                      productPrice: 2500,
                      circleColor1: Colors.black,
                      circleColor2: Colors.brown,
                      circleColor3: Colors.amber,
                      description:
                          "Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time. "),
                  ProductContainer(
                      image: "assets/Tv-img.png",
                      productName: "Thoshiba Tv",
                      productPrice: 2500,
                      circleColor1: Colors.black,
                      circleColor2: Colors.brown,
                      circleColor3: Colors.amber,
                      description: "Tv description"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductContainer(
                      image: "assets/lamp-img.png",
                      productName: "Table Lamb",
                      productPrice: 2500,
                      circleColor1: Colors.black,
                      circleColor2: Colors.brown,
                      circleColor3: Colors.amber,
                      description: "Lamp description"),
                  ProductContainer(
                      image: "assets/lamp-img.png",
                      productName: " Wooden Table ",
                      productPrice: 2500,
                      circleColor1: Colors.black,
                      circleColor2: Colors.brown,
                      circleColor3: Colors.amber,
                      description: "Table description"),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color.fromARGB(255, 236, 233, 240),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: [
          Icon(
            Icons.home,
            color: const Color.fromARGB(255, 121, 147, 174),
            size: 40,
          ),
          Icon(
            Icons.favorite_outline,
            color: const Color.fromARGB(255, 121, 147, 174),
            size: 40,
          ),
          Icon(
            Icons.qr_code_scanner_outlined,
            color: const Color.fromARGB(255, 121, 147, 174),
            size: 40,
          ),
          Icon(
            Icons.shopping_cart,
            color: const Color.fromARGB(255, 121, 147, 174),
            size: 40,
          ),
          Icon(
            Icons.person,
            color: const Color.fromARGB(255, 121, 147, 174),
            size: 40,
          ),
        ],
      ),
    );
  }
}
//<a href="https://www.flaticon.com/free-icons/hotspot" title="Hotspot icons">Hotspot icons created by mattbadal - Flaticon</a>