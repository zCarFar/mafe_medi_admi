import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mafe_medi_2/Widgets/CustomDrawer.dart';
import 'package:mafe_medi_2/Widgets/common_bottom_navigation.dart';

class AddProducto extends StatefulWidget {
  AddProducto();

  @override
  _AddProductoState createState() => _AddProductoState();
}

class _AddProductoState extends State<AddProducto> {
  PickedFile? _pickedImage;

  Widget customButton(
      String imageUrl, VoidCallback onPressed, double width, double height) {
    return InkWell(
      onTap: onPressed,
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
      ),
    );
  }

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  void _viewImage() {
    if (_pickedImage != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('Vista de la Imagen'),
            ),
            body: Center(
              child: Image.file(
                File(_pickedImage!.path),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    }
  }

  void _deleteImage() {
    setState(() {
      _pickedImage = null;
    });
  }

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
              colors: [
                Color.fromARGB(255, 3, 49, 119),
                Color.fromARGB(255, 61, 154, 231),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppBar(
                title: Text(
                  'Añade un Producto',
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 199, 199, 199),
                  blurRadius: 4.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                // Contenido de tu primer container
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Imagen con bordes redondeados
                    Expanded(
                      flex: 2,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          if (_pickedImage != null)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.file(
                                File(_pickedImage!.path),
                                width: 130,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            )
                          else
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://play-lh.googleusercontent.com/in7j13Ye5HSHRjAnR-hvMf7p1R5JzI3TNgcb4-Ic4pbpL8gwdxwFN6ZL1pdMLh83uT7e=s200',
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Añade una imagen',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),

                                  
                                  SizedBox(height: 4.0),
                                  Text(
                                    'para tu producto',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                customButton(
                                  'https://cdn.icon-icons.com/icons2/4053/PNG/512/arrow_square_up_icon_257129.png',
                                  _pickImage,
                                  40.0,
                                  40.0,
                                ),
                                SizedBox(width: 14.0),
                                customButton(
                                  'https://cdn.icon-icons.com/icons2/4053/PNG/512/eye_icon_257390.png',
                                  _viewImage,
                                  45.0,
                                  45.0,
                                ),
                                SizedBox(width: 14.0),
                                customButton(
                                  'https://cdn.icon-icons.com/icons2/4053/PNG/512/trush_square_icon_257909.png',
                                  _deleteImage,
                                  40.0,
                                  40.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 0.0),
              padding: EdgeInsets.all(20.0),
              width: 370, // Ajusta el ancho según tus necesidades
              height: 430,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 199, 199, 199),
                    blurRadius: 4.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [

                        // Agrega el TextField aquí
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Ingresa un valor',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Ajusta el radio de borde
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 12, // Ajusta el tamaño de fuente
                          ),
                        ),

                         TextField(
                          decoration: InputDecoration(
                            labelText: 'Ingresa un valor',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Ajusta el radio de borde
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 12, // Ajusta el tamaño de fuente
                          ),
                        ),

                         TextField(
                          decoration: InputDecoration(
                            labelText: 'Ingresa un valor',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Ajusta el radio de borde
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 12, // Ajusta el tamaño de fuente
                          ),
                        ),
                        // Otros elementos del ListView pueden ir aquí
                      ],
                    ),
                  ),
                  // Botón "Agregar" al centro inferior
                  SizedBox(height: 20), // Espacio entre elementos
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para agregar aquí
                    },
                    child: Text('Agregar'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CommonBottomNavigation(
        currentIndex: 1,
        onTabTapped: (index) {
          // Implementa la lógica deseada aquí
        },
      ),
      drawer: CustomDrawer(),
    );
  }
}
