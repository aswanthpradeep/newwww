import 'package:ecommerce_demo/widgets/bottom_navbar.dart';
import 'package:ecommerce_demo/widgets/counting_button.dart';
import 'package:ecommerce_demo/widgets/favourite_button.dart';
import 'package:flutter/material.dart';

class MyProductPage extends StatefulWidget {
  const MyProductPage({
    super.key,
    required this.img,
    required this.productName,
    required this.productPrice,
    required this.circleColor1,
    required this.circleColor2,
    required this.circleColor3,
    required this.description
  });
  final String img;
  final String productName;
  final int productPrice;
  final Color circleColor1;
  final Color circleColor2;
  final Color circleColor3;
  final String  description;

  @override
  State<MyProductPage> createState() => _MyProductPageState();
}

class _MyProductPageState extends State<MyProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FavouriteButton(),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 303,
            width: 287,
            child: Image.asset(
              "${widget.img}",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${widget.productName}",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              CountingButton()
            ],
          ),SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 40,),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  backgroundColor: widget.circleColor1,
                  radius: 7,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  backgroundColor: widget.circleColor2,
                  radius: 7,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 7,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 38,right: 10),
          child: Text("${widget.description}",style: TextStyle(fontSize: 14,),),
        ),SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("\$${widget.productPrice}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            ),
            TextButton(onPressed: (){}, child: Container(
              width: 160,height: 55,
              decoration: BoxDecoration( color: const Color.fromARGB(255,121, 147, 174),borderRadius: BorderRadius.circular(5)),
              child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 16),))))
          ],
        )
        ],
      ),
      bottomNavigationBar:  BottomNavbar(),
    );
  }
}
