import 'package:canvas1/modelos.dart';
import 'package:flutter/material.dart';

class Punto extends CustomPainter{
  double x, y, radio;

  Punto(this.x, this.y, this.radio);

  @override
  void paint(Canvas canvas, Size size) {
    Paint lapiz = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5
        ..color = Colors.black;

    Paint pintura = Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.amber;

    canvas.drawCircle(Offset(x, y), radio, pintura); // relleno
    canvas.drawCircle(Offset(x, y), radio, lapiz);   // trazo
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Recta extends CustomPainter{
  double x1, y1, x2, y2;

  Recta(this.x1, this.y1, this.x2, this.y2);

  @override
  void paint(Canvas canvas, Size size) {
    Paint lapiz = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..color = Colors.black;

    Paint pintura = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.amber;

    canvas.drawLine(Offset(x1, y1), Offset(x2, y2), lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class Recta2 extends CustomPainter{
  List<ModeloRecta> vRecta;

  Recta2(this.vRecta);

  @override
  void paint(Canvas canvas, Size size) {
    Paint lapiz = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..color = Colors.black;

    Paint pintura = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.amber;

    for(var recta in vRecta) {
      canvas.drawLine(Offset(recta.x1, recta.y1), Offset(recta.x2, recta.y2), lapiz);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}