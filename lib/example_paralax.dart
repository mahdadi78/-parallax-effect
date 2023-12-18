import 'package:flutter/material.dart';
import 'package:flutter_application_14/card.dart';
import 'package:flutter_application_14/fake_api.dart';

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          //پیمایش در لیست**************************************************************
          for (final desian in uiProductList)
            UiCard(
              imageUrl: desian.imageUrl,
              like: desian.like,
              logoUrl: desian.logoUrl,
              producer: desian.producer,
              teamWork: desian.teamWork,
              visit: desian.visit,
            ),
          for (final desian in uiProductList)
            UiCard(
              imageUrl: desian.imageUrl,
              like: desian.like,
              logoUrl: desian.logoUrl,
              producer: desian.producer,
              teamWork: desian.teamWork,
              visit: desian.visit,
            ),
        ],
      ),
    );
  }
}
