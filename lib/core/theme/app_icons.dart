import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = '${pathIcons}arrow_down.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;

  const AppIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}
