import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({
    super.key,
    required this.name,
    required this.imageheight,
    required this.imageWidth,
    required this.fontSize,
  });
  final double imageheight;
  final double imageWidth;
  final double fontSize;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: imageheight,
          width: imageWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              const Image(image: AssetImage('images/noun-movies-4970853.png')),
        ),
        const SizedBox(width: 12),
        Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
