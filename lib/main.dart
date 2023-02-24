import 'package:flutter/material.dart';

import 'Courses.dart';
import 'about.dart';
import 'contact.dart';
import 'faq.dart';
import 'home.dart';
import 'reviews.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => homePage(),
        'courses': (context) => coursesPage(),
        'about': (context) => aboutPage(),
        'reviews': (context) => reviewsPage(),
        'contact': (context) => contactPage(),
        'faq': (context) => faqPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
        ),
        endDrawer: SafeArea(
          child: Drawer(
            child: Container(
              color: Colors.deepPurple[200],
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                        ),
                        Text(
                          "Learning Approach",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => homePage()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Courses",
                      style: TextStyle(fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => coursesPage()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => aboutPage()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Reviews",
                      style: TextStyle(fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => reviewsPage()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Contact",
                      style: TextStyle(fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => contactPage()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      "FAQ",
                      style: TextStyle(fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => faqPage()));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
