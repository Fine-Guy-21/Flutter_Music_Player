import 'dart:typed_data';

class Playlist {
  int playlistId = 1;
  String playlistName = "New Playlist";
  String? description;
  DateTime dateCreated = DateTime.now();
  DateTime lastModified = DateTime.now();
  Uint8List? playlistArt;
  List<int> trackIds = [];
}
