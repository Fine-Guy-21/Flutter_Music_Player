import 'dart:typed_data';

class Track {
  int trackid = 1;
  String trackTitle = "";
  String trackArtist = "Unknown Artist";
  String genre = "";
  String trackPath = "";
  Duration trackDuration = Duration.zero;
  int playCount = 0;
  bool isFavorite = false;
  int rating = 0;
  int trackplayed = 0;
  DateTime dateAdded = DateTime.now();
  Uint8List? trackAlbumArt;
}
