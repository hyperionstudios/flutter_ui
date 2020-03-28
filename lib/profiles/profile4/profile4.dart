import 'package:flutter/material.dart';
import 'package:flutterui/profiles/profile4/profile.dart';
import 'package:flutterui/profiles/profile4/profile_provider.dart';

class Profile4 extends StatefulWidget {
  @override
  _Profile4State createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {
  Profile _profile = ProfileProvider.getProfile();
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500) , (){
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/profiles/profile4bg.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedOpacity(
              opacity: _visible ? 1 : 0,
              duration: Duration(milliseconds: 700),
              child: _bodyCard(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bodyCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _profileRow(context),
          ..._profileText(context),
          Spacer(
            flex: 2,
          ),
          _divider(context),
          _counters(context),
        ],
      ),
    );
  }

  Widget _divider(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

  static Color _textColor = Color(0xFF4e4e4e);

  TextStyle _bottomBarTitle = TextStyle(
    color: Colors.grey.shade400,
  );
  TextStyle _bottomBarCounter = TextStyle(
    color: _textColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  Widget _counters(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'FOLLOWERS',
                style: _bottomBarTitle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                _profile.followers.toString(),
                style: _bottomBarCounter,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'FOLLOWING',
                style: _bottomBarTitle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                _profile.following.toString(),
                style: _bottomBarCounter,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'FRIENDS',
                style: _bottomBarTitle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                _profile.friends.toString(),
                style: _bottomBarCounter,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _profileRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/shared/ahmad.png')),
              shape: BoxShape.circle,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: _textColor, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            color: Colors.transparent,
            child: Text('ADD FRIEND'),
          ),
          SizedBox(
            width: 16,
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            color: _textColor,
            child: Text(
              'FOLLOW',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _profileText(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsets.only(left: 16, bottom: 8),
        child: Text(
          _profile.user.name,
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 30, color: _textColor),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, bottom: 16),
        child: Text(
          _profile.user.profession,
          style: TextStyle(color: Colors.grey.shade400),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          _profile.user.about,
          style: TextStyle(
            color: _textColor,
            fontSize: 18,
            letterSpacing: 1.05,
          ),
        ),
      ),
    ];
  }
}
