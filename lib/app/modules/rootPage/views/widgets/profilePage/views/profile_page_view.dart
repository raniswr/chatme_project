import 'package:chatme_project/core/constant/colors.dart';
import 'package:chatme_project/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
                color: AppColors.purple,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: 80,
                  ).marginSymmetric(vertical: 30),
                  Text(
                    'Russel hue',
                    style: AppStyles.styleTextBody16(),
                  ),
                  Text(
                    '+62 81977526091',
                    style: AppStyles.styleTextBody14(),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.colorBox1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.phone,
                          color: AppColors.white,
                          size: 30,
                        ),
                      ).marginOnly(left: 100),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.colorBox1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.videocam,
                          color: AppColors.white,
                          size: 30,
                        ),
                      ).marginSymmetric(horizontal: 20),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.colorBox1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.volume_up,
                          color: AppColors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ).marginSymmetric(vertical: 20),
                  Text(
                    'Hello Everybody!',
                    style: AppStyles.styleTextBody14(),
                  ),
                  Text(
                    'Our company is looking for :',
                    style: AppStyles.styleTextBody14(),
                  ).marginSymmetric(vertical: 10),
                  Row(
                    children: [
                      Container(
                        width: 110,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: AppColors.colorBox1, borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'UI/UX Designer',
                          style: AppStyles.styleTextBody14(),
                        ),
                      ).marginOnly(left: 15),
                      Container(
                        width: 110,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: AppColors.colorBox2, borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Project Manajer',
                          style: AppStyles.styleTextBody14(),
                        ),
                      ).marginSymmetric(horizontal: 10),
                      Container(
                        width: 140,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: AppColors.colorBox3, borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Fullstack Developer',
                          style: AppStyles.styleTextBody14(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(color: AppColors.black, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 2,
                    child: Checkbox(
                      fillColor: MaterialStateProperty.all(AppColors.yellow),
                      checkColor: AppColors.black,
                      value: true,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      onChanged: (bool? value) {},
                    ),
                  ).marginSymmetric(horizontal: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Interview with Lead Design',
                        style: AppStyles.styleTextBody16(),
                      ),
                      Text(
                        'Sep 25, 2022 10:30 AM',
                        style: AppStyles.styleTextBody14(),
                      ),
                    ],
                  ),
                ],
              ),
            ).marginSymmetric(horizontal: 20).marginSymmetric(vertical: 10),
            Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(color: AppColors.black, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 2,
                    child: Checkbox(
                      fillColor: MaterialStateProperty.all(AppColors.yellow),
                      checkColor: AppColors.black,
                      value: true,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      onChanged: (bool? value) {},
                    ),
                  ).marginSymmetric(horizontal: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Interview with CTO company',
                        style: AppStyles.styleTextBody16(),
                      ),
                      Text(
                        'Sep 25, 2022 10:30 AM',
                        style: AppStyles.styleTextBody14(),
                      ),
                    ],
                  ),
                ],
              ),
            ).marginSymmetric(horizontal: 20),
            Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(color: AppColors.black, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 2,
                    child: Checkbox(
                      fillColor: MaterialStateProperty.all(AppColors.yellow),
                      checkColor: AppColors.black,
                      value: true,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      onChanged: (bool? value) {},
                    ),
                  ).marginSymmetric(horizontal: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Interview with CTO company',
                        style: AppStyles.styleTextBody16(),
                      ),
                      Text(
                        'Sep 25, 2022 10:30 AM',
                        style: AppStyles.styleTextBody14(),
                      ),
                    ],
                  ),
                ],
              ),
            ).marginSymmetric(horizontal: 20).marginSymmetric(vertical: 10)
          ],
        ),
      ),
    );
  }
}
