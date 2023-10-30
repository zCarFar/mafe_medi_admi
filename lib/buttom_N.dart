import 'package:flutter/material.dart';
import 'homepagead.dart';
import 'Widgets/common_bottom_navigation.dart';
import 'productos/productos.dart';

class ButtonN extends StatefulWidget {
  const ButtonN({Key? key}) : super(key: key);

  @override
  _ButtonNState createState() => _ButtonNState();
}

class _ButtonNState extends State<ButtonN> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
      ),
      body: Center(
        child: Text('Contenido de la pantalla'),
      ),
      bottomNavigationBar: CommonBottomNavigation(
        currentIndex: _currentIndex,
        onTabTapped: _onItemTapped,
      ),
    );
  }
}
