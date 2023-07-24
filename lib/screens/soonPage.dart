import 'package:flutter/material.dart';

class SoonPage extends StatelessWidget {
  const SoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(image: AssetImage('images/wait.png'), height: 220, width: 220),
          SizedBox(
            height: 20,
          ),
          Text(
            "Coming Soon",
            style: TextStyle(
                color: Colors.grey, fontSize: 35, fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
