import 'dart:typed_data';

import 'package:fine_music_player/model/track.dart';

class Album {
  int albumId = 1;
  String albumTitle = "Untitled Album";
  String albumArtist = "Unknown Artist";
  int year = 1970;
  Uint8List? albumArt;
  int numberOfTracks = 0;
  List<Track> albumTracks = [];
}
