import 'package:flutter/material.dart';
import 'package:music_player_ui/small_track_cover.dart';
import 'package:music_player_ui/top_track_list.dart';
import 'package:music_player_ui/track_data.dart';

class TrackTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: trackData.length,
          itemBuilder: (context, ind) {
            final track = trackData[ind];
            return TopTrackList(
              track: track,
            );
          }),
    );
  }
}
