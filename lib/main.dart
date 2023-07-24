import 'package:filmy/screens/ActionMvies.dart';
import 'package:filmy/screens/aboutUs.dart';
import 'package:filmy/screens/ceditCard.dart';
import 'package:filmy/screens/launch.dart';
import 'package:filmy/screens/outboarding/outboarding.dart';
import 'package:filmy/screens/soonPage.dart';
import 'package:flutter/material.dart';
import 'package:filmy/screens/FastX.dart';
import 'package:filmy/screens/TheBatman.dart';
import 'package:filmy/screens/bn_screen.dart';
import 'package:filmy/screens/cetogres.dart';
import 'package:filmy/screens/ghosted.dart';
// import 'package:netflix/screens/favCategores.dart';
import 'package:filmy/screens/home.dart';
import 'package:filmy/screens/interstaller.dart';
import 'package:filmy/screens/johnWick.dart';
import 'package:filmy/screens/joker.dart';
import 'package:filmy/screens/lalaland.dart';
import 'package:filmy/screens/login.dart';
import 'package:filmy/screens/movies.dart';
import 'package:filmy/screens/newaccount.dart';
import 'package:filmy/screens/parasite.dart';
import 'package:filmy/screens/payment.dart';
import 'package:filmy/screens/profile.dart';
import 'package:filmy/screens/rednotice.dart';
import 'package:filmy/screens/search.dart';
import 'package:filmy/screens/setting.dart';
import 'package:filmy/screens/start.dart';
import 'package:filmy/screens/theMazeRunner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch',
      routes: {
        '/launch': (context) => const LaunchScreen(),
        '/outboarding': (context) => const Outboarding(),
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/start': (context) => const Start(),
        '/search': (context) => const Search(),
        '/fastx': (context) => const FastX(),
        '/lala': (context) => const LaLa(),
        '/john': (context) => const JohnWick(),
        '/joker': (context) => const Joker(),
        '/redNotice': (context) => const RedNotice(),
        '/theMaze': (context) => const TheMaze(),
        '/ghosted': (context) => const Ghosted(),
        '/interstellar': (context) => const Interstellar(),
        '/parasite': (context) => const Parasite(),
        '/thebatman': (context) => const TheBatman(),
        '/cetogres': (context) => const Cetogres(),
        '/actionmovies': (context) => const ActionMovies(),
        '/soonPage': (context) => const SoonPage(),
        '/profile': (context) => const Profile(),
        '/settings': (context) => const Settings(),
        '/payment': (context) => const Payment(),
        '/cridetCard': (context) => const CridetCard(),
        '/aboutus': (context) => const AboutUs(),
        '/movies': (context) => const Movies(),
        '/bottomnav': (context) => const Bottomnav(),
      },
    );
  }
}
