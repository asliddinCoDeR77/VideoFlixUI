import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:videoflix_ui/screen/comedy.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 34,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 164, 161, 161),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Icon(Icons.search),
                    SizedBox(
                      width: 23,
                    ),
                    Text('Search by title,genre,actors')
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Text(
                'Recent Searches',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Chip(
                avatar: Icon(
                  Icons.access_time_sharp,
                  color: Colors.black,
                ),
                label: Text('Marvel'),
                backgroundColor: Color.fromARGB(255, 130, 105, 201),
              ),
              SizedBox(
                width: 19,
              ),
              Chip(
                avatar: Icon(
                  Icons.access_time_sharp,
                  color: Colors.black,
                ),
                label: Text('Capitan America'),
                backgroundColor: Color.fromARGB(255, 130, 105, 201),
              )
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Chip(
                avatar: Icon(
                  Icons.access_time_sharp,
                  color: Colors.black,
                ),
                label: Text('Capitan Marvel'),
                backgroundColor: Color.fromARGB(255, 88, 69, 144),
              ),
              SizedBox(
                width: 19,
              ),
              Chip(
                avatar: Icon(
                  Icons.access_time_sharp,
                  color: Colors.black,
                ),
                label: Text('Thor'),
                backgroundColor: Color.fromARGB(255, 130, 105, 201),
              )
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Text(
                'Popular',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.all(12)),
                Card(
                  child: Image.asset(
                    'assets/images/capitan.png',
                    height: 140,
                  ),
                ),
                Card(
                  child: Image.asset(
                    'assets/images/capitan-america.jpg',
                    height: 140,
                  ),
                ),
                Card(
                  child: Image.asset(
                    'assets/images/black.jpg',
                    height: 140,
                  ),
                ),
                Card(
                  child: Image.asset(
                    'assets/images/black.jpg',
                    height: 140,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Text(
                'Recommendations for you',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.all(12)),
                Card(
                  child: Image.asset(
                    'assets/images/capitan.png',
                    height: 140,
                  ),
                ),
                Card(
                  child: Image.asset(
                    'assets/images/capitan-america.jpg',
                    height: 140,
                  ),
                ),
                Card(
                  child: Image.asset(
                    'assets/images/black.jpg',
                    height: 140,
                  ),
                ),
                Card(
                  child: Image.asset(
                    'assets/images/black.jpg',
                    height: 140,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: ''),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ComedyScreen(),
              ));
            },
            child: const Icon(
              CupertinoIcons.search,
            ),
          ),
          label: 'Search',
        ),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bookmark,
            ),
            label: 'Bookmark'),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.arrow_down_to_line_alt,
            ),
            label: 'Downloads'),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'Profile'),
      ]),
      backgroundColor: const Color.fromARGB(255, 28, 13, 55),
    );
  }
}
