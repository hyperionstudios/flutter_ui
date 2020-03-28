import 'package:flutter/material.dart';
import 'package:flutterui/profiles/profile5/profile.dart';

class Profile5 extends StatefulWidget {
  @override
  _Profile5State createState() => _Profile5State();
}

class _Profile5State extends State<Profile5>
    with SingleTickerProviderStateMixin {
  static Color _textColor = Color(0xFF4e4e4e);
  bool _visible = false;
  Profile _profile = ProfileProvider.profile();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: _textColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: _textColor,
            ),
          ),
        ],
      ),
      body: _bodyContent(context),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _profileDetails(context),
          Flexible(child: _tabBarContent(context)),
        ],
      ),
    );
  }

  Widget _profileDetails(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 125,
            height: 125,
            margin: EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/shared/ahmad.png'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              _profile.user.name,
              style: TextStyle(
                color: _textColor,
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              _profile.user.profession,
              style: TextStyle(
                color: Colors.grey.shade400,
              ),
            ),
          ),
          _followButton(context),
        ],
      ),
    );
  }

  Color _buttonColor = Color(0xFFf05522);

  Widget _followButton(BuildContext context) {
    return Align(
      child: MaterialButton(
          elevation: 0,
          color: _buttonColor,
          onPressed: () {},
          child: AnimatedPadding(
            duration: Duration(milliseconds: 400),
            padding: EdgeInsets.symmetric(
                horizontal: _visible ? 16 : 2, vertical: 8),
            child: Text(
              'FOLLOW',
              style: TextStyle(color: Colors.white),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          )),
    );
  }

  Widget _tabBarContent(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only( top: 6 ),
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.grey.shade200),
            bottom: BorderSide(color: Colors.grey.shade200),
          )),
          child: TabBar(
            unselectedLabelColor: Colors.grey.shade400,
            labelColor: _textColor,
            indicatorColor: _textColor,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 32),
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                text: 'PHOTOS',
              ),
              Tab(
                text: 'VIDEOS',
              ),
              Tab(
                text: 'POSTS',
              ),
              Tab(
                text: 'FRIENDS',
              ),
            ],
          ),
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              _photos(context),
              _videos(context),
              _posts(context),
              _friends(context),
            ],
          ),
        ),
      ],
    );
  }

  _photos(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.photos().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage( photo )
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
  }

  _videos(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.videos().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage( photo )
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
  }

  _posts(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.posts().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage( photo )
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
  }

  _friends(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.friends().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage( photo )
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
  }
}
