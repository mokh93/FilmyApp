import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class JohnWick extends StatefulWidget {
  const JohnWick({super.key});

  @override
  State<JohnWick> createState() => _FastXState();
}

class _FastXState extends State<JohnWick> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/25/82/b4/2582b4a9b2174193380ad366886ee5a3.jpg",
          movieName: "John Wick 1",
          year: "2014",
          Category: "Action",
          duration: "1h 41m",
          rating: "7.4",
          storyTell:
              "With the untimely death of his beloved wife still bitter in his mouth, John Wick, the expert former assassin, receives one final gift from her--a precious keepsake to help John find a new meaning in life now that she is gone. But when the arrogant Russian mob prince, Iosef Tarasov, and his men pay Wick a rather unwelcome visit to rob him of his prized 1969 Mustang and his."),
    );
  }
}
