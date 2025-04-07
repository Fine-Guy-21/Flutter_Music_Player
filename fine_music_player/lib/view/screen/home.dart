import 'package:fine_music_player/model/colors.dart';
import 'package:fine_music_player/view/widgets/albums.dart';
import 'package:fine_music_player/view/widgets/artists.dart';
import 'package:fine_music_player/view/widgets/folders.dart';
import 'package:fine_music_player/view/widgets/genres.dart';
import 'package:fine_music_player/view/widgets/mostplayed.dart';
import 'package:fine_music_player/view/widgets/playlists.dart';
import 'package:fine_music_player/view/widgets/playnow.dart';
import 'package:fine_music_player/view/widgets/tracks.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool isdarkmode = false;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors(isdarkmode);
    return Scaffold(
      backgroundColor: appColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //menu item
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 20,
            color: appColors.primaryTextColor.withOpacity(0.5),
          ),
        ),
        // title
        title: Text(
          'Library',
          style: TextStyle(
            fontFamily: 'Lato-Bold',
            fontWeight: FontWeight.w400,
            fontSize: 27,
            color: appColors.primaryTextColor,
          ),
        ),
        // actions
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: appColors.primaryTextColor)),
          IconButton(
              onPressed: () {
                setState(() {
                  isdarkmode = !isdarkmode;
                });
              },
              icon: Icon(
                Icons.more_vert,
                color: appColors.primaryTextColor,
              )),
        ],
        // tabbar
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Tab View
            _buildTabBar(),

            // Musics List
            Expanded(
              child: _buildTabView(),
            ),

            // Playback controls
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    AppColors appColors = AppColors(isdarkmode);
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      padding: EdgeInsets.symmetric(horizontal: 5),
      labelPadding: EdgeInsets.symmetric(horizontal: 15),
      labelColor: appColors.primaryTextColor,
      unselectedLabelColor: Colors.grey,
      indicatorColor: appColors.primaryTextColor,
      tabAlignment: TabAlignment.start,
      tabs: const [
        Tab(text: 'PLAY NOW'),
        Tab(text: 'TRACKS'),
        Tab(text: 'FOLDERS'),
        Tab(text: 'PLAYLIST'),
        Tab(text: 'ARTISTS'),
        Tab(text: 'ALBUMS'),
        Tab(text: 'GENRES'),
        Tab(text: 'MOST PLAYED'),
      ],
    );
  }

  Widget _buildTabView() {
    return TabBarView(
      controller: _tabController,
      children: [
        PlayNowContainers(),
        TracksContainer(isDarkMode: isdarkmode),
        FoldersContainer(isDarkMode: isdarkmode),
        PlaylistsContainer(isDarkMode: isdarkmode),
        ArtistsContainer(isDarkMode: isdarkmode),
        AlbumsContainer(isDarkMode: isdarkmode),
        GenresContainer(),
        MostplayedContainer(),
      ],
    );
  }
//
}
