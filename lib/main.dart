// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int age = 0;
  addAge() {
    age += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text('ID Card'),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            addAge();
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1445227322722828290/82qrNUsS_400x400.jpg'),
              ),
            ),
            Divider(
              height: 90,
              thickness: 2,
            ),
            Text(
              'Name:',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Sheikh Umaid',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Age:',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '$age',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Sheikhumaid@pm.me',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
