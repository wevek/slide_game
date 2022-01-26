import 'package:flutter/material.dart';

import 'gridbutton.dart';

// ignore: must_be_immutable
class Grid extends StatelessWidget {
  var numbers = [];
  var size;

  Function clickGrid;

  Grid(this.numbers, this.size, this.clickGrid);

  @override
  Widget build(BuildContext context) {
    var height = size.height;
    return Container(
      height: height * 0.60,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return GridButton("${numbers[index]}", () {
              clickGrid(index);
            });
          },
        ),
      ),
    );
  }
}
