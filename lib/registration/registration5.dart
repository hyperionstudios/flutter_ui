import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration5 extends StatefulWidget {
  @override
  _Registration5State createState() => _Registration5State();
}

class _Registration5State extends State<Registration5> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Background(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }
}

class Background extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Gradient gradient3 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0XFFE33F0A), Color(0XFFE6186E)],
      stops: [
        0.0,
        0.8,
      ],
    );
    Rect rect3 = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint3 = Paint();
    paint3.shader = gradient3.createShader(rect3);
    canvas.drawCircle(
      Offset(size.width - (size.width * 0.1), size.height * 0.1),
      500,
      paint3,
    );

    Gradient gradient2 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0XFFF06234), Color(0XFFFF65A5)],
      stops: [
        0.0,
        0.8,
      ],
    );
    Rect rect2 = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint2 = Paint();
    paint2.shader = gradient2.createShader(rect2);

    Path path2 = Path();
    Offset offset = Offset(size.width - (size.width * 0.1), size.height * 0.1);
    Offset(size.width - (size.width * 0.1) - 3, size.height * 0.1 - 3);
    Rect rect4 = Rect.fromCircle(center: offset, radius: 305);
    path2.addOval(rect4);
    canvas.drawShadow(path2, Colors.black.withOpacity(0.4), 6, true);

    canvas.drawCircle(
      Offset(size.width - (size.width * 0.1), size.height * 0.1),
      300,
      paint2,
    );

    Gradient gradient1 = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color(0XFFFF8A64), Color(0XFFFF65A5)],
      stops: [
        0.0,
        0.2,
      ],
    );
    Rect rect1 = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint1 = Paint();
    paint1.shader = gradient1.createShader(rect1);
    Path path = Path();
    Offset offset1 = Offset(size.width - (size.width * 0.1), size.height * 0.1);
    Offset offset2 =
        Offset(size.width - (size.width * 0.1) - 3, size.height * 0.1 - 3);
    Rect rect = Rect.fromCircle(center: offset2, radius: 155);
    path.addOval(rect);
    canvas.drawShadow(path, Colors.black.withOpacity(0.4), 6, true);
    canvas.drawCircle(
      offset1,
      150,
      paint1,
    );


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
