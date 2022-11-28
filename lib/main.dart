import 'package:flutter/material.dart';
import 'package:hero_ani/page/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Interests';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: const HomePage(),
      );
}
