import 'package:flutter/material.dart';

class CountingButton extends StatefulWidget {
  const CountingButton({super.key});

  @override
  State<CountingButton> createState() => _CountingButtonState();
}

class _CountingButtonState extends State<CountingButton> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      height: 30,
      color: const Color.fromARGB(255, 231, 231, 231),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  number--;
                  if (number < 0) {
                    number = 0;
                  }
                });
              },
              child: Icon(Icons.horizontal_rule)),
          Text(
            "$number",
            style: TextStyle(fontSize: 20),
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: Icon(Icons.add))
        ],
      ),
    );
  }
}
