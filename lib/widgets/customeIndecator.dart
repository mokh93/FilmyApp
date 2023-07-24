import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeIndecartor extends StatelessWidget {
  const CustomeIndecartor({
    super.key,
    this.endmargin = 0,
    required this.isSelected,
  });
  final double endmargin;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(end: endmargin),
              height: 5,
              width: isSelected ? 32 : 16,
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : const Color(0xff6f7583),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
