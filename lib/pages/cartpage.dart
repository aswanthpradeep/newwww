import 'package:ecommerce_demo/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});









  @override
  Widget build(BuildContext context) {
  return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('You have nothing in Cart',style: TextStyle(color: Colors.grey),),Icon(Icons.shopping_cart_checkout_rounded)
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}