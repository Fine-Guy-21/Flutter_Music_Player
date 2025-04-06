import 'package:fine_music_player/model/colors.dart';
import 'package:flutter/material.dart';

class ArtistsContainer extends StatelessWidget {
  final bool isDarkMode;
  const ArtistsContainer({super.key, required this.isDarkMode});

  final int artistscount = 40;
  final String name = "";
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isDarkMode);

    return artistscount > 0
        ? GridView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemCount: artistscount,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: _buildArtistsGrid(appColors),
              );
            })
        : Text('No Artists found ');
  }

  Widget _buildArtistsGrid(AppColors color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        name == ""
            ? Container(
                padding: EdgeInsets.all(10),
                color: color.primaryTextColor,
                child: Icon(
                  Icons.person,
                  color: color.backgroundColor,
                  size: 65,
                ),
              )
            : Image.asset(name),
        Text(
          'Artist Name,',
          style: TextStyle(fontSize: 16, color: color.primaryTextColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '10 tracks ',
              style: TextStyle(fontSize: 11, color: color.unchangableColor),
            ),
            Text(
              '2 albums',
              style: TextStyle(fontSize: 11, color: color.unchangableColor),
            ),
          ],
        )
      ],
    );
  }
}
