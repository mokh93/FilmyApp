import 'package:filmy/widgets/backGraound.dart';
import 'package:filmy/widgets/customOutboarding.dart';
import 'package:filmy/widgets/customeIndecator.dart';
import 'package:flutter/material.dart';

class Outboarding extends StatefulWidget {
  const Outboarding({super.key});

  @override
  State<Outboarding> createState() => _OutboardingState();
}

class _OutboardingState extends State<Outboarding> {
  int _currentPage = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282f3f),
      body: BackGraound(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView(
                      physics: const BouncingScrollPhysics(),
                      controller: _controller,
                      onPageChanged: (int value) {
                        setState(() {
                          _currentPage = value;
                        });
                      },
                      children: const [
                        CustomeOutboarding(
                          title: "Start watching thousand film everyday",
                          content:
                              "Get movies, TV series, documentaries. 1 month free, then \$10/month",
                          image: '43099-removebg-preview',
                        ),
                        CustomeOutboarding(
                          title: "Relax and watching what you want",
                          content:
                              "Get movies, TV series, documentaries. 1 month free, then \$10/month",
                          image: '5746196-removebg-preview',
                        ),
                        CustomeOutboarding(
                          title: "Enjoy watching movies in high quality",
                          content:
                              "Get movies, TV series, documentaries. 1 month free, then \$10/month",
                          image: '43274-removebg-preview (1)',
                        ),
                      ],
                    ),
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomeIndecartor(
                            isSelected: _currentPage == 0,
                            endmargin: 12,
                          ),
                          CustomeIndecartor(
                            isSelected: _currentPage == 1,
                            endmargin: 12,
                          ),
                          CustomeIndecartor(
                            isSelected: _currentPage == 2,
                            endmargin: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: ElevatedButton(
                  onPressed: () {
                    _currentPage == 2
                        ? Navigator.pushReplacementNamed(context, '/login')
                        : _controller.animateToPage(2,
                            duration: const Duration(
                              seconds: 1,
                            ),
                            curve: Curves.easeInBack);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    _currentPage == 2 ? "Register Now!" : "Try it free",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
