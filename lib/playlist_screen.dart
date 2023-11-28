import 'package:flutter/material.dart';
import 'package:music_player/const.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: backgroundColor,
            pinned: true,
            snap: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 4,
              title: Container(
                width: double.infinity,
                // color: Colors.yellowAccent,
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 50,
                child: Text(
                  "Top most streamed songs on  Spotify",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              background: Container(
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.white,
                ),
              ),
            ),
            expandedHeight: 300,
          ),
        ],
      ),
    );
  }
}
