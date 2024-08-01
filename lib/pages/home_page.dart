import 'package:flutter/material.dart';

import '../components/playlist_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List playlists = [
    PlayListTile(title: "Beatiful Sky", image: "assets/images/spotify1.jpg"),
    PlayListTile(title: "Excellent", image: "assets/images/spotify2.jpg"),
    PlayListTile(title: "Perfection", image: "assets/images/spotify3.png"),
    PlayListTile(title: "Best of Best", image: "assets/images/thesmiths.jpg"),
    PlayListTile(title: "The Stars", image: "assets/images/spotify5.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Good evening",
                    style: TextStyle(
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          playlists[0].image,
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          playlists[0].title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          playlists[1].image,
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          playlists[1].title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          playlists[2].image,
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          playlists[2].title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          playlists[3].image,
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          playlists[3].title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Recently played",
                    style: TextStyle(
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 20),
                child: Row(
                  children: List.generate(5, (index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15),
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            playlists[index].image,
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: Text(
                              playlists[index].title,
                              style: TextStyle(
                                fontSize: 20,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontFamily: 'Proxima',
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "New releases for you",
                    style: TextStyle(
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              playlists[4].image,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              playlists[4].title,
                              style: TextStyle(
                                fontSize: 20,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontFamily: 'Proxima',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              playlists[3].image,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              playlists[3].title,
                              style: TextStyle(
                                fontSize: 20,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontFamily: 'Proxima',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}