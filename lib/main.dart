import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'board.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const SlidingGame());
}

class SlidingGame extends StatelessWidget {
  const SlidingGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sliding Puzzle",
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}
