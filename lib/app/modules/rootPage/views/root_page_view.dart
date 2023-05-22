import 'package:chatme_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/root_page_controller.dart';

class RootPageView extends GetView<RootPageController> {
  const RootPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootPageController>(builder: (controller) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: AppColors.lightBlack,
          body: controller.pages.elementAt(controller.selectedIndex),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      );
    });
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootPageController>(builder: (controller) {
      return SizedBox(
        height: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: AppColors.black,
            iconSize: 35,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person,
                  color: AppColors.white,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.yellow,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.person,
                      color: AppColors.black,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.contact_page,
                  color: AppColors.white,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.yellow,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.contact_page,
                      color: AppColors.black,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.chat_bubble_rounded,
                  color: AppColors.white,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.yellow,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.chat_bubble_rounded,
                      color: AppColors.black,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                  color: AppColors.white,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.yellow,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.settings,
                      color: AppColors.black,
                    ),
                  ),
                ),
                label: '',
              ),
            ],
            currentIndex: controller.selectedIndex,
            unselectedItemColor: AppColors.white,
            selectedItemColor: AppColors.yellow,
            elevation: 0,
            onTap: controller.onItemTapped,
          ),
        ),
      );
    });
  }
}
