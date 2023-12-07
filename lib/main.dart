import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yemek Menüsü'),
        ),
        drawer: MenuDrawer(),
        body: Center(
          child: Text('Yemekler'),
        ),
      ),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Yemek Menüsü',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Başlangıçlar'),
            onTap: () {
              // Başlangıçlar bölümüne tıklanınca yapılacak işlemler
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Ara Sıcaklar'),
            onTap: () {
              // Ara Sıcaklar bölümüne tıklanınca yapılacak işlemler
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Ana Yemekler'),
            onTap: () {
              // Ana Yemekler bölümüne tıklanınca yapılacak işlemler
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Tatlılar'),
            onTap: () {
              // Tatlılar bölümüne tıklanınca yapılacak işlemler
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
