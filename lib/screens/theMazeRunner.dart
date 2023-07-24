import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class TheMaze extends StatefulWidget {
  const TheMaze({super.key});

  @override
  State<TheMaze> createState() => _FastXState();
}

class _FastXState extends State<TheMaze> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/b8/fa/74/b8fa7480b62ed4af7af6a6023787f751.jpg",
          movieName: "The Maze Runner",
          year: "2014",
          Category: "Action",
          duration: "1h 53m",
          rating: "6.8",
          storyTell:
              "Awakening in an elevator, remembering nothing of his past, Thomas emerges into a world of about thirty teenage boys, all without past memories, who have learned to survive under their own set of rules in a completely enclosed environment, subsisting on their own agriculture and supplies. With a new boy arriving every thirty days, the group has been in \"The Glade\"."),
    );
  }
}
