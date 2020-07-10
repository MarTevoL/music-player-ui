import 'package:flutter/material.dart';
import 'package:music_player_ui/popular_list_card.dart';
import 'package:music_player_ui/stack_cover_container.dart';
import 'package:music_player_ui/top_track_list.dart';
import 'package:music_player_ui/track_data.dart';

class OverviewTabView extends StatelessWidget {
  const OverviewTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withAlpha(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    for (int i = 0; i < data.length; i++)
                      StackCoverContainer(
                        track: data[i],
                      ),
                  ],
                ),
              ),
            ),
            _buildSectionTitle('Popular this week'),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    for (int i = 0; i < data.length; i++)
                      PopularListCard(track: data[i]),
                  ],
                ),
              ),
            ),
            _buildSectionTitle('Top tracks'),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    for (int i = 0; i < data.length; i++)
                      TopTrackList(
                        track: data[i],
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 28.0, 0.0, 20.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
