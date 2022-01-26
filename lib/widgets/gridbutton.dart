import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  void Function() click;
  String text;
  GridButton(this.text, this.click);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text, style: const TextStyle(color: Colors.black)),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
      ),
      onPressed: click,
    );
  }
}
