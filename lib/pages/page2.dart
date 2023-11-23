import 'package:flutter/material.dart';
import 'package:music_player/const.dart';
import 'package:music_player/pages/page1.dart';
import 'package:music_player/widget/categoryList.dart';
import 'package:music_player/widget/horizontalList.dart';
import 'package:music_player/widget/songGrid.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: const CustomScrollView(
          slivers: [
            CustomAppBarr(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroundColor,
      pinned: true,
      snap: true,
      floating: true,
      flexibleSpace: const FlexibleSpaceBar(
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.only(bottom: 10, left: 0),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: 90,
              ),
            ),
            categoryList(),
          ],
        ),
        background: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ),
      expandedHeight: 110,
    );
  }
}
