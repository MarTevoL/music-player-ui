class TrackData {
  TrackData(this.imageUrl, this.title, this.artist, this.duration);
  final String imageUrl;
  final String title;
  final String artist;
  final String duration;
}

List<TrackData> data = [
  TrackData('images/apparat_staystill.jpg', 'Stay Still', 'Apparat', '3:48'),
  TrackData('images/fiebertraum.jpg', 'Fiebertraum', 'Apparat', '3:20'),
  TrackData(
      'images/jazzy_sessions.jpg', 'Jazzy Sessions', 'Mellowmatix', '4:08'),
  TrackData(
      'images/lianne_la_havas.jpg', 'Weird Fishes', 'Lianne La Havas', '3:50'),
  TrackData('images/bjork.jpeg', 'Army of Me', 'bjork', '3:18'),
  TrackData('images/MyOwnSouls.jpg', 'My Own Soul', 'The Killers', '3:28'),
];
