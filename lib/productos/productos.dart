import 'package:flutter/material.dart';
import '../Widgets/common_bottom_navigation.dart';
import '../Widgets/CustomDrawer.dart';
import 'Show SubProducts/AddProducto.dart';

class Productos extends StatefulWidget {
  @override
  _ProductosState createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  int _currentIndex =
      1; // Establece el índice en 1 para representar la pestaña de productos

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget customButton(
      String imageUrl, Function() onPressed, double width, double height) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Hace que el botón sea redondo
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(100.0), // Radio del botón
          child: Container(
            width: width, // Ajusta el ancho del botón
            height: height, // Ajusta el alto del botón
            decoration: BoxDecoration(
              color: Colors.transparent, // Fondo transparente
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
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
                      Scaffold.of(context)
                          .openDrawer(); // Abre el cajón de navegación
                    },
                  ),
                );
              },
            ),
            title: Container(
              margin: EdgeInsets.only(
                  top:
                      27.0), // Ajusta el valor para mover el título "Productos"
              child: Text(
                'Productos',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                    top:
                        20.0), // Ajusta este valor para mover el botón hacia abajo
                child: IconButton(
                  icon: Icon(Icons.add, color: Colors.white, size: 29.0),
                  onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProducto()),
                );
                  },
                  splashRadius: 20.0, // Tamaño del efecto de clic
                  highlightColor:
                      Colors.transparent, // Color de resaltado al hacer clic
                ),
              ),
            ],
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ), // Espacio entre la barra de la aplicación y el TextField
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
                  color: Color.fromARGB(255, 255, 255, 255),
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
          SizedBox(
            height: 20.0,
          ), // Espacio entre el TextField y el contenido principal
          Expanded(
            child: ListView.builder(
              itemCount:
                  5, // Cambia el número de elementos que deseas mostrar (en este caso, 5)
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      bottom: 20.0), // Espacio entre los contenedores
                  child: FractionallySizedBox(
                    widthFactor: 0.85, // Ancho del contenedor blanco
                    alignment: Alignment.center,
                    child: Container(
                      height: 120.0,
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
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              // Ajusta el ancho de la imagen según tus necesidades
                              child: Image.network(
                                'https://static.wixstatic.com/media/7db22415215f441989089d84b9f9ef24.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Camilla de rayos X - FUJISS',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    customButton(
                                      'https://cdn.icon-icons.com/icons2/4053/PNG/512/eye_icon_257390.png',
                                      () {
                                        // Lógica para el primer botón
                                      },
                                      30.0, // Ancho de la imagen del primer botón
                                      30.0, // Alto de la imagen del primer botón
                                    ),
                                    SizedBox(width: 10.0),
                                    customButton(
                                      'https://cdn.icon-icons.com/icons2/4053/PNG/512/edit_icon_257366.png',
                                      () {
                                        // Lógica para el segundo botón
                                      },
                                      25.0, // Ancho de la imagen del segundo botón
                                      25.0, // Alto de la imagen del segundo botón
                                    ),
                                    SizedBox(width: 10.0),
                                    customButton(
                                      'https://cdn.icon-icons.com/icons2/4053/PNG/512/trush_square_icon_257909.png',
                                      () {
                                        // Lógica para el tercer botón
                                      },
                                      26.0, // Ancho de la imagen del tercer botón
                                      26.0, // Alto de la imagen del tercer botón
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
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
