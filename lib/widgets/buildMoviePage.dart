import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:filmy/widgets/ShareTo.dart';

class buildMoviePage extends StatelessWidget {
  const buildMoviePage({
    super.key,
    required this.imageUrl,
    required this.movieName,
    required this.year,
    required this.Category,
    required this.duration,
    required this.rating,
    required this.storyTell,
  });

  final String imageUrl;
  final String movieName;
  final String year;
  final String Category;
  final String duration;
  final String rating;
  final String storyTell;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Spacer(),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Image.network(
          imageUrl,
          width: double.infinity,
          height: 380,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 385, 20, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                movieName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "$year | $Category | $duration",
                style: const TextStyle(
                    color: Color.fromARGB(104, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 260,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          elevation: 0,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Share(
                                        title: "Instagram",
                                        imageUrl: "images/instagram.png",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Share(
                                        title: "Facebook",
                                        imageUrl: "images/facebook.png",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Share(
                                        title: "Whatss app",
                                        imageUrl:
                                            "images/410201-PD391H-802-removebg-preview.png",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 3),
                                      child: Share(
                                        title: "Copy Link",
                                        imageUrl: "images/link.png",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(Icons.close),
                                        ),
                                      ),
                                    ),
                                  ]),
                            );
                          });
                    },
                    child: const Icon(
                      Icons.share,
                      color: Color.fromARGB(104, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                storyTell,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 148, 4, 4),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "Watch Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _snakbar(context, message: "Added To Favorite");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "Add To Favourites",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _snakbar(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        width: 360,
        content: Text(message),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }
}
