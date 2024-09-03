import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final child;
  final bool shape ;
  const MyContainer({super.key,     
    required this.child ,
    required this.shape 
  });
  @override
  State<MyContainer> createState() => _MyContainerState();
}
class _MyContainerState extends State<MyContainer> {
  bool shape =true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            shape =!shape;
          });
        },
        child: Container(
            width: shape?72:70,
            height: shape?103:81,
            child: widget.child,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 207, 207, 207),
              borderRadius: BorderRadius.circular(10)
            ),
            
        ),
      ),
    );
  }
}