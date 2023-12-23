import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_14/example_paralax.dart';

const Color lightColor = Color(0xffF9F7F7);
const Color darkColor = Color(0xff222831);
const Color grey = Color(0xff393E46);
const Color blue = Color(0xff00ADB5);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  ///adding animation****************************************************************************
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 2), value: 0.1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInSine);
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: lightColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: lightColor,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _sliverAppbar(),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return const ExampleParallax();
            }))
          ],
        ),
      ),
    );
  }

  Widget _sliverAppbar() {
    return SliverAppBar(
      pinned: true,
      floating: true,
      snap: true,
      elevation: 0,
      backgroundColor: lightColor,
      title: const Text(
        'Dribble',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 10),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black54,
                  )),
              const SizedBox(width: 20),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.dribbble.com/users/18187882/avatars/normal/data?1700219259'),
              ),
            ],
          ),
        ),
      ],
      expandedHeight: 320,
      flexibleSpace: _flexibleSpace(context),
    );
  }

  Widget _flexibleSpace(context) {
    return FlexibleSpaceBar(
      background: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              _imageSerch(),
              Positioned(
                left: 40,
                right: 40,
                bottom: -24,
                child: TextField(
                  style: const TextStyle(
                      color: darkColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                  decoration: InputDecoration(
                    hintText: "Search..",
                    hintStyle: const TextStyle(color: Colors.black26),
                    label: const Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black54,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_followingButton(), _filtersButton()],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(height: 3, color: Colors.black12),
          const Divider(height: 3, color: Colors.black12),
        ],
      ),
    );
  }

  Widget _imageSerch() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        const SizedBox(
          height: 150,
          width: double.maxFinite,
          child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://cdn.dribbble.com/userupload/12085738/file/original-402fc99a5c4571eeea88b69500d7f2c4.jpg?crop=0x156-2000x1656&resize=400x300&vertical=center')),
        ),
        FadeTransition(
          opacity: _animation,
          child: const Text(
            'Hi! Mahdi Haddadi',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ],
    );
  }

  Widget _filtersButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.list,
            color: Colors.black54,
          ),
          Text(
            'Filters',
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _followingButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade300)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Following',
            style: TextStyle(color: Colors.black),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}
