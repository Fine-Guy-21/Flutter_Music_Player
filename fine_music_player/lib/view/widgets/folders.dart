import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class FoldersContainer extends StatelessWidget {
  final bool isDarkMode;
  const FoldersContainer({super.key, required this.isDarkMode});

  final int foldercount = 0;
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

          foldercount >= 0 ? foldersView(appColors) : tracksView(),
        ],
      ),
    );
  }

  Widget foldersView(AppColors color) {
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
                      Icons.folder_copy_outlined,
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

  Widget tracksView() {
    return Container();
  }
}
