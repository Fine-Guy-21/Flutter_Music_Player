import 'package:flutter/material.dart';
import 'package:fine_music_player/model/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AlbumsContainer extends StatelessWidget {
  final bool isDarkMode;
  const AlbumsContainer({super.key, required this.isDarkMode});

  final int artistscount = 10;
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
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 0.8,
            ),
            itemCount: artistscount,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: appColors.primaryTextColor,
                )),
                child: GestureDetector(
                  onTap: () {},
                  child: _buildArtistsGrid(appColors),
                ),
              );
            })
        : Align(
            alignment: Alignment.center,
            child: Text('No Albums found '),
          );
  }

  Widget _buildArtistsGrid(AppColors color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        name == ""
            ? Container(
                padding: EdgeInsets.all(5),
                color: color.primaryTextColor,
                child: Icon(
                  MdiIcons.disc,
                  color: color.backgroundColor,
                  size: 80,
                ),
              )
            : Image.asset(name),
        Text(
          'Album Name,',
          style: TextStyle(fontSize: 16, color: color.primaryTextColor),
        ),
        Text(
          'Album Artist',
          style: TextStyle(
              fontSize: 13, color: color.primaryTextColor.withOpacity(0.8)),
        ),
      ],
    );
  }
}
