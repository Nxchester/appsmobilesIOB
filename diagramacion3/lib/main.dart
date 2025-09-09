import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          leading: const Icon(Icons.menu), //menu icon
          title: const Text('Diagramacion'),
          actions: const [
            Icon(Icons.more_vert),
          ]
        ),
        body: ListView(
          children: [
            //itemlist de 20 items
            for (var i = 1; 1 <= 10; i++)
             ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: const Text('Item'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Accion!')
              )
            ),
            const SizedBox(height: 12.0),
          ]
        )
      ),
      );
  }
}

