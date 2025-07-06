import 'package:flutter/material.dart';
import 'package:hello_world/custom_drawer.dart';

void main() => runApp(MyAnimeApp());

class MyAnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'آخر التحديثات',
      home: AnimeUpdatesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnimeUpdatesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> animeList = [
    {
      "title": "Hikaru ga S...",
      "episode": "الحلقة 1",
      "rating": 8.11,
      "image": "assets/images/1.jpeg",
    },
    {
      "title": "Koujo Denk...",
      "episode": "الحلقة 2",
      "rating": 8.1,
      "image": "assets/images/2.jpeg",
    },
    {
      "title": "Ame to Ki...",
      "episode": "الحلقة 3",
      "rating": 8.1,
      "image": "assets/images/3.jpeg",
    },
    {
      "title": "Kun Tun Ti...",
      "episode": "الحلقة 4",
      "rating": 8.16,
      "image": "assets/images/4.jpeg",
    },
    {
      "title": "Sono Bisqu...",
      "episode": "الحلقة 5",
      "rating": 8.13,
      "image": "assets/images/5.jpeg",
    },
    {
      "title": "Seishun Bu...",
      "episode": "الحلقة 6",
      "rating": 8.12,
      "image": "assets/images/6.jpeg",
    },
    {
      "title": "Seishun Bu...",
      "episode": "الحلقة 7",
      "rating": 8.12,
      "image": "assets/images/7.jpeg",
    },
    {
      "title": "Seishun Bu...",
      "episode": "الحلقة 8",
      "rating": 8.12,
      "image": "assets/images/8.jpeg",
    },
    {
      "title": "Seishun Bu...",
      "episode": "الحلقة 9",
      "rating": 8.12,
      "image": "assets/images/9.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "اخر التحديثات",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.grid_view, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Color(0xFF1B1E22),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: animeList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (context, index) {
            final anime = animeList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(anime["image"], fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  anime["episode"],
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  anime["title"],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  "⭐ ${anime["rating"]}",
                  style: TextStyle(color: Colors.amber, fontSize: 12),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
