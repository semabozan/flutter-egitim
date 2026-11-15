import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bayram Kartı"),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bayramınız Kutlu Olsun",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              Image.asset("assets/images.jpg", height: 500, width: 500),
            ],
          ),
        ),
      ),
    ),
  );
}

// PUBSPEC.YAML dosyasına assets tanıtırken zorlandım 
//flutter in altına dosya yolu ekliyosun
//her seferinde 2 satır boşluk bırakman gerek.
//bunu yapay zekayla yaptırdım yine hata verdiği için.