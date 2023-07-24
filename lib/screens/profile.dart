import 'package:filmy/widgets/backGraound.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      body: BackGraound(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Column(
              // physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                              'images/WhatsApp Image 2023-07-06 at 9.41.13 PM.jpeg'),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const Text(
                      "Mohammed Kh",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Text(
                      "moha3d@gmail.com",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "196",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Text(
                              "movies",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Text(
                          "  |  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w300),
                        ),
                        Column(
                          children: [
                            Text(
                              "151",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Text(
                              "followers",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Text(
                          "  |  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w300),
                        ),
                        Column(
                          children: [
                            Text(
                              "196",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Text(
                              "following",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hi thre! I'm mohammed I like horror/Action\n Movies.",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Statistics",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 30,
                    ),
                    profileInfo(
                      text: "Movies",
                      times: "196",
                    ),
                    SizedBox(height: 20),
                    profileInfo(
                      text: "WatchList",
                      times: "16",
                    ),
                    SizedBox(height: 20),
                    profileInfo(
                      text: "Favotites",
                      times: "10",
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Social Links",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'images/[CITYPNG.COM]HD Square White Instagram Logo Icon PNG - 1066x960.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "@MK_45",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'images/twitter-icon-white-transparent-24-removebg-preview.png'),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "@Mo_kh3",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class profileInfo extends StatelessWidget {
  const profileInfo({
    super.key,
    required this.text,
    required this.times,
  });

  final String text;
  final String times;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          times,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
