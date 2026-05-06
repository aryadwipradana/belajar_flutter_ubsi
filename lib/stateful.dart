import 'package:flutter/material.dart';

class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => Contoh_StatefulState();
}

class Contoh_StatefulState extends State<ContohStateful> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Stateful")),
      body: Column(
        children: [
          Text('Nomor : ${counter}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => setState(() {
                  counter++;
                }),
                child: Text('Tambah'),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  counter = 0;
                }),
                child: Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
