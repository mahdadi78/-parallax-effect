import 'dart:html';

import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with TickerProviderStateMixin {
  //creat animation**************************************************
  late AnimationController _controller;
  late AnimationController _controllerText;

  late Animation<double> _animation;
  late Animation<double> _animationText;

  @override
  void initState() {
    super.initState();
    //make _controller
    _controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 1), value: 0.01);
    _controllerText = AnimationController(
        vsync: this, duration: const Duration(seconds: 1), value: 0.01);

    //make _animation
    _animation = CurvedAnimation(curve: Curves.linear, parent: _controller);
    _animationText =
        CurvedAnimation(curve: Curves.linear, parent: _controllerText);
    _controller.forward();
    _controllerText.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controllerText.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animationText,
              child: Text(
                'Flutter logo',
                style: TextStyle(fontSize: 50, color: Colors.blue),
              ),
            ),
            FadeTransition(
                opacity: _animation, child: const FlutterLogo(size: 250)),
          ],
        ),
      ),
    );
  }
}
