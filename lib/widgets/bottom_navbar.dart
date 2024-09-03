import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_demo/pages/cartpage.dart';
import 'package:ecommerce_demo/pages/favourite.dart';
import 'package:ecommerce_demo/pages/home_page.dart';
import 'package:ecommerce_demo/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
   void bottomNavigationBar(int index){
    setState(() {
      
     
       
        
    switch(index){
      case 0 : Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
               break;
      case 1 : Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavouritePage(),));
               break;
      case 3 : Navigator.push(context, MaterialPageRoute(builder: (context) => MyCartPage(),));
               break;
      case 4 : Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile(),));
               break;
             
    } 
  

    });
  }

  @override
  Widget build(BuildContext context) {
       return CurvedNavigationBar(
         backgroundColor: Colors.white,
        color: Color.fromARGB(255, 236, 233, 240),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
        setState(() {
          bottomNavigationBar(index);  
        });
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
        ],);
  }
}
  
