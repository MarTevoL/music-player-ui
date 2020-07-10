import 'package:flutter/material.dart';
import 'package:music_player_ui/overview_tab_view.dart';
import 'package:music_player_ui/tab_title.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A232E),
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Discover',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 32.0,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  TabBar(
                    labelPadding: EdgeInsets.fromLTRB(20.0, 26.0, 0.0, 12.0),
                    indicatorPadding:
                        EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 12.0),
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.pinkAccent[200]),
                      insets: EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 0.0),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: _controller,
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withAlpha(80),
                    tabs: [
                      TabTitle('Overview'),
                      TabTitle('Genres'),
                      TabTitle('Tracks'),
                      TabTitle('Albums'),
                      TabTitle('Playlist'),
                      TabTitle('User'),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 28.0),
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _controller,
                        children: [
                          OverviewTabView(),
                          OverviewTabView(),
                          OverviewTabView(),
                          OverviewTabView(),
                          OverviewTabView(),
                          OverviewTabView(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
