import 'package:flutter/material.dart';
import 'package:filmy/widgets/settingCard.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool mode1 = true;
  bool mode3 = true;

  bool onOff = false;
  bool onOff1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(children: [
            const SizedBox(height: 20),
            Container(
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
                    const Expanded(
                      child: Text(
                        "Celular data usage",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mode1 = !mode1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            minimumSize: const Size(40, 51),
                            maximumSize: const Size(97, 61),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Text(
                          mode1 ? "Automatic" : "Manual",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
                    const Expanded(
                      child: Text(
                        "CC Translation",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Switch(
                        activeColor: Colors.black,
                        value: onOff,
                        onChanged: (bool vlaue) {
                          setState(() {
                            onOff = vlaue;
                          });
                        }),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
                    const Expanded(
                      child: Text(
                        "Video Qualitiy",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mode3 = !mode3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            minimumSize: const Size(40, 51),
                            maximumSize: const Size(97, 61),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Text(
                          mode3 ? "Manual" : "Automatic",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
                    const Expanded(
                      child: Text(
                        "Download",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Switch(
                        activeColor: Colors.black,
                        value: onOff1,
                        onChanged: (bool vlaue) {
                          setState(() {
                            onOff1 = vlaue;
                          });
                        }),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SettingCard(
              title: 'Payment',
              routeName: '/payment',
            ),
          ]),
        ),
      ),
    );
  }
}
