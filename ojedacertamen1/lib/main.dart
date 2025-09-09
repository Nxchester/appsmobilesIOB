//Certamen 1 Desarrollo de aplicaciones moviles
//09/09/2025
//Ignacio Ojeda B
//Referencia - Imagen 5
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 7, 186, 240)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
          )
        )
      ),
    home: Scaffold(
       appBar: AppBar( //Top Bar
        leading: const Icon(Icons.menu), //menu icono
        title: const Text('Calificaciones del articulo'), //Titulo de la top bar
       ),
              body: ListView( //Vista de "listview"
                children:[

            const SizedBox(height:24.0), //espacio 24px

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

            const SizedBox(height:24.0), //espacio 24px

            Container( //4to Container - Puntuaciones
              height: 216, //altura 216px
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
            
             ListTile( //ListTile para boton de filtros
              title: const Text('Todo'),
              trailing: ElevatedButton(
                
                onPressed: () {},
                child: const Text('Los mas utiles')
              )
            ),
        
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
              child: const Text('cumple e seu papel, mas deixou a desejar em alguns detalhes, nada que deixe de valer a pena a compra. A luz de recarga fica coberta pela capinha, impossibilitando a visualizacao sem tirar parcialmente ou afastar a capinha da caixa do fone'),
            
 
            ),
///////////PROGRESS BAR!
          ]
        )
        ),
      );
  }
}