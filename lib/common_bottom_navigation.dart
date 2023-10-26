import 'package:flutter/material.dart';
import 'homepagead.dart';
import 'buttom_N.dart';
import 'categorias_m.dart';
import 'productos.dart';

class CommonBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  CommonBottomNavigation({required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black, width: 1.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Image.network(
                'https://cdn.icon-icons.com/icons2/3413/PNG/512/home_icon_217777.png',
                width: 32,
                height: 32,
              ),
              onPressed: () {
                // Comprueba si no estás en HomepageAd antes de navegar
                if (currentIndex != 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomepageAd(currentIndex: currentIndex, onTabTapped: onTabTapped)),
                  );
                }
              },
            ),
            IconButton(
              icon: Image.network(
                'https://cdn.icon-icons.com/icons2/3413/PNG/512/keyframes_icon_217604.png',
                width: 32,
                height: 32,
              ),
              onPressed: () {
                // Usar Navigator para navegar a CategoriasM
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriasM()),
                );
              },
            ),
            IconButton(
              icon: Image.network(
                'https://cdn.icon-icons.com/icons2/2716/PNG/512/cube_icon_173215.png', // Reemplaza con la URL correcta
                width: 32,
                height: 32,
              ),
              onPressed: () {
                // Usar Navigator para navegar a Productos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Productos()),
                );
              },
            ),
            IconButton(
              icon: Image.network(
                'https://cdn.icon-icons.com/icons2/3413/PNG/512/docs_google_icon_217714.png',
                width: 29,
                height: 29,
              ),
              onPressed: () {
                // Agrega la funcionalidad para este botón si es necesario.
              },
            ),
            IconButton(
              icon: Image.network(
                'https://cdn.icon-icons.com/icons2/3413/PNG/512/user_home_icon_217597.png',
                width: 32,
                height: 32,
              ),
              onPressed: () {
                // Agrega la funcionalidad para este botón si es necesario.
              },
            ),
          ],
        ),
      ),
    );
  }
}
