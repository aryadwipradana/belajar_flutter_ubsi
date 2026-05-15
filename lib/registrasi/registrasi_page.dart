import 'package:flutter/material.dart';
import 'package:flutter_belajar_app/registrasi/submit_registrasi.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({super.key});

  @override
  State<RegistrasiPage> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registrasi",
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            Image.asset(
              'assets/img/register-logo.jpg',
              height: 300,
              fit: BoxFit.fill,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Nama Lengkap",
                prefixIcon: Icon(Icons.account_circle_outlined),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: "No. Hp",
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock_clock_outlined),
              ),
            ),
            SizedBox(height: 15),
            SubmitRegistrasi(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
