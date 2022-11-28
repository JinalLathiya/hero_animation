import 'package:flutter/material.dart';
import 'package:hero_ani/model/location.dart';

class LatLongWidget extends StatelessWidget {
  final Location location;

  const LatLongWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            location.lat,
            style: const TextStyle(color: Colors.white70),
          ),
          const Icon(Icons.location_on, color: Colors.white70),
          Text(
            location.lon,
            style: const TextStyle(color: Colors.white70),
          )
        ],
      );
}
