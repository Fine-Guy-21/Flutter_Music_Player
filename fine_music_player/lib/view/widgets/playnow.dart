import 'package:flutter/material.dart';

class PlayNowContainers extends StatelessWidget {
  final bool isDarkMode;
  const PlayNowContainers({super.key, required this.isDarkMode});
  final String name = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text('Play Now'),
      ),
    );
  }
}


// Recently Added
// Most Played
// Recently Played
// Top Rated 
// Never Played
// Favorites 
