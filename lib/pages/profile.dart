import 'package:ecommerce_demo/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('You Have No profile',style: TextStyle(color: Colors.grey),),Icon(Icons.person_2_outlined,)
            ],
          )
        ],

      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}