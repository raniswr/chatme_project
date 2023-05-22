import 'package:chatme_project/app/modules/rootPage/views/widgets/homePage/views/home_page_view.dart';
import 'package:chatme_project/app/modules/rootPage/views/widgets/profilePage/views/profile_page_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  //TODO: Implement RootPageController
  int selectedIndex = 0;
  List<Widget> pages = const [
    ProfilePageView(),
    SizedBox.shrink(),
    HomePageView(),
    SizedBox.shrink(),
  ];

  onItemTapped(int value) {
    selectedIndex = value;
    update();
  }
}
