import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class PlayNowContainers extends StatelessWidget {
  final bool isDarkMode;
  const PlayNowContainers({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildDoubleGrid('RECENTLY ADDED', appColors),
          const SizedBox(height: 10),
          _buildMiniGrid('RECENTLY PLAYED', appColors),
          const SizedBox(height: 10),
          _buildMiniGrid('TOP RATED', appColors),
          const SizedBox(height: 10),
          _buildMiniGrid('NEVER PLAYED', appColors),
          const SizedBox(height: 10),
          _buildMiniGrid('FAVORITES', appColors),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDoubleGrid(String title, AppColors color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: color.primaryTextColor,
              ),
            ),
          ),
          SizedBox(
            height: 305, // Fixed height to constrain the GridView
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                return _buildSongItem(color);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMiniGrid(String title, AppColors color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 150, // Fixed height to constrain the GridView
            child: GridView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling
              padding: const EdgeInsets.all(8),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return _buildSongItem(color);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                _buildButton(Icons.play_arrow, 'Play', color.unchangableColor),
                _buildButton(Icons.shuffle, 'Shuffle', color.unchangableColor),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSongItem(AppColors color) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity * 0.8,
                color: Colors.grey.shade400,
                child: const Icon(Icons.music_note, size: 70),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Song Title",
              style: TextStyle(
                fontSize: 12,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(IconData icon, String text, Color color) {
    return Expanded(
      child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 8), // Reduced from 20 for better spacing
              Text(text, style: TextStyle(color: color)),
            ],
          ),
        ),
      ),
    );
  }

  //
}

/* 
Recently Added
Recently Played
Top Rated 
Never Played
Favorites  
*/


/*
final response = await http.get(
  Uri.parse('https://itunes.apple.com/search?term=ARTIST+TITLE&entity=song&limit=1'),
); */