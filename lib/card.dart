// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_14/main.dart';
import 'package:flutter_application_14/paralax.dart';

@immutable
class UiCard extends StatelessWidget {
  String? imageUrl;
  String? logoUrl;
  String? producer;
  bool? teamWork;
  int? like;
  int? visit;

  UiCard({
    super.key,
    required this.imageUrl,
    required this.logoUrl,
    required this.producer,
    required this.teamWork,
    required this.like,
    required this.visit,
  });
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: [
          _image(context),
          ListTile(
            trailing: const Icon(
              Icons.favorite,
              size: 17,
              color: Colors.black38,
            ),
            title: Text(
              producer!,
              style: const TextStyle(
                fontSize: 13,
                color: darkColor,
              ),
            ),
            leading: CircleAvatar(
                radius: 13, backgroundImage: NetworkImage(logoUrl!)),
          )
        ],
      ),
    );
  }

  Widget _image(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            _buildParallaxBackground(context),
            _buildGradient(),
            // _buildTitleAndSubtitle(),
          ],
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.network(
          imageUrl!,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            producer!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            teamWork.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
