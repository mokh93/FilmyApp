import 'package:flutter/material.dart';
import 'package:filmy/widgets/buildMoviePage.dart';

class LaLa extends StatefulWidget {
  const LaLa({super.key});

  @override
  State<LaLa> createState() => _FastXState();
}

class _FastXState extends State<LaLa> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff282f3f),
      body: buildMoviePage(
          imageUrl:
              "https://i.pinimg.com/564x/df/21/fb/df21fb21e8e249212fdc406a469ea533.jpg",
          movieName: "LA LA LAND",
          year: "2016",
          Category: "Music",
          duration: "2h 8m",
          rating: "8.0",
          storyTell:
              "Aspiring actress serves lattes to movie stars in between auditions and jazz musician Sebastian scrapes by playing cocktail-party gigs in dingy bars. But as success mounts, they are faced with decisions that fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart."),
    );
  }
}
