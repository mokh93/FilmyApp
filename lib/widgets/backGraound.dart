import 'package:flutter/cupertino.dart';

class BackGraound extends StatelessWidget {
  const BackGraound({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xff08060d),
            Color(0xff141621),
            Color(0xff282f3f),
            Color(0xff6f7583),
          ])),
      child: child,
    );
  }
}
