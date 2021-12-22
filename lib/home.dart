import 'package:canvas1/modelos.dart';

import 'figuras.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ModeloRecta> vRecta;

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    vRecta = [ModeloRecta(0, 0, screen.width, screen.height), ModeloRecta(screen.width, 0, 0, screen.height), ModeloRecta(screen.width/2, 0, screen.width/2, screen.height), ModeloRecta(0, screen.height/2, screen.width, screen.height/2)];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            //CustomPaint(painter: Punto(180, 200, 100)),
            CustomPaint(painter: Punto(screen.width/2, screen.height/2, screen.width/4)), // medio
            //CustomPaint(painter: Recta(0, 0, 100, 100),),
            /*
            PRIMERA OPCION
            CustomPaint(painter: Recta(0, 0, screen.width, screen.height)),
            CustomPaint(painter: Recta(screen.width, 0, 0, screen.height)),
            CustomPaint(painter: Recta(screen.width/2, 0, screen.width/2, screen.height)),
            CustomPaint(painter: Recta(0, screen.height/2, screen.width, screen.height/2)),
            */

            // Optimizada
            CustomPaint(painter: Recta2(vRecta),)
          ],
        ),
      ),
    );
  }
}
