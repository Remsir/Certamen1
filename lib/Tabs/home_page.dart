import 'package:disquera/Clases/Expander.dart';
import 'package:disquera/Screen/contacto.dart';
import 'package:disquera/Screen/home_screen.dart';
import 'package:disquera/Screen/servicio_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeTab extends StatelessWidget {
  final styleTextRow = new TextStyle(fontSize: 32, color: Colors.red);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text(
                  "C1 DAM020-2022-2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text('Miguel Suarez',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            leading: Icon(Icons.airplanemode_on_sharp),
            backgroundColor: Color(0xffe4dcc4),
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Inicio',
                  icon: Icon(MdiIcons.home),
                ),
                Tab(
                  text: 'Biblioteca',
                  icon: Icon(Icons.my_library_music_sharp),
                ),
                Tab(
                  text: 'Servicios',
                  icon: Icon(Icons.airplane_ticket_outlined),
                ),
                Tab(
                  text: 'Contacto',
                  icon: Icon(Icons.contact_mail_outlined),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            HomeScreen(),
            ExpanderSpacerPage(),
            ServicioScreen(),
            ContactoScreen(),
          ]),
        ),
      ),
    );
  }
}
