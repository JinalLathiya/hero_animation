import 'package:hero_ani/model/location.dart';
import 'package:hero_ani/model/review.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;

  static String addressLine1(Location location) =>
      location.pName + location.add;

  static String stars(Location location) =>
      location.pName + location.rate.toString();

  static String avatar(Review review, int position) =>
      review.url + position.toString();
}
