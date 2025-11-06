import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum FlagShape { square, rounded, circle }

class CountryFlag extends StatelessWidget {
  final String countryCode;
  final double size;
  final FlagShape shape;

  const CountryFlag({
    super.key,
    required this.countryCode,
    this.size = 48,
    this.shape = FlagShape.square,
  });

  @override
  Widget build(BuildContext context) {
    final assetPath = 'assets/flags/${countryCode.toLowerCase()}.svg';
    const fallbackAsset = 'assets/flags/untitled.svg';
    Widget flag = SvgPicture.asset(
      assetPath,
      width: size,
      height: size,
      fit: BoxFit.cover,
      package: 'flutter_countryify',
      // 👇 Instantly fallback if asset not found
      errorBuilder: (context, error, stackTrace) => SvgPicture.asset(
        fallbackAsset,
        width: size,
        height: size,
        fit: BoxFit.cover,
        package: 'flutter_countryify',
      ),
    );

    switch (shape) {
      case FlagShape.circle:
        flag = ClipOval(child: flag);
        break;
      case FlagShape.rounded:
        flag = ClipRRect(
          borderRadius: BorderRadius.circular(size * 0.21),
          child: flag,
        );
        break;
      case FlagShape.square:
        break;
    }

    return flag;
  }
}
