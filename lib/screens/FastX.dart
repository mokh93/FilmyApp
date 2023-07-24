import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class FastX extends StatefulWidget {
  const FastX({super.key});

  @override
  State<FastX> createState() => _FastXState();
}

class _FastXState extends State<FastX> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/9c/59/20/9c5920d5720d7ba34ebf02096d6cc94e.jpg",
          movieName: "Fast X",
          year: "2023",
          Category: "PG-13",
          duration: "2h 21m",
          rating: "5.9",
          storyTell:
              "The end of the road begins. Fast X, the tenth film in the Fast and Furious Saga, launches the final chapters of one of cinema's most storied and popular global franchises, now in its third decade and still going strong with the same core cast and characters as when it began. Over many missions and against impossible odds, Dom Toretto (Vin Diesel) and his family have."),
    );
  }
}
