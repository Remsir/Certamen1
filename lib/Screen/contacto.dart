import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactoScreen extends StatefulWidget {
  ContactoScreen({Key? key}) : super(key: key);

  @override
  State<ContactoScreen> createState() => _ContactoScreenState();
}

final _controller3 = TextEditingController();
final _controller2 = TextEditingController();
final _controller1 = TextEditingController();
int aux = 1;

class _ContactoScreenState extends State<ContactoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller1,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Edad',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                  keyboardType: TextInputType.number,
                  controller: _controller2,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Fecha',
                      labelStyle: TextStyle(color: Colors.blue.shade700),
                      border: InputBorder.none),
                  keyboardType: TextInputType.datetime,
                  controller: _controller3,
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Agregar'),
                  onPressed: () {
                    if (_controller3.value.text.isEmpty ||
                        _controller2.value.text.isEmpty ||
                        _controller1.value.text.isEmpty) {
                      confirmDialog(context);
                      return;
                    }
                    aux = int.parse(_controller2.value.text);
                    if (aux == 0) {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Edad debe ser mayor a 0'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () =>
                                        Navigator.pop(context, true),
                                    child: Text('Ok'))
                              ],
                            );
                          });
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> confirmDialog(context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Ingrese todos los datos'),
            content: Text('Debe llenar todos los campos'),
            actions: [
              ElevatedButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text('Ok'))
            ],
          );
        });
  }
}
