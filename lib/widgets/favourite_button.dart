import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  State<FavouriteButton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavouriteButton> {
  bool like = true;
  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: (){ 
      setState(() {
        like = !like;
      });
    }, icon: like?Icon(Icons.favorite_outline,size: 30,):Icon(Icons.favorite,color: const Color.fromARGB(255, 121, 147, 174),size: 30,)) ;
  }
}