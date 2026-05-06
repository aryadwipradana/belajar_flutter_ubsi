import 'package:flutter/material.dart';

class Helloworld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Flutter')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network('https://picsum.photos/250?image=9'),
          Image.network('https://picsum.photos/250?image=10'),
          Image.network('https://picsum.photos/250?image=11'),
        ],
      ),
    );
  }
}
