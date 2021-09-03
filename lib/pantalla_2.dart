import 'package:flutter/material.dart';

class Pantalla2 extends StatefulWidget {
  final String? message;
  Pantalla2({Key? key, @required this.message}) : super(key: key);

  @override
  _Pantalla2 createState() => _Pantalla2();
}

class _Pantalla2 extends State<Pantalla2> {
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Activity'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Mensaje: ${widget.message}'),
            Row(
              children: [
                Expanded(
                    child: TextField(
                        controller: textController,
                        decoration:
                            InputDecoration(labelText: 'Enter message here'))),
                TextButton(
                    onPressed: () {
                      // pop = cierra la pantalla en la que estoy
                      Navigator.of(context).pop(textController.text);
                    },
                    child: Text('Send')),
              ],
            ),
          ],
        ));
  }
}
