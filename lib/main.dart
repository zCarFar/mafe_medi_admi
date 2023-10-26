import 'package:flutter/material.dart';
import 'package:mafe_medi_2/productos.dart';
import 'homepagead.dart';
import 'common_bottom_navigation.dart';

void main() {
  runApp(MaterialApp(
    home: MainApp(), // Utiliza MainApp como el widget raíz de la aplicación
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_currentIndex),
      bottomNavigationBar: CommonBottomNavigation(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomepageAd(
          currentIndex: _currentIndex,
          onTabTapped: _onTabTapped,
        );
      case 1:
        return Productos(); // Esta es la vista que se muestra cuando el índice es 1
      default:
        return HomepageAd(
          currentIndex: _currentIndex,
          onTabTapped: _onTabTapped,
        );
    }
  }
}
