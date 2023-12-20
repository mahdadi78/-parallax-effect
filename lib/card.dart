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
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: Column(
        children: [_image(context), width < 300 ? Container() : underImage()],
      ),
    );
  }

  Widget underImage() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //avatar and name
          _avatarAndName(),
          //favorit Icon
          Row(
            children: [
              _favorit(),
              const SizedBox(width: 10),
              //view
              _view(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _view() {
    return Row(
      children: [
        const Icon(
          Icons.visibility,
          color: Colors.black26,
          size: 17,
        ),
        Text(
          visit.toString(),
          style: TextStyle(fontSize: 13, color: darkColor.withOpacity(.7)),
        ),
      ],
    );
  }

  Widget _favorit() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          color: Colors.black26,
          size: 17,
        ),
        Text(
          like.toString(),
          style: TextStyle(fontSize: 13, color: darkColor.withOpacity(.7)),
        ),
      ],
    );
  }

  Widget _avatarAndName() {
    return Row(
      children: [
        CircleAvatar(
          radius: 13,
          backgroundColor: Colors.black12,
          backgroundImage: NetworkImage(logoUrl!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            producer!,
            style: const TextStyle(
                color: darkColor, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        teamWork!
            ? Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26),
                child: const Text(
                  'Team',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ))
            : Container(),
      ],
    );
  }

  Widget _image(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 12,
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
}
