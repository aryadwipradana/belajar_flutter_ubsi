import 'package:flutter/material.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pegawai")),
      body: ListView(
        children: const [
          Card(child: ListTile(title: const Text("Pegawai A"))),
          Card(child: ListTile(title: const Text("Pegawai B"))),
          Card(child: ListTile(title: const Text("Pegawai C"))),
          Card(child: ListTile(title: const Text("Pegawai D"))),
          Card(child: ListTile(title: const Text("Pegawai E"))),
        ],
      ),
    );
  }
}
