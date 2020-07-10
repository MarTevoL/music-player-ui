import 'package:flutter/material.dart';
import 'package:music_player_ui/popular_list_card.dart';
import 'package:music_player_ui/stack_cover_container.dart';
import 'package:music_player_ui/track_data.dart';

class OverviewTabView extends StatelessWidget {
  const OverviewTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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

class TopTrackList extends StatelessWidget {
  const TopTrackList({
    Key key,
    this.track,
  }) : super(key: key);
  final TrackData track;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 62,
              height: 62,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  track.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          track.title,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          track.artist,
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Text(
                      track.duration,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
