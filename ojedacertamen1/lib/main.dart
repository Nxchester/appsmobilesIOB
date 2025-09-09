//Certamen 1 Desarrollo de aplicaciones moviles
//09/09/2025
//Ignacio Ojeda B
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//Imagen 5
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
       appBar: AppBar( //Top Bar
        leading: const Icon(Icons.menu), //menu icono
        title: const Text('Calificaciones del articulo'), //Titulo de la top bar
       ),
              body: ListView( //Vista de "listview"
                children:[

            const SizedBox(height:8.0), //espacio 8px

            Container( //Primer container de rating general
              height: 25.0, //Altura de 75 px
              width: double.infinity, // Ancho completo
              color:Colors.transparent, //color transparente
              child: const Text('General')
            ),


            const SizedBox(height: 8.0), //Espacio entre containers de 8px

             Container( //Segundo container - ratings
              height: 45.0, //Altura de 75 px
              width: double.infinity, // Ancho completo
              color:Colors.amber, //color ambar para simular las estrellas de puntuacion.
              child: const Text('3.5 Estrellas')
            ),

            const SizedBox(height:8.0), //espacio 8px

                Container( //Tercer container informacion numerica
              height: 25.0, //Altura de 75 px
              width: double.infinity, // Ancho completo
              color:Colors.transparent, //color transparente
              
              child: const Text('46 Calificaciones')
            ),

            const SizedBox(height:12.0), //espacio 12px

            Container( //4to Container - Puntuaciones
              height: 148, //altura 148px
              width: double.infinity, //infinito ancho
              color: Colors.lightBlue, //color azul claro
              child: const Text(''),
            ),
            
             Container( //Aqui estoy simulando las separaciones, solucion temporal (en teoria)
              height: 2.0, //altura 2px
              width: double.infinity, //infinito ancho
              color: const Color.fromARGB(255, 207, 207, 207), //color azul claro
              child: const Text(''),
            ),

                Container( //Row para simular boton azul
              height: 45.0,
              color: Colors.transparent,
              child: Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                  ),
                  ),

                  const SizedBox(width: 0.0),
                  Expanded( //container row2
                  child: Container(
                    color: Colors.lightBlue,
                  ),
                  ),
                  
              ],
              )
            ),
            ////////////////////////PROGRESS BAR
     Container( //Aqui estoy simulando las separaciones, solucion temporal (en teoria)
              height: 2.0, //altura 2px
              width: double.infinity, //infinito ancho
              color: const Color.fromARGB(255, 207, 207, 207), //color azul claro
              child: const Text(''),
            ),

            ListTile( //ListTile para simular el switch
              title: const Text('Solo mostrar reseñas en mi idioma'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Switch')
              )
            ),

        Container( //Aqui estoy simulando las separaciones, solucion temporal (en teoria)
              height: 2.0, //altura 2px
              width: double.infinity, //infinito ancho
              color: const Color.fromARGB(255, 207, 207, 207), //color azul claro
              child: const Text(''),
            ),
            ListTile( //list tile para perfil de usuario
              leading: const CircleAvatar(
                backgroundColor: Colors.lightBlue, //circle avatar azul
              ),
              title: const Text('Murillo'), //nombre reseñador
            ),

            Container( //Container de texto
              height: 512, //altura 512px
              width: double.infinity, //infinito ancho
              color: Colors.transparent, //color azul claro
              child: const Text('cumple e seu papel'),
            ),
///////////PROGRESS BAR!
          ]
        )
        ),
      );
  }
}