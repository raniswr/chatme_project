import 'package:chatme_project/core/constant/colors.dart';
import 'package:chatme_project/core/constant/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import '../controllers/chat_page_controller.dart';

class ChatPageView extends GetView<ChatPageController> {
  const ChatPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlack,
      appBar: AppBar(
          backgroundColor: AppColors.black,
          title: Row(
            children: [
              Image.asset(
                'assets/images/profile.png',
                width: 40,
              ),
              Text(
                'Russel Hue',
                style: AppStyles.styleTextBody16(fontWeight: FontWeight.bold),
              ).marginOnly(left: 10)
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.file_copy),
              color: AppColors.white,
              onPressed: () {},
            ),
            IconButton(
              color: AppColors.white,
              icon: const Icon(Icons.videocam),
              onPressed: () {},
            ),
          ]),
      body: Column(
        children: [
          GetBuilder<ChatPageController>(builder: (controller) {
            return Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  shrinkWrap: true,
                  primary: true,
                  itemBuilder: (context, index) {
                    if (index.isEven) {
                      return Column(
                        children: const [
                          BubbleSpecialThree(
                            text: 'Please try and give some feedback on it!',
                            color: AppColors.lightPurple,
                            tail: true,
                            textStyle: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      );
                    } else {
                      //Bubble
                      return const BubbleSpecialThree(
                        text: "Thanks",
                        color: Color(0xFFE8E8EE),
                        tail: true,
                        isSender: false,
                      );
                    }
                  }),
            );
          }),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: AppStyles.inputDecorationFloating(
                    "",
                    "messege",
                    disableLabel: true,
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.send,
                        size: 25,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ).marginOnly(top: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
