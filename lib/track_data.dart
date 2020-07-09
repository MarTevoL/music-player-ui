class TrackData {
  TrackData(this.imageUrl, this.title, this.artist);
  final String imageUrl;
  final String title;
  final String artist;
}

List<TrackData> data = [
  TrackData('images/apparat_staystill.jpg', 'Stay Still', 'Apparat'),
  TrackData('images/fiebertraum.jpg', 'Fiebertraum', 'Apparat'),
  TrackData('images/jazzy_sessions.jpg', 'Jazzy Sessions', 'Mellowmatix'),
  TrackData('images/lianne_la_havas.jpg', 'Weird Fishes', 'Lianne La Havas'),
  TrackData('images/bjork.jpeg', 'Army of Me', 'bjork'),
  TrackData('images/MyOwnSouls.jpg', 'My Own Soul', 'The Killers'),
];
