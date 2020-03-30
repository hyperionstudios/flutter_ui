import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration4 extends StatefulWidget {
  @override
  _Registration4State createState() => _Registration4State();
}

class _Registration4State extends State<Registration4> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: CustomPaint(
        painter: Background(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Stack(
            children: <Widget>[
              _title(context),
              _profileImage(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileImage(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.28,
      top: MediaQuery.of(context).size.height * 0.17,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: ExactAssetImage('assets/shared/ahmad.png')),
            border: Border.all(color: Colors.white, width: 5)),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: <Widget>[
          Text(
            'Welcome back to',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            'BooStock',
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xFF06205D);
    canvas.drawPaint(paint);

    Path path2 = Path();
    path2.lineTo(0, 0);
    path2.lineTo(0, size.height * 0.3);
    path2.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width, size.height * 0.3);
    path2.lineTo(size.width, 0);
    path2.lineTo(0, 0);
    path2.close();
    paint.color = Color(0xFFE45600);
    canvas.drawPath(path2, paint);

    Path path1 = Path();
    path1.lineTo(0, 0);
    path1.lineTo(0, size.height * 0.16);
    path1.quadraticBezierTo(
        size.width * 0.5, size.height * 0.65, size.width, size.height * 0.16);
    path1.lineTo(size.width, 0);
    path1.lineTo(0, 0);
    path1.close();
    Gradient gradient1 = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFFD8B23), Color(0xFFF96213)],
        stops: [0.0, 0.4]);
    Rect rect1 = Rect.fromLTWH(0, 0, size.width, size.height);
    paint.shader = gradient1.createShader(rect1);
    canvas.drawPath(path1, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
