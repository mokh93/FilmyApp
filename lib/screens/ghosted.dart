import 'package:flutter/material.dart';

import 'package:filmy/widgets/buildMoviePage.dart';

class Ghosted extends StatefulWidget {
  const Ghosted({super.key});

  @override
  State<Ghosted> createState() => _FastXState();
}

class _FastXState extends State<Ghosted> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/7e/f1/a1/7ef1a185ed37b8fc90e970cd512b80fb.jpg",
          movieName: "Ghosted",
          year: "2023",
          Category: "Action",
          duration: "1h 56m",
          rating: "5.8",
          storyTell:
              "Salt-of-the-earth Cole falls head over heels for enigmatic Sadie -- but then makes the shocking discovery that she's a secret agent. Before they can decide on a second date, Cole and Sadie are swept away on an international adventure to save the world."),
    );
  }
}
