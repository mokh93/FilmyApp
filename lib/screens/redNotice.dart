import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class RedNotice extends StatefulWidget {
  const RedNotice({super.key});

  @override
  State<RedNotice> createState() => _FastXState();
}

class _FastXState extends State<RedNotice> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/d1/41/0d/d1410dd81026277b24f0296dfa08e716.jpg",
          movieName: "Red Notice",
          year: "2021",
          Category: "Comedy",
          duration: "1h 58m",
          rating: "6.3",
          storyTell:
              "When an Interpol-issued Red Notice--the highest-level warrant to hunt and capture the world's most wanted--goes out, the FBI's top profiler, John Hartley (Dwayne Johnson), is on the case. His global pursuit lands him smack-dab in the middle of a daring heist where he's forced to partner with the world's greatest art thief, Nolan Booth (Ryan Reynolds)."),
    );
  }
}
