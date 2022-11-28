import 'package:hero_ani/model/review.dart';

class Location {
  final String pName;
  final String img;
  final String lat;
  final String lon;
  final String add;
  final int rate;
  final List<Review> reviews;

  Location({
    required this.reviews,
    required this.pName,
    required this.img,
    required this.lat,
    required this.lon,
    required this.add,
    required this.rate,
  });
}
