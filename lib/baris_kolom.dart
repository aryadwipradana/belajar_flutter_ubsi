import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Baris dan Kolom'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [Text('data'), Text('data'), Text('data')]),
            Column(children: [Text('data'), Text('data'), Text('data')]),
            Column(children: [Text('data'), Text('data'), Text('data')]),
          ],
        ),
      ),
    );
  }
}
