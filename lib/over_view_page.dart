import 'package:flutter/material.dart';

class OverViewPage extends StatefulWidget {
  @override
  _OverViewPageState createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage>
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
                    labelPadding: EdgeInsets.all(12.0),
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
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _controller,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                            ),
                          ),
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

class TabTitle extends StatelessWidget {
  const TabTitle(
    this.title,
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
