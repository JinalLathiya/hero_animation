import 'package:flutter/material.dart';
import 'package:hero_ani/data/hero_tag.dart';
import 'package:hero_ani/model/location.dart';
import 'package:hero_ani/widget/hero_widget.dart';
import 'package:hero_ani/widget/stars_widget.dart';

class DetailedInfoWidget extends StatelessWidget {
  final Location location;

  const DetailedInfoWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(
              tag: HeroTag.addressLine1(location),
              child: Text(location.add),
            ),
            const SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.stars(location),
              child: StarsWidget(stars: location.rate),
            ),
          ],
        ),
      );
}
