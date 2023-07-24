import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class TheBatman extends StatefulWidget {
  const TheBatman({super.key});

  @override
  State<TheBatman> createState() => _FastXState();
}

class _FastXState extends State<TheBatman> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              'https://i.pinimg.com/564x/b6/bd/b4/b6bdb4f8a420e991cfcecd5346bbe063.jpg',
          movieName: "The Batman",
          year: "2022",
          Category: "Action",
          duration: "2h 56m",
          rating: "7.8",
          storyTell:
              "Two years of nights have turned Bruce Wayne into a nocturnal animal. But as he continues to find his way as Gotham's dark knight Bruce is forced into a game of cat and mouse with his biggest threat so far, a manic killer known as \"The Riddler\" who is filled with rage and determined to expose the corrupt system whilst picking off all of Gotham's key political figures."),
    );
  }
}
