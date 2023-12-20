import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_14/example_paralax.dart';
import 'package:flutter_application_14/paralax.dart';

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

  SliverAppBar _sliverAppbar() {
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
      expandedHeight: 300,
      flexibleSpace: _flexibleSpace(context),
    );
  }

  Widget _flexibleSpace(context) {
    return FlexibleSpaceBar(
      background: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 100,
            width: double.maxFinite,
            child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://cdn.dribbble.com/users/3894194/screenshots/9713604/media/b36ab7fcd6a2b4bb76aefe54f71cea73.jpg?resize=400x300&vertical=center')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
