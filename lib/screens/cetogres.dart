import 'package:flutter/material.dart';
import 'package:filmy/widgets/backGraound.dart';

import '../widgets/topRow.dart';

class Cetogres extends StatefulWidget {
  const Cetogres({super.key});

  @override
  State<Cetogres> createState() => _CetogresState();
}

class _CetogresState extends State<Cetogres> {
  List item = [
    {
      "image": "images/Extraction (2020) Movie Review.png",
      "Text": "Action",
      "routeName": "/actionmovies",
    },
    {
      "image":
          "images/Afternoon Drive_ Off-Road Adventures (26 Photos) - Suburban Men.png",
      "Text": "Adventures",
      "routeName": "/soonPage",
    },
    {
      "image": "images/تنزيل.png",
      "Text": "Horror",
      "routeName": "/soonPage",
    },
    {
      "image": "images/Platoon.png",
      "Text": "War",
      "routeName": "/soonPage",
    },
    {
      "image": "images/Thomas FX products used in Interstellar.png",
      "Text": "Fiction",
      "routeName": "/soonPage",
    },
    {
      "image": "images/Moneyball (2011).png",
      "Text": "Sport",
      "routeName": "/soonPage",
    },
    {
      "image": "images/Vacation (2015) _ FlickDirect Movie Database.png",
      "Text": "Comedy",
      "routeName": "/soonPage",
    },
    {
      "image": "images/2016 Best Picture Nominee__La La Land_.png",
      "Text": "Music",
      "routeName": "/soonPage",
    },
    {
      "image":
          "images/These Are the 25 Best Kids' Movies on Netflix Right Now.png",
      "Text": "Anime",
      "routeName": "/actionmovies",
    },
    {
      "image":
          "images/18 Kids Movies From The '90s You’ve Probably Forgotten About.png",
      "Text": "Family",
      "routeName": "/actionmovies",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return BackGraound(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const TopRow(
              title: "Categories",
            ),
            const SizedBox(
              height: 10,
            ),
            SafeArea(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '${item[index]["routeName"]}');
                    },
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("${item[index]["image"]}"),
                            fit: BoxFit.cover,
                          )),
                      child: Stack(
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(123, 0, 0, 0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Center(
                            child: Text(
                              "${item[index]["Text"]}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
