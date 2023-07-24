import 'package:filmy/widgets/logoAndName.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const LogoAndName(
                name: 'Filmy',
                fontSize: 60,
                imageWidth: 50,
                imageheight: 50,
              ),
              const Divider(
                height: 40,
                color: Colors.grey,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Who we are ?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to Filmy App, we're passionate about one thing – movies! We believe that the magic of cinema brings people together, inspires imagination, and provides an escape from the ordinary. Our mission is to make your movie-watching experience more enjoyable, convenient, and memorable",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Social Media",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Image(
                    image: AssetImage(
                        'images/[CITYPNG.COM]HD Square White Instagram Logo Icon PNG - 1066x960.png'),
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "@Filmy",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Image(
                    image: AssetImage(
                        'images/twitter-icon-white-transparent-24-removebg-preview.png'),
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "@Filmy4",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Developper",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Eng | Mohammed Khaled",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/bottomnav');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "back to the app",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
