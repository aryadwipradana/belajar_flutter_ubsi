import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Pasien")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            "Nama : ${widget.pasien.nama}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            "No. Telepon : ${widget.pasien.nomor_telepon}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(), _tombolHapus()],
          ),
        ],
      ),
    );
  }

  Widget _tombolUbah() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah"),
    );
  }

  Widget _tombolHapus() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"),
    );
  }
}
