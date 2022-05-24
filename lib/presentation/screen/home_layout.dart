import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_project/constants/colors.dart';
import 'package:odc_project/presentation/screen/home_page.dart';
import 'package:odc_project/presentation/screen/my_courses.dart';
import 'package:odc_project/presentation/screen/my_profile.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);

  var controller = TextEditingController();

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      MyCourses(),
      MyProfile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        title: ("Home"),
        activeColorPrimary: MyColors.orangeColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book),
        title: ("MyCourses"),
        activeColorPrimary: MyColors.orangeColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        title: ("MyProfile"),
        activeColorPrimary: MyColors.orangeColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

    return Container(
      color: MyColors.whiteColor.withOpacity(1),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('test'),
          ),
          bottomNavigationBar: PersistentTabView(
            context,
            controller: controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: MyColors.whiteColor,
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset:
                true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
            hideNavigationBarWhenKeyboardShows:
                true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle
                .style12, // Choose the nav bar style with this property.
          ),
        ),
      ),
    );
  }
}
