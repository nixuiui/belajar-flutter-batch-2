import 'package:belajar_flutter_batch_2/cupertino_home_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        brightness: Brightness.dark
      ),
      home: CupertinoHomePage(),
    );
  }
}
