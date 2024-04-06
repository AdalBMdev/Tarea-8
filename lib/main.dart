import 'package:flutter/material.dart';
import 'registrar_evento_page.dart';
import 'lista_page.dart';
import 'acerca_de_page.dart';

// Realizado por Adalberto Banks Mendoza, matrícula 2022-0791
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestor de Eventos - PRM',
      theme: ThemeData(
        primaryColor: Colors.blue, 
        scaffoldBackgroundColor: Colors.white, 
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gestor de Eventos - PRM',
          style: TextStyle(color: Colors.white), 
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'Gestor de Eventos - PRM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200, 
            child: Center(
              child: Image.asset(
                'lib/assets/logo.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistrarEventoPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, 
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Agregar Evento',
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListaPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white, 
                    ),
                    child: Text(
                      'Lista de Eventos',
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AcercaDePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, 
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Acerca De',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
