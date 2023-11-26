import 'package:flutter/material.dart';
import 'package:music_player/const.dart';
import 'package:music_player/pages/page1.dart';
import 'package:music_player/pages/page2.dart';
import 'package:music_player/pages/page3.dart';
import 'package:music_player/pages/page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected_page = 0;

  List<Widget> PageList = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: backgroundColor,
          body: PageList[selected_page],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: backgroundColor.withOpacity(0.8),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'search',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.playlist_play_rounded,
                  ),
                  label: 'Your Library'),
              BottomNavigationBarItem(
                  icon: Image.asset(selected_page == 3
                      ? "assets/i1_white.png"
                      : "assets/i1_grey.png"),
                  label: 'premium'),
            ],
            currentIndex: selected_page,
            onTap: (int index) {
              setState(
                () {
                  selected_page = index;
                },
              );
            },
            selectedIconTheme:
                const IconThemeData(size: 30, color: Colors.white),
            unselectedIconTheme: const IconThemeData(
                size: 30, color: Color.fromRGBO(117, 117, 117, 1)),
            selectedLabelStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade600,
            unselectedLabelStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
