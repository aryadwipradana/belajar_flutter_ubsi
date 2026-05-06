import 'package:flutter/material.dart';
import 'package:flutter_belajar_app/helloworld.dart';
import 'package:flutter_belajar_app/mahasiswa_form.dart';
import 'package:flutter_belajar_app/stateful.dart';
import 'package:flutter_belajar_app/stateless.dart';
import 'package:flutter_belajar_app/widgets/card_widget.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Parsing Data')),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              child: CardWidget(icon: Icons.ad_units, judul: 'judul'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Helloworld()),
                );
              },
            ),
            GestureDetector(
              child: CardWidget(
                icon: Icons.add_a_photo,
                judul: 'Contoh Stateless Widget',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContohStateless()),
                );
              },
            ),
            GestureDetector(
              child: CardWidget(
                icon: Icons.ad_units_rounded,
                judul: 'Contoh Stateful Widget',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContohStateful()),
                );
              },
            ),
            GestureDetector(
              child: CardWidget(
                icon: Icons.wallet_giftcard,
                judul: 'Contoh Form',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MahasiswaForm()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
