import 'package:flutter/material.dart';
import 'package:filmy/widgets/backGraound.dart';
import 'package:filmy/widgets/topRow.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    List Movies = [
      {
        "image":
            "https://i.pinimg.com/564x/b8/fa/74/b8fa7480b62ed4af7af6a6023787f751.jpg",
        "Text": "The Maze Runner",
        "year": "2014",
        "onTap": () {
          Navigator.pushNamed(context, '/theMaze');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/9c/59/20/9c5920d5720d7ba34ebf02096d6cc94e.jpg",
        "Text": "Fast X",
        "year": "2023",
        "onTap": () {
          Navigator.pushNamed(context, '/fastx');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/d1/41/0d/d1410dd81026277b24f0296dfa08e716.jpg",
        "Text": "Red Notice",
        "year": "2021",
        "onTap": () {
          Navigator.pushNamed(context, '/redNotice');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/7e/f1/a1/7ef1a185ed37b8fc90e970cd512b80fb.jpg",
        "Text": "Ghosted",
        "year": "2023",
        "onTap": () {
          Navigator.pushNamed(context, '/ghosted');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/b6/bd/b4/b6bdb4f8a420e991cfcecd5346bbe063.jpg",
        "Text": "The Batman",
        "year": "2022",
        "onTap": () {
          Navigator.pushNamed(context, '/thebatman');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/df/21/fb/df21fb21e8e249212fdc406a469ea533.jpg",
        "Text": "LA LA LAND",
        "year": "2016",
        "onTap": () {
          Navigator.pushNamed(context, '/lala');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/25/82/b4/2582b4a9b2174193380ad366886ee5a3.jpg",
        "Text": "John Wick 1",
        "year": "2014",
        "onTap": () {
          Navigator.pushNamed(context, '/john');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/75/a3/1d/75a31d2c3e8312fb3e173340b575e3a1.jpg",
        "Text": "Interstellar",
        "year": "2014",
        "onTap": () {
          Navigator.pushNamed(context, '/interstellar');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/99/f8/70/99f8702093bd74454c4636a33f558c4a.jpg",
        "Text": "Joker",
        "year": "2019",
        "onTap": () {
          Navigator.pushNamed(context, '/joker');
        }
      },
      {
        "image":
            "https://i.pinimg.com/564x/9e/c4/b3/9ec4b31f77c92a9561b41de87095d16d.jpg",
        "Text": "Parasite",
        "year": "2019",
        "onTap": () {
          Navigator.pushNamed(context, '/parasite');
        }
      },
    ];
    List imageUrl = [
      {
        "image":
            "https://i.pinimg.com/236x/ad/0f/43/ad0f432189b265e91f0550eedd9ba27b.jpg",
        "name": "Ana de Armas",
      },
      {
        "image":
            "https://i.pinimg.com/236x/a8/73/f3/a873f3f357e4fe348fb8100ce31d62be.jpg",
        "name": "Dwayne Johnson",
      },
      {
        "image":
            "https://i.pinimg.com/236x/3f/09/19/3f0919ef301180075fee5d65c8ea04dd.jpg",
        "name": "Ryan Reynolds",
      },
      {
        "image":
            "https://i.pinimg.com/236x/c5/85/c6/c585c6108c900eeca4e88d00a1dff6e8.jpg",
        "name": "Cillian Murphy",
      },
      {
        "image":
            "https://i.pinimg.com/236x/b1/84/9b/b1849b78abc5be386a7f7fdff0c108cb.jpg",
        "name": "Robert Pattinson",
      },
      {
        "image":
            "https://i.pinimg.com/236x/1b/c9/16/1bc9167ff9243dae812d4bc4aab7fb9c.jpg",
        "name": "Dylan O'Brien",
      },
      {
        "image":
            "https://i.pinimg.com/236x/c0/94/ec/c094ecda8030b2255ddd0932e6f5d042.jpg",
        "name": "Margot Robbie",
      },
      {
        "image":
            "https://i.pinimg.com/236x/b9/ad/a1/b9ada1071e72c4a3c5e5d2b998753070.jpg",
        "name": "Ryan gosling",
      },
    ];

    return BackGraound(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const TopRow(
              title: "Top Stars",
            ),
            const SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 100,
              ),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black,
                              backgroundImage:
                                  NetworkImage("${imageUrl[index]["image"]}"),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        Text(
                          "${imageUrl[index]["name"]}",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Movies",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: Movies.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: Movies[index]["onTap"],
                    child: Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage("${Movies[index]["image"]}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(123, 0, 0, 0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${Movies[index]["year"]}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "${Movies[index]["Text"]}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
