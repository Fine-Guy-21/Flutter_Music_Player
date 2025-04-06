import 'package:fine_music_player/model/track.dart';
import 'package:fine_music_player/model/album.dart';

class Artist {
  int artistId = 1;
  String artistName = "Unknown Artist";
  int numberOfAlbums = 0;
  int numberOfTracks = 0;
  List<Track> artistTracks = [];
  List<Album> artistAlbums = [];
}
