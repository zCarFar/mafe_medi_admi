import 'package:flutter/material.dart';

class HomepageAd extends StatelessWidget {
  HomepageAd({required this.currentIndex, required this.onTabTapped});

  final int currentIndex;
  final Function(int) onTabTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://cdn.discordapp.com/attachments/1094810439256379452/1166234905320103997/image.png?ex=6549bfe5&is=65374ae5&hm=574dba89f416dc81678b3ffb42839aa7d4c9f0c0c41f3e5b258289de08dfc85d&',
              width: 350,
              height: 170,
            ),
            SizedBox(height: 10),
            Text(
              'Bienvenido a la parte administrativa.\nAquí podrás gestionar tus \nproductos, categorías, inventario \ny más...',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
