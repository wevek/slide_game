import 'package:flutter/material.dart';
import 'package:slide_game/widgets/mytitle.dart';

import 'widgets/grid.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
            height: size.height,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                MyTitle(size),
                Grid(numbers, size, clickGrid),
              ],
            )));
  }

  void clickGrid() {}
}
