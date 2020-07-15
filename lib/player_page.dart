import 'package:flutter/material.dart';
import 'package:music_player_ui/track_data.dart';
import 'package:music_player_ui/wave_form.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key key, this.track}) : super(key: key);
  final TrackData track;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A232E),
      appBar: AppBar(
        backgroundColor: Color(0xff1A232E),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0), child: Icon(Icons.tune))
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(track.imageUrl),
                radius: 128.0,
              ),
            ),
          ),
          SizedBox(height: 60.0),
          Text(
            track.title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Text(
            track.artist,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0),
            height: 80.0,
            child: WaveForm(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('0:00'),
                Text(track.duration),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.shuffle,
                  color: Colors.pinkAccent,
                  size: 30.0,
                ),
                Icon(
                  Icons.skip_previous,
                  color: Colors.pinkAccent,
                  size: 30.0,
                ),
                Icon(
                  Icons.play_circle_filled,
                  color: Colors.pinkAccent,
                  size: 58.0,
                ),
                Icon(
                  Icons.skip_next,
                  color: Colors.pinkAccent,
                  size: 30.0,
                ),
                Icon(
                  Icons.repeat,
                  color: Colors.pinkAccent,
                  size: 30.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
