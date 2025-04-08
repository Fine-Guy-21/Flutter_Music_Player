import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class MostplayedContainer extends StatelessWidget {
  final bool isDarkMode;
  const MostplayedContainer({super.key, required this.isDarkMode});

  final String name = "";

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);
    int played = 28;

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        played -= 2;
        return GestureDetector(
          onTap: () {},
          child: _buildtracks(appColors, index + 1, played),
        );
      },
    );
  }

  Widget _buildtracks(AppColors color, int index, int played) {
    return Container(
      decoration: BoxDecoration(
        color: color.backgroundColor,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$index',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: color.primaryTextColor,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          // Image
          name == ""
              ? Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey.shade400,
                  child: Icon(
                    Icons.music_note,
                    color: Colors.black,
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
          Text(
            '$played',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: color.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
