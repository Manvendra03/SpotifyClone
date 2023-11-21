import 'package:flutter/material.dart';
import 'package:music_player/const.dart';
import 'package:music_player/widget/horizontalList.dart';
import 'package:music_player/widget/songGrid.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Padding(
            padding: const EdgeInsets.only(top: 25.0, right: 10, left: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good Evening",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.history,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.settings,
                              size: 30,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  //// categories column /////
                  SizedBox(
                    height: 32,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 6),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 49, 48, 48),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              category[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  SongGrid(
                    list: Slist,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  HorizontalList(tittle: "Your Shows", songList: Slist),
                  const SizedBox(
                    height: 20,
                  ),

                  HorizontalList(tittle: "Recent Played", songList: Slist),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
