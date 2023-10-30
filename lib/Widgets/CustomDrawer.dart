import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(33, 47, 250, 1),
                    Color.fromRGBO(69, 153, 248, 1),
                    Color.fromARGB(255, 50, 173, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: EdgeInsets.all(14.0),
              height: 180.0,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.icon-icons.com/icons2/582/PNG/512/king_icon-icons.com_55042.png"),
                    radius: 40.0,
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Carlo Gabriel Farfan Nuñez",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          "carlo.farfan@upeu.edu.pe",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          "Administrador",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 250, 250),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height:
                    20.0), // Espaciador entre la parte superior y los botones
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(
                          left: 18.0), // Ajusta el valor según tu preferencia
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/3413/PNG/512/home_icon_217777.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(
                          left: 27.0), // Ajusta el valor según tu preferencia
                      child: Text(
                        "Inicio",
                        style: TextStyle(
                          fontSize:
                              18.0, // Ajusta el tamaño del texto según tu preferencia
                        ),
                      ),
                    ),
                    onTap: () {
                      // Agrega aquí la acción cuando se presione el botón "Inicio"
                    },
                  ),
                  // Copia el botón de "Inicio" con su imagen y texto aquí
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/3413/PNG/512/keyframes_icon_217604.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Text(
                        "Categorias",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Agrega aquí la acción cuando se presione el botón "Inicio"
                    },
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 19.0),
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/3413/PNG/512/docs_google_icon_217714.png",
                        width: 38,
                        height: 38,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 31.0),
                      child: Text(
                        "Inventario",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Agrega aquí la acción cuando se presione el botón "Inicio"
                    },
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/2716/PNG/512/cube_icon_173215.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Text(
                        "Productos",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Agrega aquí la acción cuando se presione el botón "Inicio"
                    },
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/3413/PNG/512/user_home_icon_217597.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Text(
                        "Cuenta",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Agrega aquí la acción cuando se presione el botón "Inicio"
                    },
                  ),
                  SizedBox(
                    height: 20, // Ajusta la altura según la separación deseada
                  ),
                  Divider(
                    thickness:
                        2, // Ajusta el grosor de la línea según tus preferencias
                    color: Color.fromARGB(255, 0, 0,
                        0), // Cambia el color de la línea si es necesario
                    indent: 30, // Ajusta la sangría izquierda de la línea
                    endIndent: 30, // Ajusta la sangría derecha de la línea
                  ),
                  SizedBox(
                    height: 20, // Espaciado debajo de la línea
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(left: 22.0),
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/3791/PNG/512/door_direction_arrow_out_log_exit_icon_232679.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 22.0),
                      child: Text(
                        "Cerrar Sesión",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Agrega aquí la acción cuando se presione el botón "Inicio"
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
