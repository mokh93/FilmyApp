import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    super.key,
    required this.title,
    required this.routeName,
  });

  final String title;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(94, 189, 189, 189),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ],
          ),
        ),
      ),
    );
  }
}
