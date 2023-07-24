import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class Joker extends StatefulWidget {
  const Joker({super.key});

  @override
  State<Joker> createState() => _FastXState();
}

class _FastXState extends State<Joker> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/99/f8/70/99f8702093bd74454c4636a33f558c4a.jpg",
          movieName: "Joker",
          year: "2019",
          Category: "Crime",
          duration: "2h 2m",
          rating: "8.4",
          storyTell:
              "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother- Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society he heads downwards."),
    );
  }
}
