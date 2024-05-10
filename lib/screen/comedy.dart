import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videoflix_ui/screen/download.dart';

class ComedyScreen extends StatefulWidget {
  const ComedyScreen({Key? key}) : super(key: key);

  @override
  State<ComedyScreen> createState() => _ComedyScreenState();
}

class _ComedyScreenState extends State<ComedyScreen> {
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Icon(Icons.search),
                    SizedBox(
                      width: 23,
                    ),
                    Text('Comedy')
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Text(
                '''Result for 'comedy' ''',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 42,
          ),
          const Wrap(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan.png',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan-america.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan.png',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan-america.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan.png',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan-america.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan.png',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/capitan-america.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                    Card(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/black.jpg',
                        ),
                        radius: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: ''),
        const BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.search,
          ),
          label: 'Search',
        ),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bookmark,
            ),
            label: 'Bookmark'),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DownloadScreen(),
                ));
              },
              child: const Icon(
                CupertinoIcons.arrow_down_to_line_alt,
              ),
            ),
            label: 'Downloads'),
        const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'Profile'),
      ]),
      backgroundColor: Colors.black,
    );
  }
}
