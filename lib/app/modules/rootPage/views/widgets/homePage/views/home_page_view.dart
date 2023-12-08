import 'package:chatme_project/app/routes/app_pages.dart';
import 'package:chatme_project/core/constant/colors.dart';
import 'package:chatme_project/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: AppStyles.inputDecorationFloating(
              "",
              "Search",
              disableLabel: true,
              suffixIcon: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.search,
                  color: AppColors.white,
                ),
              ),
            ),
          ).marginAll(15).marginOnly(top: 20),
          SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlack,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            Icons.chat_bubble_outline_sharp,
                            color: AppColors.white,
                          ).marginSymmetric(horizontal: 15),
                        ),
                        Expanded(
                          child: Text(
                            'All',
                            style: AppStyles.styleTextBody16(),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '2',
                            style: AppStyles.styleTextBody12(),
                            textAlign: TextAlign.center,
                          ),
                        ).marginOnly(right: 25)
                      ],
                    ),
                  ).marginSymmetric(horizontal: 10),
                  Container(
                    width: 155.0,
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            Icons.add_to_photos_outlined,
                            color: AppColors.white,
                          ).marginSymmetric(horizontal: 15),
                        ),
                        Expanded(
                          child: Text(
                            'Live Chat',
                            style: AppStyles.styleTextBody16(),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '2',
                            style: AppStyles.styleTextBody12(),
                            textAlign: TextAlign.center,
                          ),
                        ).marginOnly(right: 5)
                      ],
                    ),
                  ),
                  Container(
                    width: 170.0,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlack,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: const Icon(
                            Icons.archive_outlined,
                            color: AppColors.white,
                          ).marginSymmetric(horizontal: 15),
                        ),
                        Expanded(
                          child: Text(
                            'Arcive Chat',
                            style: AppStyles.styleTextBody16(),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '2',
                            style: AppStyles.styleTextBody12(),
                            textAlign: TextAlign.center,
                          ),
                        ).marginOnly(right: 5)
                      ],
                    ),
                  ),
                ],
              ).marginOnly(left: 10)),
          Container(
            width: double.infinity,
            height: 20,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Unread",
                    style: AppStyles.styleTextBody16(),
                  ).marginSymmetric(horizontal: 30),
                ),
                Expanded(
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.white,
                  ).marginOnly(left: 120),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.CHAT_PAGE);
                    },
                    child: Card(
                      color: AppColors.lightBlack,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/profile.png',
                          width: 80,
                        ),
                        title: Text('John Tornton', style: AppStyles.styleTextBody16(fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('(+62) 8178-6594-893', style: AppStyles.styleTextBody12()),
                            Text(
                              'Maybe on friday can you show fmfkd',
                              style: AppStyles.styleTextBody14(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        trailing: Text('12:30', style: AppStyles.styleTextBody12()),
                        isThreeLine: true,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
