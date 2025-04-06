import 'package:flutter/material.dart';

class PlaylistsContainer extends StatelessWidget {
  const PlaylistsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text('Playlists'),
      ),
    );
  }
}
