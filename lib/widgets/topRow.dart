import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: const Text(
              "see all",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ))
      ],
    );
  }
}
