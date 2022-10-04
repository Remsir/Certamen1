import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:favorite_button/favorite_button.dart';

class ServicioScreen extends StatefulWidget {
  ServicioScreen({Key? key}) : super(key: key);

  @override
  State<ServicioScreen> createState() => _ServicioScreenState();
}

class _ServicioScreenState extends State<ServicioScreen> {
  int _contador = 0;
  int _color = 0xffC51818;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Imagen(image: 'assets/tatio.jpg'),
                  Descripcion(
                      text:
                          'Atacama 3 dias \n Transfer aeropuerto + 2 Tours \n Dia 1:Valle de la Luna  \n Dia 2: Geisers del Tatio \n \$ 120000 '),
                  Favorito(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Imagen(image: 'assets/Salar.jpg'),
                  Descripcion(
                      text:
                          'Atacama 2 dias \n Transfer aeropuerto + 1 Tours \n Dia 1:Salar de Uyuni \n \$ 80000 '),
                  Favorito(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Imagen(image: 'assets/lagunas.jpg'),
                  Descripcion(
                      text:
                          'Atacama 5 dias \n Transfer aeropuerto + 3 Tours \n Dia 1:Valle de la Luna  \n Dia 3: Geisers del Tatio \n Lagunas de Baltinache \n \$ 180000 '),
                  Favorito(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Imagen(image: 'assets/florido.jpeg'),
                  Descripcion(
                      text:
                          'Atacama 4 dias \n Recomendaciones: Desierto florido \n Geisers del tatio \n Lagunas de Baltinache \n \$ 140000'),
                  Favorito(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Container Favorito() {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              _incrementarContador();

              if (_contador > 10 && _contador <= 20) {
                _color = 0xffF5F919;
              }
              if (_contador > 20) {
                _color = 0xff19F919;
              }
              if (_contador <= 10) {
                _color = 0xffF94019;
              }
            },
            foregroundColor: Color(_color),
            tooltip: 'Increment',
            child: const Icon(MdiIcons.star),
          )
        ],
      ),
    );
  }

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }
}

class Imagen extends StatelessWidget {
  const Imagen({
    required this.image,
    Key? key,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        width: 150,
        image: AssetImage(this.image),
      ),
    );
  }
}

class Descripcion extends StatelessWidget {
  const Descripcion({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text,
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
