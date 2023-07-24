import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, '/outboarding');

      getPrefs();
    });
  }

  getPrefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var UserName = preferences.get('userName');
    var PassWord = preferences.get('passWord');
    print(UserName);
    print(PassWord);

    if (UserName != null && PassWord != null) {
      Navigator.pushReplacementNamed(context, '/bottomnav');
    } else {
      Navigator.pushReplacementNamed(context, '/outboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'images/_Coming of age movies that aren\'t Booksmart or Superbad and are actually good__.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(186, 0, 0, 0),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // const Text(
              //   "فيلمي",
              //   style: TextStyle(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       fontFamily: "Scratchy",
              //       fontStyle: FontStyle.normal,
              //       fontSize: 60,
              //       fontWeight: FontWeight.w700),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Filmy",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Scratchy",
                        fontStyle: FontStyle.normal,
                        fontSize: 70,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(
                        image: AssetImage('images/noun-movies-4970853.png')),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                "by | Mohammed Khaled",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
