import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_item.dart';
import 'poli_form.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PoliForm()),
              );
              setState(() {});
            },
          ),
        ],
      ),
      body: Poli.dataPoli.isEmpty
          ? const Center(child: Text("Belum ada data poli"))
          : ListView.builder(
              itemCount: Poli.dataPoli.length,
              itemBuilder: (context, index) {
                return PoliItem(
                  poli: Poli.dataPoli[index],
                  onRefresh: () => setState(() {}),
                );
              },
            ),
    );
  }
}
