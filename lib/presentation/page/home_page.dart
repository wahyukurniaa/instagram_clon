import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              _appBar(),
              const SizedBox(height: 20),
              _contentApp(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _appBar() {
  return const Row(
    children: [
      Text(
        'Wahyu Kurnia',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      Icon(Icons.arrow_downward),
      Spacer(),
      Icon(Icons.add),
      SizedBox(width: 5),
      Icon(Icons.menu),
    ],
  );
}

Widget _contentApp() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(''),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'WahyuKurnia',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      const SizedBox(height: 25),
      const Column(
        children: [
          Text('0',
              style: TextStyle(
                fontSize: 18,
              )),
          Text(
            'Post',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 25,
      ),
      const Column(
        children: [
          Text('0',
              style: TextStyle(
                fontSize: 18,
              )),
          Text(
            'Followers',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 25,
      ),
      const Column(
        children: [
          Text('0',
              style: TextStyle(
                fontSize: 18,
              )),
          Text(
            'Following',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ],
  );
}
