import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
       appBar: AppBar(
        leading: const Icon(Icons.menu), //menu icono
        title: const Text('Diagramacion'), //Titulo appbar
        actions: const [
          Icon(Icons.more_vert), //Icono morevert
        ]
  
       ),
              body: ListView(

                children:[

            Container( //Primer container
              height: 570.0, //Altura de 570px
              width: double.infinity, // Ancho completo
              color:Colors.blueGrey, //color de fondo bluegrey
              child: const Text('Tamaño card')
            ),


            const SizedBox(height: 12.0), //Espacio entre containers de 12px

            Container( //segundo container
              height: 148.0, //altura 148px
              width: double.infinity, //ancho completo.. again
              color: Colors.greenAccent, //Fondo Verde
              child: const Text('tamaño item list'), //texto en el segundo conteiner
            ),


            const SizedBox(height:12.0), //espacio 12px

            Container( //tercer container
              height: 148, //altura 148px
              width: double.infinity, //infinito ancho
              color: Colors.greenAccent,
              child: const Text('tercer container'),
            ),
             const SizedBox(height:12.0), //espacio 12px

            Container( //cuarto container
              height: 148, //altura 148px
              width: double.infinity, //infinito ancho
              color: Colors.greenAccent,
              child: const Text('cuarto container'),
            ),
            const SizedBox(height: 12.0), //espacio 12px

            Container( //container row1
              height: 148.0,
              color: Colors.transparent,
              child: Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                  ),
                  ),

                  const SizedBox(width: 12.0), //espacio 12px
                  Expanded( //container row2
                  child: Container(
                    color: Colors.amber,
                  ),
                  ),
                  
              ],
              )
            ),
            const SizedBox(height: 12.0), //espacio 12px

            Container( //container row1
              height: 148.0,
              color: Colors.transparent,
              child: Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                  ),
                  ),

                  const SizedBox(width: 12.0), //espacio 12px
                  Expanded( //container row2
                  child: Container(
                    color: Colors.amber,
                  ),
                  ),
                  
              ],
              )
            ),
          ]

          
        )
        ),
      );
  }
}