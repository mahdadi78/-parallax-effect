import 'package:flutter/material.dart';
import 'package:flutter_application_14/example_paralax.dart';

const Color lightColor = Color(0xffF9F7F7);
const Color darkColor = Color(0xff222831);
const Color grey = Color(0xff393E46);
const Color blue = Color(0xff00ADB5);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: lightColor),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: ExampleParallax(),
        ),
      ),
    );
  }
}
