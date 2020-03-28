import 'package:flutter/material.dart';
import 'package:flutterui/chat/chat1/conversion.dart';
import 'package:flutterui/chat/chat1/tabs/inbox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'message_provider.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> with SingleTickerProviderStateMixin {
  List<Conversion> _converstations = MessageProvider.getConversations();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey.shade100,
          ),
          CustomPaint(
            painter: ChartBackground(),
            size: Size(double.infinity, double.infinity),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                'MESSAGES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2
                ),
              ),
              leading: IconButton(
                onPressed: (){},
                icon: Icon( Icons.chevron_left , size: 44, ),
              ),
              bottom: TabBar(
                unselectedLabelColor: Color(0xFFf76aa4),
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(),
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                    text: 'Inbox',
                  ),
                  Tab(
                    text: 'Groups',
                  ),
                  Tab(
                    text: 'Online(25)',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ConversationList(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ChartBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rec = Rect.fromLTWH(0, 0, size.width, size.height * 0.65);
    Gradient gradient = LinearGradient(colors: [
      Color(0xFFef1385),
      Color(0xFFf12280),
      Color(0XFFf63d76),
      Color(0xFFf84f70),
    ], stops: [
      0.2,
      0.4,
      0.6,
      0.8
    ]);
    Paint paint = Paint();
    paint.shader = gradient.createShader(rec);
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.65, 0, size.height * 0.3);
    path.lineTo(0, size.height * 0.3);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
