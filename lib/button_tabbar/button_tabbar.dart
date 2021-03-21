import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test/screens/bookmark.dart';
import 'package:ui_test/screens/community.dart';
import 'package:ui_test/screens/dashboard.dart';
import 'package:ui_test/screens/discover.dart';
import 'package:ui_test/screens/setting.dart';
import 'package:ui_test/utils/app_colors.dart';

class ButtonTabBar extends StatefulWidget {
  @override
  _ButtonTabBarState createState() => _ButtonTabBarState();
}

class _ButtonTabBarState extends State<ButtonTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  String photoUrl;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Dashboard(),
          DiscoverPage(),
          CommunityPage(),
          BookMarkPage(),
          SettingPage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(0xff, 241, 241, 254),
          boxShadow: [
            new BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: TabBar(
          isScrollable: false,
          physics: BouncingScrollPhysics(),
          controller: _tabController,
          labelColor: Color.fromRGBO(26, 52, 98, .87),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          indicatorPadding: EdgeInsets.only(bottom: 5),
          indicatorColor: Color.fromRGBO(26, 52, 98, .87),
          unselectedLabelColor: AppColors.tabbarIconColor,
          labelPadding: EdgeInsets.all(2),
          labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          unselectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          tabs: [
            Tab(
              icon: Icon(
                MdiIcons.viewGrid,
                size: 25,
                color: AppColors.tabbarIconColor,
              ),
              text: "Application",
            ),
            Tab(
              icon: Icon(
                MdiIcons.compass,
                size: 25,
                color: AppColors.tabbarIconColor,
              ),
              text: "Discover",
            ),
            Tab(
              icon: Icon(
                MdiIcons.commentMultiple,
                size: 25,
                color: AppColors.tabbarIconColor,
              ),
              text: "Community",
            ),
            Tab(
              icon: Icon(
                MdiIcons.bookmarkMultiple,
                size: 25,
                color: AppColors.tabbarIconColor,
              ),
              text: "Bookmarks",
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                size: 25,
                color: AppColors.tabbarIconColor,
              ),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
