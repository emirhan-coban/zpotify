// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Search",
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Theme.of(context).colorScheme.onSecondary,
                        filled: true,
                        hintText: "Artists, songs, or podcasts",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: "Proxima",
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Proxima",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Icon(
                  Icons.mic_outlined,
                  color: Theme.of(context).colorScheme.onBackground,
                  size: 30,
                ),
                const SizedBox(width: 20),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Theme.of(context).colorScheme.onBackground,
                  size: 30,
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Your top genres",
                    style: TextStyle(
                      fontSize: 22,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 20),
                    child: Container(
                      width: 170,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Text(
                              'Rock',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Proxima",
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            right: -20,
                            child: Transform.rotate(
                              angle: 0.3, // Radyan cinsinden döndürme açısı
                              child: Image.asset(
                                'assets/images/spotify4.jpg', // Buraya kendi resim URL'inizi koyabilirsiniz
                                width: 75,
                                height: 75,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: Container(
                      width: 200,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Text(
                              'Hip Hop',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Proxima",
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            right: -20,
                            child: Transform.rotate(
                              angle: 0.3, // Radyan cinsinden döndürme açısı
                              child: Image.asset(
                                'assets/images/spotify1.jpg', // Buraya kendi resim URL'inizi koyabilirsiniz
                                width: 75,
                                height: 75,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
