import 'package:flutter/material.dart';
import 'package:music_player_ui/track_data.dart';

class StackCoverContainer extends StatelessWidget {
  final TrackData track;

  const StackCoverContainer({Key key, this.track}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 335,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                track.imageUrl,
                scale: 1.2,
                fit: BoxFit.none,
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  track.title,
                  style: TextStyle(fontSize: 22.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  track.artist,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
