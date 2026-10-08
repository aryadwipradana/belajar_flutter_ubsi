import 'package:flutter/material.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien")),
      body: ListView(
        children: const [
          Card(child: ListTile(title: const Text("Pasien A"))),
          Card(child: ListTile(title: const Text("Pasien B"))),
          Card(child: ListTile(title: const Text("Pasien C"))),
          Card(child: ListTile(title: const Text("Pasien D"))),
          Card(child: ListTile(title: const Text("Pasien E"))),
        ],
      ),
    );
  }
}
