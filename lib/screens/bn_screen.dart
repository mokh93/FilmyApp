import 'package:filmy/screens/home.dart';
import 'package:filmy/screens/movies.dart';
import 'package:flutter/material.dart';
import 'package:filmy/screens/cetogres.dart';
import 'package:filmy/screens/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modle/bn.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  getPrefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var UserName = preferences.get('userName');
    var PassWord = preferences.get('passWord');
    print(UserName);
    print(PassWord);
  }

  @override
  void initState() {
    super.initState();
    getPrefs();
  }

  int _selectedPageIndex = 0;
  final List<Bn> _screens = [
    Bn(title: "", widget: const Home()),
    Bn(title: "Movies", widget: const Movies()),
    Bn(title: "Categories", widget: const Cetogres()),
    Bn(title: "", widget: const Profile()),
  ];

  List Listtile = [
    {
      "icon": const Icon(
        Icons.home,
        color: Colors.white,
      ),
      "title": "Home",
      "routeName": "home",
    },
    {
      "icon": const Icon(
        Icons.person,
        color: Colors.white,
      ),
      "title": "Profile",
      "routeName": "profile",
    },
    {
      "icon": const Icon(
        Icons.settings,
        color: Colors.white,
      ),
      "title": "Settings",
      "routeName": "settings",
    },
    {
      "icon": const Icon(
        Icons.info,
        color: Colors.white,
      ),
      "title": "About Us",
      "routeName": "aboutus",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xff282f3f),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const SafeArea(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                    'images/WhatsApp Image 2023-07-06 at 9.41.13 PM.jpeg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Mohammed Kh",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const Text(
              "moha3d@gmail.com",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(height: 20),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Listtile.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/${Listtile[index]["routeName"]}');
                    },
                    child: ListTile(
                      leading: Listtile[index]["icon"],
                      minLeadingWidth: 0,
                      title: Text(
                        "${Listtile[index]["title"]}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff141621),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leading: const Text(""),
        title: Text(
          _screens[_selectedPageIndex].title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _screens[_selectedPageIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedPageIndex) {
          setState(() {
            _selectedPageIndex = selectedPageIndex;
          });
        },
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey.shade400,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            activeIcon: Icon(Icons.play_circle_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person_2),
            label: '',
          ),
        ],
      ),
    );
  }
}
