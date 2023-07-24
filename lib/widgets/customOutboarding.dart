
import 'package:flutter/cupertino.dart';

class CustomeOutboarding extends StatelessWidget {
  const CustomeOutboarding({
    super.key, required this.title, required this.content, required this.image,
  });

  final String title;
  final String content;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image(
            image:
                AssetImage('images/$image.png'),
            height: 400,
          ),
          Text(
            title,
            //"Start watching thousand film everyday",
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "VOXO",
                fontStyle: FontStyle.normal,
                fontSize: 24,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
           Text(
            content,
            //"Get movies, TV series, documentaries. 1 month free, then \$10/month",
            style: const TextStyle(
                color: Color.fromARGB(132, 255, 255, 255),
                fontFamily: "VOXO",
                fontStyle: FontStyle.normal,
                fontSize: 18,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
