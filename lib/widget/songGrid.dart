import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class SongGrid extends StatelessWidget {
  final List<Song> list;

  const SongGrid({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 2.8,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 49, 48, 48),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.white,
                    height: 50,
                    width: 50,
                    child: Image.network(
                      list[index].img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      list[index].song_tittle,
                      maxLines: 2,
                      softWrap: true,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
