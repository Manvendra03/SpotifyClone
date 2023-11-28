import 'package:flutter/material.dart';
import 'package:music_player/const.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 3,
        leadingWidth: 50,
        backgroundColor: backgroundColor,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.pink.shade200,
              child: const Text(
                "M",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        title: const Text(
          "Your Library",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: const [
          Icon(Icons.search, size: 27, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.add, size: 27, color: Colors.white),
          SizedBox(
            width: 15,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 49, 48, 48),
                        borderRadius: BorderRadius.circular(15)),
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
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: Slist.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.network(Slist[index].img)),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Slist[index].song_tittle,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                Slist[index].singer_names,
                                style: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 12),
                              ),
                            ],
                          ),
                        ]),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
