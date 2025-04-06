import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class TracksContainer extends StatelessWidget {
  final bool isDarkMode;
  const TracksContainer({super.key, required this.isDarkMode});
  final String name = "";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: _buildtracks(),
        );
      },
    );
  }

  Widget _buildtracks() {
    AppColors appColors = AppColors(isDarkMode);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: appColors.primaryTextColor,
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Row(
        children: [
          // Image
          name == ""
              ? Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Icon(
                    Icons.music_note,
                    color: Colors.white,
                  ),
                )
              : Image.asset(
                  name,
                  width: 60,
                  height: 60,
                ),
          SizedBox(width: 10),

          // Title & Artist & file name
          Column(
            children: [
              //Title
              Text(
                'Title of the song',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Artist name
              Text(
                'Artist Name',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
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
    );
  }
}
