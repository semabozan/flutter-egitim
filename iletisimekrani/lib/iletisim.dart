import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

// Bu sınıf, uygulamanın ana widget'ıdır. Burada BenimUyg sınıfı StatelessWidget'tan türetilmiştir ve build metodu ile uygulamanın temel yapısını oluşturur. Scaffold widget'ı kullanılarak bir temel yapı sağlanır ve arka plan rengi mavi-gri olarak ayarlanır.
//materialappi kendi widgetımıza bagladık.
//HotReload degişime bakıyor bu degişim bir build metodu içindeyse
//bu metodu tekrar çalıştırıp ekranı baştan çiziyor.

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('lib/assets/images/images.jpg'),
                ),
                Text(
                  'Flutter Kahvecisi',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: const Color.fromARGB(255, 210, 234, 231),
                  ),
                ),
                Container(width: 300, child: Divider(color: Colors.white)),
                SizedBox(height: 20.0),
                Card(
                  elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal, size: 30.0),
                    title: Text(
                      '+90 555 555 55 55',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: const Color.fromARGB(255, 64, 88, 85),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Card(
                  elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal, size: 30.0),
                    title: Text(
                      'flutterkahvecisi@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: const Color.fromARGB(255, 64, 88, 85),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.email, color: Colors.teal, size: 30.0),
//                         SizedBox(width: 15.0),
//                         Text(
//                           'flutterkahvecisi@gmail.com',
//                           style: TextStyle(
//                             fontSize: 20.0,
//                             color: const Color.fromARGB(255, 64, 88, 85),
//                           ),
//                         ),
//                       ],
//                     ),
