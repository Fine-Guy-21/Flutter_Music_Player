import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistsContainer extends StatelessWidget {
  final bool isDarkMode;
  PlaylistsContainer({super.key, required this.isDarkMode});

  String name = "";
  int playlistscount = 0;
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (playlistscount > 0) _displayPlaylists(appColors),
        // Create Empty playlist
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'CREATE EMPTY PLAYLIST',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )),
          ),
        ),
        // Import playlist
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: TextButton(
                onPressed: () {},
                child: Text('IMPORT',
                    style: TextStyle(
                      fontSize: 15,
                    ))),
          ),
        ),
      ],
    ));
  }

  _displayPlaylists(AppColors color) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black12,
        child: Row(
          children: [
            // Image
            name == ""
                ? Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.black,
                    child: Icon(
                      Icons.playlist_play,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                : Image.asset(
                    name,
                    width: 90,
                    height: 90,
                  ),
            SizedBox(width: 10),

            // Title & Artist & file name
            Column(
              children: [
                //Title
                Text(
                  ' My Playlist',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: color.primaryTextColor,
                  ),
                ),

                // Artist name
                Text(
                  '0 tracks',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: color.primaryTextColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            //  Options icon
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
