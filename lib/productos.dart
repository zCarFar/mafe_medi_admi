import 'package:flutter/material.dart';
import 'common_bottom_navigation.dart';
import 'CustomDrawer.dart';

class Productos extends StatefulWidget {
  @override
  _ProductosState createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  int _currentIndex = 1; // Establece el índice en 1 para representar la pestaña de productos

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 3, 49, 119),
                Color.fromARGB(255, 61, 154, 231),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: AppBar(
            leading: Builder(
              builder: (context) {
                return Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer(); // Abre el cajón de navegación
                    },
                  ),
                );
              },
            ),
            title: Container(
              margin: EdgeInsets.only(
                  top: 27.0), // Ajusta el valor para mover el título "Productos"
              child: Text(
                'Productos',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0), // Espacio entre la barra de la aplicación y el TextField
          Container(
            width: 350.0, // Ancho del TextField
            child: SizedBox(
              height: 40.0, // Altura del TextField
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 6),
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar en productos',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0), // Espacio entre el TextField y el contenido principal
          Expanded(
            child: ListView(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.85, // Factor de ancho, ajusta según tus necesidades
                  alignment: Alignment.center,
                  child: Container(
                    height: 120.0, // Altura del Container blanco con sombra
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 6),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Agrega cualquier contenido que desees en este Container
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: CommonBottomNavigation(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),
      drawer: CustomDrawer(), // Agrega el cajón de navegación
    );
  }
}
