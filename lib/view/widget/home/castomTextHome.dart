import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  const customtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        textAlign: TextAlign.center,
        "import an image to  be                   converted",
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
