import 'package:flutter/material.dart';
import 'package:music_player/const.dart';
import 'package:music_player/playlist_screen.dart';

class categoryList extends StatelessWidget {
  const categoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PlaylistScreen()),
        );
      },
      child: Container(
        height: 32,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
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
    );
  }
}
