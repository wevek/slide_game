import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  var size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      padding: const EdgeInsets.all(5.0),
      child: Text("Sliding Game",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.height * 0.05,
              color: Colors.white,
              decoration: TextDecoration.none)),
    );
  }
}
