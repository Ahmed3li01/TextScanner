import 'package:flutter/material.dart';

class customtextSplash extends StatelessWidget {
  const customtextSplash({super.key, this.txt});
  final txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        txt,
        style: const TextStyle(
            fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
