import 'package:flutter/material.dart';
import 'package:music_player_ui/player_page.dart';
import 'package:music_player_ui/small_track_cover.dart';
import 'package:music_player_ui/track_data.dart';

class TopTrackList extends StatelessWidget {
  const TopTrackList({
    Key key,
    this.track,
  }) : super(key: key);
  final TrackData track;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return PlayerPage(
            track: track,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            children: <Widget>[
              SmallTrackCover(
                imageUrl: track.imageUrl,
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
      ),
    );
  }
}
