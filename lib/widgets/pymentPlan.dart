import 'package:filmy/screens/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PymentPaln extends StatelessWidget {
  const PymentPaln({
    super.key,
    required this.packagetype,
    required this.price,
    required this.members,
    required this.color,
  });

  final String packagetype;
  final String price;
  final String members;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$packagetype Package",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 40,
            ),
            paymentInfo(
              inf1: '$members Member',
              inf2: 'Stream add free',
            ),
            const SizedBox(height: 10),
            const paymentInfo(
              inf1: 'Watching in 4K or HD',
              inf2: 'Top film and seriels',
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(
                  Icons.check_circle_outlined,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Watching in Online or Offline",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
