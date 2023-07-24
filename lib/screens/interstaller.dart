import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class Interstellar extends StatefulWidget {
  const Interstellar({super.key});

  @override
  State<Interstellar> createState() => _FastXState();
}

class _FastXState extends State<Interstellar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/75/a3/1d/75a31d2c3e8312fb3e173340b575e3a1.jpg",
          movieName: "Interstellar",
          year: "2014",
          Category: "Adventure",
          duration: "2h 49m",
          rating: "8.7",
          storyTell:
              "Earth's future has been riddled by disasters, famines, and droughts. There is only one way to ensure mankind's survival: Interstellar travel. A newly discovered wormhole in the far reaches of our solar system allows a team of astronauts to go where no man has gone before, a planet that may have the right environment to sustain human life."),
    );
  }
}
