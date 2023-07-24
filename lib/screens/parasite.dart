import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class Parasite extends StatefulWidget {
  const Parasite({super.key});

  @override
  State<Parasite> createState() => _FastXState();
}

class _FastXState extends State<Parasite> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/9e/c4/b3/9ec4b31f77c92a9561b41de87095d16d.jpg",
          movieName: "Parasite",
          year: "2019",
          Category: "Thriller",
          duration: "2h 12m",
          rating: "8.5",
          storyTell:
              "The Kims - mother and father Chung-sook and Ki-taek, and their young adult offspring, son Ki-woo and daughter Ki-jung - are a poor family living in a shabby and cramped half basement apartment in a busy lower working class commercial district of Seoul. Ki-woo is the one who has dreams of getting out of poverty by one day going to university. Despite not."),
    );
  }
}
