import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {

  final String svgIconPath;

    const CustomSuffixIcon({super.key, required this.svgIconPath});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        10,
        12,
        10,
      ),
      child: SvgPicture.asset(
        svgIconPath,
        height: 14,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
    );
  }
}