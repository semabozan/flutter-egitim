import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt Ol"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // Sen burayı kendin dolduracaksın
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: "Dil", child: Text("Dil")),
              const PopupMenuItem(value: "İletişim", child: Text("İletişim")),
              const PopupMenuItem(value: "Hakkımızda", child: Text("Hakkımızda")),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Arı kovanı görseli yerine placeholder
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.orange.shade300,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text("🐝", style: TextStyle(fontSize: 40)),
              ),
            ),
            const SizedBox(height: 30),

            // Ad Soyad
            TextField(
              decoration: const InputDecoration(
                labelText: "Ad/soyadı",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Telefon
            TextField(
              decoration: const InputDecoration(
                labelText: "Telefon",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 30),

            // Kaydet Butonu
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Fonksiyon eklemeyeceğiz
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text("Kaydet", style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(height: 20),

            // Alt yazı
            const Text(
              "Zaten hesabınız var mı? Giriş yapın",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
