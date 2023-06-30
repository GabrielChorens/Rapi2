import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LocationPointerIcon extends StatelessWidget {
  const LocationPointerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
            Iconsax.location,
            size: 40,
          );
  }
}