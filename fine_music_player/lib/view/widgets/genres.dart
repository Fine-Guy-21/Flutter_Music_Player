import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class GenresContainer extends StatelessWidget {
  final bool isDarkMode;
  const GenresContainer({super.key, required this.isDarkMode});

  final String name = "";

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: _buildGenres(appColors),
        );
      },
    );
  }

  Widget _buildGenres(AppColors color) {
    return Container(
        decoration: BoxDecoration(
          color: color.backgroundColor,
        ),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        child: Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black38,
                    Colors.black26,
                    Colors.black12,
                    Colors.transparent,
                    Colors.transparent
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 5,
              child: Text(
                'Pop',
                style: TextStyle(
                  fontSize: 25,
                  color: color.primaryTextColor,
                ),
              ),
            ),
          ],
        ));
  }

  // Widget _buildtracks(AppColors color) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: color.backgroundColor,
  //     ),
  //     padding: EdgeInsets.all(10),
  //     margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
  //     child: Row(
  //       children: [
  //         // Image
  //         name == ""
  //             ? Container(
  //                 padding: EdgeInsets.all(10),
  //                 color: color.primaryTextColor,
  //                 child: Icon(
  //                   Icons.music_note,
  //                   color: color.backgroundColor,
  //                   size: 40,
  //                 ),
  //               )
  //             : Image.asset(
  //                 name,
  //                 width: 60,
  //                 height: 60,
  //               ),
  //         SizedBox(width: 10),

  //         // Title & Artist & file name
  //         Expanded(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               //Title
  //               Text(
  //                 'Title of the song',
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w500,
  //                   color: color.primaryTextColor,
  //                 ),
  //               ),

  //               // Artist name
  //               Text(
  //                 'Artist Name',
  //                 style: TextStyle(
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w300,
  //                   color: color.unchangableColor,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         //  Options icon
  //         IconButton(
  //           onPressed: () {},
  //           icon: Icon(
  //             Icons.more_vert,
  //             color: color.primaryTextColor,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
