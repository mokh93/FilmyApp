import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cridetCard extends StatelessWidget {
  const cridetCard({
    super.key,
    required this.cardColor,
    required this.topImage,
    required this.bottomImage,
  });

  final Color cardColor;
  final String topImage;
  final String bottomImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 340,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:
                  Image(image: NetworkImage(topImage), height: 60, width: 90),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("4049 1245 675 890",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("****2137",
                    style: TextStyle(
                        color: Color.fromARGB(150, 0, 0, 0), fontSize: 18)),
                Image(image: NetworkImage(bottomImage), height: 60, width: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
