import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({super.key, required this.poli});

  @override
  State<PoliUpdateForm> createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_namaPoliCtrl.text.trim().isEmpty) return;
        widget.poli.namaPoli = _namaPoliCtrl.text.trim();
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: widget.poli)),
        );
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
