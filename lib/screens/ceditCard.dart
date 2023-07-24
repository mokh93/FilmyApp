import 'package:filmy/widgets/cridetCard.dart';
import 'package:flutter/material.dart';

class CridetCard extends StatelessWidget {
  const CridetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const cridetCard(
                  cardColor: Colors.white,
                  topImage:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Visa_Logo.png/640px-Visa_Logo.png',
                  bottomImage:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png',
                ),
                const SizedBox(
                  height: 40,
                ),
                cridetCard(
                  cardColor: Colors.grey.shade400,
                  topImage:
                      'https://1.bp.blogspot.com/-HG3FmZcenQs/X1PYOXi0QWI/AAAAAAAASZg/NvXsqVViQl0sxnxYMm0s2_8mfrNr05M2QCLcBGAsYHQ/s16000/%25D8%25A8%25D9%2586%25D9%2583%2B%25D9%2581%25D9%2584%25D8%25B3%25D8%25B7%25D9%258A%25D9%2586.png',
                  bottomImage:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Visa_Logo.png/640px-Visa_Logo.png',
                ),
                const SizedBox(
                  height: 40,
                ),
                const cridetCard(
                  cardColor: Color.fromARGB(255, 165, 190, 235),
                  topImage:
                      'https://www.urbantool.com/wp-content/uploads/2016/12/paypal-logo-png.png',
                  bottomImage:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png',
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _snakbar(context, message: "Card Confirmed");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    "Confirm Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
