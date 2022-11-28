import 'package:flutter/material.dart';
import 'package:hero_ani/data/hero_tag.dart';
import 'package:hero_ani/data/locations.dart';
import 'package:hero_ani/model/location.dart';
import 'package:hero_ani/widget/hero_widget.dart';
import 'package:hero_ani/widget/stars_widget.dart';

class ExpandedContentWidget extends StatelessWidget {
  final Location location;

  const ExpandedContentWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HeroWidget(
              tag: HeroTag.addressLine1(location),
              child: Text(location.add),
            ),
            const SizedBox(height: 8),
            buildAddressRating(location: location),
            const SizedBox(height: 12),
            buildReview(location: location)
          ],
        ),
      );

  Widget buildAddressRating({
    required Location location,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeroWidget(
            tag: HeroTag.stars(location),
            child: StarsWidget(stars: location.rate),
          ),
        ],
      );

  Widget buildReview({
    required Location location,
  }) =>
      Row(
        children: location.reviews.map((review) {
          final pageIndex = locations.indexOf(location);

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: HeroWidget(
                tag: HeroTag.avatar(review, pageIndex),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage(review.url),
                ),
              ),
            ),
          );
        }).toList(),
      );
}
