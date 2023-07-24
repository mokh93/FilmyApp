import 'package:flutter/material.dart';
// import 'package:netflix/modle/choises.dart';
// import 'package:netflix/modle/movie_modle.dart';
import 'package:filmy/widgets/backGraound.dart';
import 'package:filmy/widgets/customShow.dart';
import 'package:filmy/widgets/customeTextFiled%20copy.dart';
import 'package:filmy/widgets/logoAndName.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  static List<String> main_list = [
    "Popular ",
    "New Collection ",
    "Top IMDB ",
    "Most Watched ",
  ];

  List<String> disply_list = List.from(main_list);

  late TextEditingController _searchController;
  String? _searchErrorText;

  @override
  Widget build(BuildContext context) {
    List item = [
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
            "https://i.pinimg.com/564x/75/a3/1d/75a31d2c3e8312fb3e173340b575e3a1.jpg",
        "Text": "Interstellar",
        "year": "2014",
        "onTap": () {
          Navigator.pushNamed(context, '/interstellar');
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
    List lastWatched = [
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
    ];
    return Scaffold(
      body: BackGraound(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: LogoAndName(
                      imageheight: 40,
                      imageWidth: 40,
                      name: "Filmy",
                      fontSize: 25,
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        'images/WhatsApp Image 2023-07-06 at 9.41.13 PM.jpeg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomeTextField2(
                  controller: _searchController,
                  errorText: _searchErrorText,
                  textInputType: TextInputType.name,
                  obscureText: false,
                  expands: true,
                  lable: "What do you want to watch",
                  suffixIcononPressed: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  suffixIconData: Icons.search),
              const SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 40,
                ),
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: disply_list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            right: index == disply_list.length - 1 ? 0 : 10),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              disply_list[index],
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              CustomShow(
                listname: item,
                shadow_width: 325,
                shadow_height: 200,
                container_width: 325,
                container_height: 200,
                image: "image",
                subtitle: "year",
                title: "Text",
                subtitle_font_size: 17,
                title_font_size: 23,
                ontap: "onTap",
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Last ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Watched",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 23,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomShow(
                listname: lastWatched,
                shadow_width: 150,
                shadow_height: 230,
                container_width: 150,
                container_height: 230,
                image: "image",
                subtitle: "year",
                title: "Text",
                subtitle_font_size: 12,
                title_font_size: 18,
                ontap: 'onTap',
              ),
              const Spacer(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
