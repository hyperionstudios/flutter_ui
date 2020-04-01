import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration6 extends StatefulWidget {
  @override
  _Registration6State createState() => _Registration6State();
}

class _Registration6State extends State<Registration6> {
  OutlineInputBorder _inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 0),
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  );

  TextStyle _hintStyle = TextStyle(
    color: Color(0xFF5F6262),
  );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/registration/waves_bg.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ..._titles(context),
                Padding(
                  padding: EdgeInsets.all(42),
                  child: Form(
                    child: Column(
                      children: _form(context),
                    ),
                  ),
                ),
                _notes(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _form(BuildContext context) {
    return [
      TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: 'email@address.com',
          hintStyle: _hintStyle,
          prefixIcon: Icon(
            Icons.alternate_email,
            color: Colors.white,
          ),
          prefixStyle: TextStyle(
            color: Color(0xFFEAF5F7),
          ),
          fillColor: Color(0xFF181819),
          border: _inputBorder,
          focusedBorder: _inputBorder,
          disabledBorder: _inputBorder,
          enabledBorder: _inputBorder,
          filled: true,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        obscureText: true,
        decoration: InputDecoration(
          prefixStyle: TextStyle(
            color: Color(0xFFEAF5F7),
          ),
          hintText: '* * * * * * * * * ',
          hintStyle: _hintStyle,
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFFEAF5F7),
          ),
          fillColor: Color(0xFF181819),
          border: _inputBorder,
          focusedBorder: _inputBorder,
          disabledBorder: _inputBorder,
          enabledBorder: _inputBorder,
          filled: true,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            color: Color(0xFFFB564B),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: InkWell(
          onTap: () {},
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> _titles(BuildContext context) {
    return [
      Text(
        'Welcome back to',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.1,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text(
              'Flutter',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEB4137),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 32),
            child: Text(
              'Marathon',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFA810),
              ),
            ),
          ),
        ],
      ),
    ];
  }

  Widget _notes(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.white),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Create One',
            style: TextStyle(
              color: Color(0xFF2273D7),
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
