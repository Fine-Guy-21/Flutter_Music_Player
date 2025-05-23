import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class FoldersContainer extends StatelessWidget {
  final bool isDarkMode;
  const FoldersContainer({super.key, required this.isDarkMode});

  final int folderswithtrackscount = 1;
  final int trackscount = 0;
  final String name = "";

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);

    return SingleChildScrollView(
      child: Column(
        children: [
          // path container
          Container(
            margin: EdgeInsets.all(0),
            height: 25,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
            ),
            child: Text(
              '/storage/emulated/0/',
              style: TextStyle(
                color: appColors.primaryTextColor,
              ),
            ),
          ),

          folderswithtrackscount > 0
              ? foldersView(appColors)
              : trackscount > 0
                  ? tracksView(appColors)
                  : SizedBox(
                      height: 100,
                      child: Center(
                        child: Text('No Audio Data'),
                      ),
                    ),
        ],
      ),
    );
  }

  Widget foldersView(AppColors color) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        color: color.backgroundColor,
        child: Row(
          children: <Widget>[
            // Image
            name == ""
                ? Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey.shade400,
                    child: Icon(
                      Icons.folder_copy_outlined,
                      color: Colors.black,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Text(
                    'Folder Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: color.primaryTextColor,
                    ),
                  ),

                  // Artist name
                  Text(
                    '199 tracks',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: color.primaryTextColor,
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
      ),
    );
  }

  Widget tracksView(AppColors color) {
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

//
}
