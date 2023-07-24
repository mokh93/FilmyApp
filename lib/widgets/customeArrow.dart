import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeArrow extends StatelessWidget {
  const CustomeArrow({
    super.key,
    required this.iconData,
    required this.routeName,
  });

  final String routeName;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Center(
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, routeName);
              },
              child: Icon(iconData)),
        ),
      ],
    );
  }
}
