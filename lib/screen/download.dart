import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text(
          'Download',
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(23)),
              Column(
                children: [
                  const Text(
                    'List Movie',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    height: 3,
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'Downloading',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    height: 3,
                    color: Colors.deepPurple.shade500,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 360,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: const Color.fromARGB(255, 149, 110, 255)),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset(
                  'assets/images/avangers.png',
                  height: double.infinity,
                  width: 109,
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
