import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class TracksContainer extends StatelessWidget {
  final bool isDarkMode;
  const TracksContainer({super.key, required this.isDarkMode});
  final String name = "";

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: _buildtracks(appColors),
        );
      },
    );
  }

  Widget _buildtracks(AppColors color) {
    return Container(
      decoration: BoxDecoration(
        color: color.backgroundColor,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Row(
        children: [
          // Image
          name == ""
              ? Container(
                  padding: EdgeInsets.all(10),
                  color: color.primaryTextColor,
                  child: Icon(
                    Icons.music_note,
                    color: color.backgroundColor,
                    size: 40,
                  ),
                )
              : Image.asset(
                  name,
                  width: 60,
                  height: 60,
                ),
          SizedBox(width: 10),

          // Title & Artist & file name
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(
                  'Title of the song',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: color.primaryTextColor,
                  ),
                ),

                // Artist name
                Text(
                  'Artist Name',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: color.unchangableColor,
                  ),
                ),
              ],
            ),
          ),
          //  Options icon
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: color.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
