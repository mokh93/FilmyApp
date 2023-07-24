import 'package:flutter/material.dart';
import 'package:filmy/modle/movie_modle.dart';
// import 'package:netflix/widgets/customeTextFiled%20copy.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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

  static List<MovieModle> main_movies_list = [
    MovieModle(
        "Interstellar",
        2014,
        "https://i.pinimg.com/564x/75/a3/1d/75a31d2c3e8312fb3e173340b575e3a1.jpg",
        8.7,
        '/interstellar'),
    MovieModle(
        "The Batman",
        2022,
        "https://i.pinimg.com/564x/b6/bd/b4/b6bdb4f8a420e991cfcecd5346bbe063.jpg",
        7.8,
        '/thebatman'),
    MovieModle(
        "John Wick 1",
        2014,
        "https://i.pinimg.com/564x/25/82/b4/2582b4a9b2174193380ad366886ee5a3.jpg",
        7.4,
        '/john'),
    MovieModle(
        "Parasite",
        2019,
        "https://i.pinimg.com/564x/9e/c4/b3/9ec4b31f77c92a9561b41de87095d16d.jpg",
        8.5,
        '/parasite'),
    MovieModle(
        "Ghosted",
        2023,
        "https://i.pinimg.com/564x/7e/f1/a1/7ef1a185ed37b8fc90e970cd512b80fb.jpg",
        5.8,
        '/ghosted'),
    MovieModle(
        "Fast X",
        2023,
        "https://i.pinimg.com/564x/9c/59/20/9c5920d5720d7ba34ebf02096d6cc94e.jpg",
        5.9,
        '/fastx'),
    MovieModle(
        "Joker",
        2019,
        "https://i.pinimg.com/564x/99/f8/70/99f8702093bd74454c4636a33f558c4a.jpg",
        8.4,
        '/joker'),
    MovieModle(
        "La La Land",
        2016,
        "https://i.pinimg.com/564x/df/21/fb/df21fb21e8e249212fdc406a469ea533.jpg",
        8.0,
        '/lala'),
    MovieModle(
        "Red Notice",
        2021,
        "https://i.pinimg.com/564x/d1/41/0d/d1410dd81026277b24f0296dfa08e716.jpg",
        6.3,
        '/redNotice'),
    MovieModle(
        "The Maze Runner",
        2014,
        "https://i.pinimg.com/564x/b8/fa/74/b8fa7480b62ed4af7af6a6023787f751.jpg",
        6.8,
        '/theMaze'),
  ];

  List<MovieModle> disply_list = List.from(main_movies_list);

  void updateList(String value) {
    setState(() {
      disply_list = main_movies_list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  late TextEditingController _searchController;
  String? _searchErrorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  onChanged: (value) => updateList(value),
                  style: const TextStyle(color: Colors.white),
                  obscureText: false,
                  controller: _searchController,
                  onTap: () {},
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.grey,
                  cursorRadius: const Radius.circular(10),
                  keyboardType: TextInputType.name,
                  maxLength: 30,
                  enabled: true,
                  minLines: null,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(64, 238, 238, 238),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    constraints: BoxConstraints(
                      maxHeight: _searchErrorText == null ? 60 : 75,
                    ),
                    counterText: '',
                    hintText: "What do you want to watch",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 15),
                    hintMaxLines: 1,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    errorText: _searchErrorText,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: disply_list.length == 0
                        ? const Center(
                            child: Text(
                              "No result found",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        : ListView.builder(
                            itemCount: disply_list.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context,
                                      disply_list[index].navigator_screen!);
                                },
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  height: 90,
                                  width: 164,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        106, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 90,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    0, 158, 158, 158),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        disply_list[index]
                                                            .poster_url!),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  disply_list[index].title!,
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  '${disply_list[index].release_year!}',
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          139, 255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                          ],
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
                                              '${disply_list[index].rating}',
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
              ]),
        ),
      ),
    );
  }
}
