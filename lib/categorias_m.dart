import 'package:flutter/material.dart';
import 'common_bottom_navigation.dart';
import 'CustomDrawer.dart';

class CategoriasM extends StatelessWidget {
  CategoriasM();

  // Define una variable para el ancho y alto del TextField
  double textFieldWidth = 350.0; // Puedes ajustar este valor según tus necesidades
  double textFieldHeight = 40.0; // Puedes ajustar este valor según tus necesidades
  double containerHeight = 150.0; // Altura deseada para los contenedores
  double container1Width = 165.0; // Ancho personalizado para el primer Container
  double container2Width = 165.0; // Ancho personalizado para el segundo Container
  double horizontalSpacing = 20.0; // Espacio horizontal entre los contenedores

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 3, 49, 119), Color.fromARGB(255, 61, 154, 231), Color.fromARGB(255, 255, 255, 255)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppBar(
                title: Text(
                  'Categorías',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Alinea el contenido en la parte superior
          children: [
            SizedBox(height: 25.0), // Agrega un margen superior
            Container(
              width: textFieldWidth,
              child: SizedBox(
                height: textFieldHeight, // Ajusta la altura del TextField aquí
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
                      hintText: 'Buscar en categorías',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 20.0), // Agrega un espacio entre el TextField y los nuevos Contenedores

            Container(
              width: textFieldWidth, // Ancho personalizado para el contenedor principal
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacia los contenedores al principio y al final
                children: [
                  Container(
                    width: container1Width, // Ancho personalizado para el primer Container
                    height: containerHeight, // Altura deseada para los contenedores
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
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Puedes agregar cualquier contenido dentro de este nuevo Container
                  ),
                  SizedBox(width: horizontalSpacing), // Agrega espacio horizontal entre los contenedores
                  Container(
                    width: container2Width, // Ancho personalizado para el segundo Container
                    height: containerHeight, // Altura deseada para los contenedores
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
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Puedes agregar cualquier contenido dentro de este nuevo Container
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonBottomNavigation(
        currentIndex: 1,
        onTabTapped: (index) {
          // Implementa la lógica deseada aquí
        },
      ),
      drawer: CustomDrawer(), // Agrega tu CustomDrawer aquí
    );
  }
}