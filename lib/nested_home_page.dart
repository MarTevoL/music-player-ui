import 'package:flutter/material.dart';
import 'package:music_player_ui/overview_tab_view.dart';
import 'package:music_player_ui/tab_title.dart';
import 'package:music_player_ui/track_tab_view.dart';

class NestedHomePage extends StatefulWidget {
  @override
  _NestedHomePageState createState() => _NestedHomePageState();
}

class _NestedHomePageState extends State<NestedHomePage>
    with TickerProviderStateMixin {
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
    return Material(
      color: Color(0xff1A232E),
      child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              titleSpacing: 10.0,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Discover',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.search),
                )
              ],
              expandedHeight: 120.0,
              floating: true,
              pinned: false,
              backgroundColor: Color(0xff1A232E),
              bottom: TabBar(
                labelPadding: EdgeInsets.fromLTRB(20.0, 26.0, 10.0, 12.0),
                indicatorPadding: EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 12.0),
                indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.pinkAccent[200]),
                  insets: EdgeInsets.fromLTRB(20.0, 12.0, 10.0, 0.0),
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
            )
          ];
        },
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          children: [
            OverviewTabView(),
            OverviewTabView(),
            TrackTabView(),
            OverviewTabView(),
            OverviewTabView(),
            OverviewTabView(),
          ],
        ),
      ),
    );
  }
}
