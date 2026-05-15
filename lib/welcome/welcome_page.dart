import 'package:flutter/material.dart';
import 'package:flutter_belajar_app/welcome/tombol_login.dart';
import 'package:flutter_belajar_app/welcome/tombol_registrasi.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            Image.asset(
              'assets/img/welcome-logo.jpg',
              height: 300,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 15),
            Text(
              "Ini adalah aplikasi sewa mobil dimana kamu dapat menyewa berbagai macam mobil hanya dalam satu aplikasi",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            TombolRegistrasi(),
            SizedBox(height: 15),
            TombolLogin(),
          ],
        ),
      ),
    );
  }
}
