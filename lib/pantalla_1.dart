import 'package:app_pase_parametros/pantalla_2.dart';
import 'package:flutter/material.dart';

class Pantalla1 extends StatefulWidget {
  Pantalla1({Key? key}) : super(key: key);

  @override
  _Pantalla1 createState() => _Pantalla1();
}

class _Pantalla1 extends State<Pantalla1> {
  // para sacar el valor del textField
  var textController = TextEditingController();
  String? messageReceived;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Two Activities'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Mensaje: ${messageReceived == null ? '' : messageReceived}'),
            Row(
              children: [
                Expanded(
                    child: TextField(
                        controller: textController,
                        decoration:
                            InputDecoration(labelText: 'Enter message here'))),
                TextButton(
                    onPressed: () async {
                      messageReceived = await Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  Pantalla2(message: textController.text)));
                      setState(() {
                        textController.clear();
                      });
                    },
                    child: Text('Send')),
              ],
            ),
          ],
        ));
  }
}
