import 'package:flutter/material.dart';
import 'package:music_player_ui/track_data.dart';

class PopularListCard extends StatelessWidget {
  const PopularListCard({Key key, this.track}) : super(key: key);
  final TrackData track;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 156,
            height: 156,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                track.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            track.title,
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 6.0),
          Text(
            track.artist,
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
