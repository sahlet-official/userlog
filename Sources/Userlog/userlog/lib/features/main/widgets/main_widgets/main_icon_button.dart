import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainIconButton extends StatelessWidget {
  final String imagePath;
  final double iconSize;
  final Function onPressed;

  const MainIconButton({
    Key? key,
    required this.imagePath,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
      onPressed: () {
        onPressed();
      },
    );
  }
}
