import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class PlaylistsContainer extends StatelessWidget {
  final bool isDarkMode;
  const PlaylistsContainer({super.key, required this.isDarkMode});

  final String name = "";
  final int playlistscount = 9;

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);

    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        // Playlist items
        if (playlistscount > 0)
          ...List.generate(playlistscount, (index) {
            return _displayPlaylists(appColors, index);
          })
        else
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'No playlists found',
                style: TextStyle(color: appColors.primaryTextColor),
              ),
            ),
          ),

        // Create and Import buttons (appear after last playlist)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              // Create Empty playlist
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'CREATE EMPTY PLAYLIST',
                      style: TextStyle(
                        fontSize: 15,
                        color: appColors.primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),

              // Import playlist
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'IMPORT',
                      style: TextStyle(
                        fontSize: 15,
                        color: appColors.primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _displayPlaylists(AppColors color, int index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: color.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // Playlist cover
            name.isEmpty
                ? Container(
                    padding: EdgeInsets.all(10),
                    color: color.primaryTextColor,
                    child: Icon(
                      Icons.playlist_play,
                      color: color.backgroundColor,
                      size: 40,
                    ),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      name,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),

            const SizedBox(width: 12),

            // Playlist info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Playlist name
                  Text(
                    'Playlist ${index + 1}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: color.primaryTextColor,
                    ),
                  ),

                  // Track count
                  Text(
                    '${index * 3} tracks',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: color.primaryTextColor.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),

            // Options button
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: color.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
